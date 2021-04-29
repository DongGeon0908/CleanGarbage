package com.cos.blogStudy.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.blogStudy.model.Board;
import com.cos.blogStudy.model.Good;
import com.cos.blogStudy.model.User;

//DAO
//기본적은 CRUD 설정
//자동으로 bean 등록
//@Repository //--> 생략 가능
import org.springframework.transaction.annotation.Transactional;

@Transactional(readOnly = true)
public interface GoodRepository extends JpaRepository<Good, Integer> {
	Optional<Good> findByUserAndBoard(User user, Board board);
}
