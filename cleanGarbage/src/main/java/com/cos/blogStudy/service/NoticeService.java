package com.cos.blogStudy.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.blogStudy.model.Board;
import com.cos.blogStudy.model.Notice;
import com.cos.blogStudy.model.Reply;
import com.cos.blogStudy.model.User;
import com.cos.blogStudy.repository.BoardRepository;
import com.cos.blogStudy.repository.NoticeRepository;
import com.cos.blogStudy.repository.ReplyRepository;

@Service
public class NoticeService {

	@Autowired
	private NoticeRepository noticeRepository;

	// 하나의 트랜잭션으로 작동!
	@Transactional
	public void 공지사항쓰기(Notice notice, User user) { // title, content
		notice.setCount(0);
		notice.setUser(user);
		noticeRepository.save(notice);
	}

	@Transactional(readOnly = true)
	public Page<Notice> 공지사항목록(Pageable pageable) {
		return noticeRepository.findAll(pageable);
	}

	@Transactional(readOnly = true)
	public Notice 공지사항상세보기(int id) {
		return noticeRepository.findById(id).orElseThrow(() -> {
			return new IllegalArgumentException("글 상세보기 실패 : 아이디를 찾을 수 없음");
		});
	}

	@Transactional
	public void 공지사항삭제하기(int id) {
		noticeRepository.deleteById(id);
	}

	@Transactional
	public void 공지사항수정하기(int id, Notice requestNotice) {
		Notice notice = noticeRepository.findById(id).orElseThrow(() -> {
			return new IllegalArgumentException("글 수정하기 실패 : 아이디를 찾을 수 없음");
		}); // 영속화 완료
		notice.setTitle(requestNotice.getTitle());
		notice.setContent(requestNotice.getContent());

		/*
		 * 해당 함수로 종료시 트랜잭션이 종료 --> 더티체킹 ( 자동 업데이트가 됨 db flush)
		 */
	}

	@Transactional
	public void 조회수(int id) {
		// TODO Auto-generated method stub
		Notice notice = noticeRepository.findById(id).orElseThrow(() -> {
			return new IllegalArgumentException("글 조회 실패 : 아이디를 찾을 수 없음");
		}); // 영속화 완료

		notice.setCount(notice.getCount() + 1);
	}

}
