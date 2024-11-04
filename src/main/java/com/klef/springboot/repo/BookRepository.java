package com.klef.springboot.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.springboot.model.Book;

public interface BookRepository extends JpaRepository<Book, Long>{

}
