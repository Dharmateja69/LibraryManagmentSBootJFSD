package com.klef.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
	
	public List<Book> Bookslist()
	{
		return bookrepo.findAll();
	}
	
	public Book BookByid(Long id)
	{
		return bookrepo.findById(id).orElse(null);
	}
	
	public Book save(Book book)
	{
		return bookrepo.save(book);
	}
	
	public void DeleteByid(Long id)
	{
		bookrepo.deleteById(id);
	}
	
	public Book borrowBook(Long bookid,Long userid)
	{
		Book book = bookrepo.findById(bookid).orElse(null);
		User user= userrepo.findById(userid).orElse(null);
		if(book!=null && !book.isBorrowed()&& user!=null)
		{
			book.setBorrowedBy(user);
			book.setBorrowed(true);
			return save(book);
		}
		
		return null;
	}
	
	public Book returnBook(Long bookId)
	{
		
		Book book = bookrepo.findById(bookId).orElse(null);
		if(book!=null && book.isBorrowed())
		{
			book.setBorrowedBy(null);
			book.setBorrowed(false);
			return save(book);
		}
		return null;
		
	}

}
