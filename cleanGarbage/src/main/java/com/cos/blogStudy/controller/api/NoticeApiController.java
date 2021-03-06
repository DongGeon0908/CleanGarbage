package com.cos.blogStudy.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cos.blogStudy.config.auth.PrincipalDetail;
import com.cos.blogStudy.dto.ResponseDto;
import com.cos.blogStudy.model.Board;
import com.cos.blogStudy.model.Notice;
import com.cos.blogStudy.model.Reply;
import com.cos.blogStudy.model.User;
import com.cos.blogStudy.service.BoardService;
import com.cos.blogStudy.service.NoticeService;
import com.cos.blogStudy.service.UserService;

@RestController
public class NoticeApiController {

	@Autowired
	private NoticeService noticeService;

	@PostMapping("/api/notice")
	public ResponseDto<Integer> save(@RequestBody Notice notice, @AuthenticationPrincipal PrincipalDetail principal) {
		noticeService.공지사항쓰기(notice, principal.getUser());

		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);

		// 자바 오브젝트를 JSON으로 변환해서 리턴 --> Jackson

	}

	@DeleteMapping("/api/notice/{id}")
	public ResponseDto<Integer> deleteById(@PathVariable int id) {
		noticeService.공지사항삭제하기(id);

		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}

	@PutMapping("/api/notice/{id}")
	public ResponseDto<Integer> update(@PathVariable int id, @RequestBody Notice notice) {
		noticeService.공지사항수정하기(id, notice);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);

	}

}
