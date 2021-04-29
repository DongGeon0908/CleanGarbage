package com.cos.blogStudy.controller.api;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cos.blogStudy.config.auth.PrincipalDetail;
import com.cos.blogStudy.dto.ResponseDto;
import com.cos.blogStudy.service.GoodService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class GoodApiController {
	private final GoodService goodService;

	@PostMapping("/good/{Id}")
	public ResponseDto<Integer> addGood(@AuthenticationPrincipal PrincipalDetail principal, @PathVariable int Id) {

		boolean result = false;

		if (principal != null) {
			result = goodService.addGood(principal.getUser(), Id);
		}

		System.out.println(">>>>>>>>>>>>>>>>> " + Id);

		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
}
