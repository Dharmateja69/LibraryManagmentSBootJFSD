package com.klef.springboot.model;

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
	
//We added a relationship between the Book and User entities to track which user has borrowed a book.
	@ManyToOne
	@JoinColumn(name="user_id")
	private User BorrowedBy;
	
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


}
