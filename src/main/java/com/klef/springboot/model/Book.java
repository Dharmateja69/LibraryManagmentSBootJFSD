package com.klef.springboot.model;

import java.util.*;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
public class Book {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String title;
	private String author;
	private Boolean borrowed;
	private Date date;
	
//We added a relationship between the Book and User entities to track which user has borrowed a book.
	@ManyToOne
	@JoinColumn(name="user_id")
	private User BorrowedBy;
	
	private String Username;

	
	

	public boolean isBorrowed() {
	        return borrowed;
	    }
	
	public Long getId() {
		return id;
	}

	public String getTitle() {
		return title;
	}

	public String getAuthor() {
		return author;
	}

	public Boolean getBorrowed() {
		return borrowed;
	}

	public User getBorrowedBy() {
		return BorrowedBy;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public void setBorrowed(Boolean borrowed) {
		this.borrowed = borrowed;
	}

	public void setBorrowedBy(User borrowedBy) {
		BorrowedBy = borrowedBy;
	}

	public String getUsername() {
		return Username;
	}

	public void setUsername(String username) {
		Username = username;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	

	

}
