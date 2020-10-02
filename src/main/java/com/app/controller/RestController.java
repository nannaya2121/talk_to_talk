package com.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.model.User;
import com.app.services.UserService;

@org.springframework.web.bind.annotation.RestController
public class RestController {

	@Autowired
	private UserService userService;
	
	@GetMapping("/")
	public String hello() {
		return "This is homepage";
	}
	
	@GetMapping("/saveuser")
	public String saveUser(@RequestParam String userid,
			@RequestParam String password,@RequestParam String email) {
		
		User user = new User(userid,password,email);
		userService.saveMyUser(user);
		return "UserSaved";
	}
}
