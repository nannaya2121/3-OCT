package com.app.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.model.User;
import com.app.services.UserService;

@Controller
public class AppController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/welcome")
	public String Welcome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "welcome";
	}
	
	@RequestMapping("/regist")
	public String regist(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGIST");
		return "welcome";
	}
	
	@PostMapping("/save-user")
	public String registUser(@ModelAttribute User user,BindingResult bindingResult, HttpServletRequest request) {
		userService.saveMyUser(user);
		request.setAttribute("mode", "MODE_HOME");
		return "welcome";
	}
	
	@RequestMapping("/logging")
	public String logging(@ModelAttribute User user, HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN");
		return "welcome";
	}

	@RequestMapping("/list")
	public String list(@ModelAttribute User user, HttpServletRequest request) {
		userService.loginUser(user);
		request.setAttribute("mode", "MODE_LIST");
		return "chatroom";
	}
}
