package com.cos.blogStudy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ChatController {
	@GetMapping("/chat/chat")
	public String chat() {
		return "chat/chat";
	}
}
