package com.klef.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.klef.springboot.model.Book;
import com.klef.springboot.service.BookService;

@Controller
public class BookController {

    @Autowired
    private BookService bookservice;

    @GetMapping("/book")
    public String bookList(Model model) {
        List<Book> books = bookservice.Bookslist();
        model.addAttribute("Booklist", books);
        return "Book";
    }

    @GetMapping("/{id}")
    public ResponseEntity<Book> bookById(@PathVariable Long id) {
        Book book = bookservice.BookByid(id);
        if (book != null) {
            return ResponseEntity.ok(book);
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }

    @GetMapping("/addbook")
    public String addBookForm() {
        return "bookform";
    }

    @PostMapping("/booksave")
    public String saveBook(@ModelAttribute Book book, Model model) {
        bookservice.save(book);
        model.addAttribute("successMessage", "Successfully Registered!");
        return "bookform";
    }

    @DeleteMapping("/delete/{id}")
    public void deleteById(@PathVariable Long id) {
       bookservice.DeleteByid(id);
        
    }

    @PutMapping("/{id}")
    public ResponseEntity<Book> updateBook(@PathVariable Long id, @RequestBody Book updatedBook) {
        Book existingBook = bookservice.BookByid(id);
        if (existingBook != null) {
            // Update the fields of the existing book
            existingBook.setTitle(updatedBook.getTitle());
            existingBook.setAuthor(updatedBook.getAuthor());
            // Any other fields to update
            bookservice.save(existingBook);
            return ResponseEntity.ok(existingBook);
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }

    @GetMapping("/borrow-book")
    public String borrowBookForm() {
        return "borrow-book";
    }

    @PostMapping("/borrow")
    @ResponseBody
    public String borrowBook(@RequestParam Long bookid, @RequestParam Long userid) {
        Book book = bookservice.borrowBook(bookid, userid);
        if (book != null) {
            return "Book ID: " + bookid + ", User ID: " + userid + " - Borrowed successfully!";
        } else {
            return "Error: Could not borrow the book with ID: " + bookid + " for User ID: " + userid;
        }
    }

    @PostMapping("/{bookid}/return")
    public ResponseEntity<Book> returnBook(@PathVariable Long bookid) {
        Book book = bookservice.returnBook(bookid);
        if (book != null) {
            return ResponseEntity.ok(book);
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }
}
