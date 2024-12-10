package com.klef.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.klef.springboot.model.User;
import com.klef.springboot.repo.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userrepo;

	public List<User> Userlist() {
		return userrepo.findAll();
	}

	public User save(User user)
	{
		return userrepo.save(user);
	}


	
	
	
	
}
