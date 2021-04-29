package com.cos.blogStudy.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.blogStudy.model.Board;
import com.cos.blogStudy.model.Good;
import com.cos.blogStudy.model.User;
import com.cos.blogStudy.repository.BoardRepository;
import com.cos.blogStudy.repository.GoodRepository;

import lombok.RequiredArgsConstructor;

@Transactional
@RequiredArgsConstructor
@Service
public class GoodService {
	private final GoodRepository goodRepository;
	private final BoardRepository boardRepository;

	public boolean addGood(User user, int Id) {
		Board board = boardRepository.findById(Id).orElseThrow();

		// 중복 좋아요 방지
		if (isNotAlreadyGood(user, board)) {
			goodRepository.save(new Good(board, user));
			return true;
		} else {
			goodRepository.deleteById(Id);
			return false;
		}

	}

	// 사용자가 이미 좋아요 한 게시물인지 체크
	private boolean isNotAlreadyGood(User user, Board board) {
		return goodRepository.findByUserAndBoard(user, board).isEmpty();
	}

}
