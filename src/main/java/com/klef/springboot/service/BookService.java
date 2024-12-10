package com.klef.springboot.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.klef.springboot.model.Book;
import com.klef.springboot.model.User;
import com.klef.springboot.repo.BookRepository;
import com.klef.springboot.repo.UserRepository;

@Service
public class BookService {
    
    @Autowired
    private BookRepository bookrepo;
    @Autowired
    private UserRepository userrepo;
    
    public List<Book> Bookslist() {
        return bookrepo.findAll();
    }
    
    public Book BookByid(Long id) {
        return bookrepo.findById(id).orElse(null);
    }
    
    public Book save(Book book) {
        return bookrepo.save(book);
    }
    
    public void DeleteByid(Long id) {
        bookrepo.deleteById(id);
    }
    
    @Transactional
    public Book borrowBook(Long bookid, Long userid) {
        Book book = bookrepo.findById(bookid).orElse(null);
        User user = userrepo.findById(userid).orElse(null);
        
        // Proceed only if the book exists, is not already borrowed, and the user exists
        if (book != null && !book.isBorrowed() && user != null) {
            // Set book details for borrowing
            book.setBorrowedBy(user);
            book.setDate(new Date());
            book.setUsername(user.getName());
            book.setBorrowed(true);

            // Save the updated book information
            bookrepo.save(book);  

            // If no additional updates are required for `user`, you can omit saving `user`
            return book;
        }
        
        // Return null if borrowing was unsuccessful
        return null;
    }

    
    @Transactional
    public Book returnBook(Long bookId) {
        Book book = bookrepo.findById(bookId).orElse(null);
        
        if (book != null && book.isBorrowed()) {
            book.setBorrowedBy(null);
            book.setBorrowed(false);
            return save(book);
        }
        return null;
    }
}
