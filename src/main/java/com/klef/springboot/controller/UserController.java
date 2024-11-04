package com.klef.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.klef.springboot.model.User;
import com.klef.springboot.service.UserService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@RestController
@RequestMapping("/api/users")
public class UserController {
	
	@Autowired
	private UserService userservice;
	
	
	@GetMapping
	public List<User> Getallusers() {
		return userservice.Userlist();
	}
	
	@PostMapping
	public User save(@RequestBody User user)
	{
		return userservice.save(user);
	}
	

}
