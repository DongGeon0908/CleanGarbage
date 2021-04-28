package com.cos.blogStudy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cos.blogStudy.config.auth.PrincipalDetail;
import com.cos.blogStudy.model.RoleType;
import com.cos.blogStudy.service.NoticeService;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService noticeService;

	@GetMapping("/notice")
	public String notice(Model model,
			@PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		// /WEB-INF/views/index.jsp
		model.addAttribute("notices", noticeService.공지사항목록(pageable));
		return "notice/notice"; // viewResolver 작동
	}

	@GetMapping("/notice/{id}")
	public String findById(@PathVariable int id, Model model) {
		model.addAttribute("notice", noticeService.공지사항상세보기(id));

		noticeService.조회수(id);
		return "notice/detail";
	}

	@GetMapping("/notice/{id}/updateForm")
	public String updateForm(@AuthenticationPrincipal PrincipalDetail principal, @PathVariable int id, Model model) {

		if (principal.getUser().getRole() == RoleType.ADMIN) {
			model.addAttribute("notice", noticeService.공지사항상세보기(id));
			return "notice/updateForm";
		} else {
			return "redirect:/";
		}

	}

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
