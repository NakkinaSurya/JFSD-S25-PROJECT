package com.klu.project.we_link;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ControllerProject {
	
	@GetMapping("/")
	public String home() {
		return "home";
	}
	@GetMapping("/aboutus")
	public String aboutus() {
		return "aboutus";
}
	@GetMapping("/feedback")
	public String feedback() {
		return "feedback";
	}
	@GetMapping("/contactus")
	public String contactus() {
		return "contactus";
	}
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	@GetMapping("/signup")
	public String signup() {
		return "signup";
	}
}
