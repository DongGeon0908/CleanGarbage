package com.cos.blogStudy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class calendarController {
	
	@GetMapping("/calendar")
	public String calendar() {
		return "calendar/calendar";
	}
	
}
