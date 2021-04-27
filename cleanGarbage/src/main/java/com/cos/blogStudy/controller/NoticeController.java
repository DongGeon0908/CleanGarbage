package com.cos.blogStudy.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.cos.blogStudy.config.auth.PrincipalDetail;
import com.cos.blogStudy.model.RoleType;

@Controller
public class NoticeController {

	// 권한에 따라 페이지 변동 - > ADMIN 가능
	@GetMapping("/notice/saveForm")
	public String saveForm(@AuthenticationPrincipal PrincipalDetail principal) {
		if (principal.getUser().getRole() == RoleType.ADMIN) {
			return "notice/saveForm";
		} else {
			return "redirect:/";
		}
	}

}
