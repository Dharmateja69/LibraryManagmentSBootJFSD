package com.klef.springboot.controller;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.klef.springboot.model.User;
import com.klef.springboot.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userservice;

	@GetMapping("/")
	public String renderHome() {
		return "index";
	}

	@GetMapping("/about")
	public String about() {
		return "about";
	}

	@GetMapping("/users")
	public String getAllUsers(Model model) {
		List<User> u = userservice.Userlist();
		model.addAttribute("Userlist", u);
		return "User";
	}

	@GetMapping("/registration")
	public String userRegistration() {
		return "registration";
	}

	@PostMapping("/add")
	public String save(@ModelAttribute User user, Model model) {
		userservice.save(user);
		model.addAttribute("successMessage", "Successfully Registered!");
		return "registration";
	}

}
