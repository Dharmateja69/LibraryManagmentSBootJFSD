package com.klef.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.klef.springboot.model.Book;
import com.klef.springboot.service.BookService;

@RestController
@RequestMapping("/api/books")
public class BookController {

	@Autowired
	private BookService bookservice;

	@GetMapping
	public List<Book> Booklist() {
		return bookservice.Bookslist();
	}

	@GetMapping("/{id}")
	public Book BookByid(@PathVariable Long id) {
		return bookservice.BookByid(id);
	}

	@PostMapping
	public Book save(@RequestBody Book book) {
		return bookservice.save(book);
	}

	@GetMapping("/d/{id}")
	public void DeleteByid(@PathVariable Long id) {
		bookservice.DeleteByid(id);
	}

	@PutMapping("/{id}")
	public Book updateBook(@PathVariable Long id, @RequestBody Book book) {
		// Additional logic to ensure you're updating the correct book
		return bookservice.save(book);
	}

	@PostMapping("/{bookid}/borrow/{userid}")
	public ResponseEntity<Book> borrowBook(@PathVariable Long bookid, @PathVariable Long userid) {
		Book book = bookservice.borrowBook(bookid, userid);

		if (book != null) {
			return ResponseEntity.ok(book);
		} else {
			return ResponseEntity.badRequest().build();
		}
	}

	@PostMapping("/{bookid}/return")
	public ResponseEntity<Book> Return(@PathVariable Long bookid) {
	    Book book = bookservice.returnBook(bookid);
	    if (book != null) {
	        return ResponseEntity.ok(book);
	    } else {
	        return ResponseEntity.badRequest().build();
	    }
	}


}
