package com.cos.blogStudy.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.blogStudy.model.Good;

//DAO
//기본적은 CRUD 설정
//자동으로 bean 등록
//@Repository //--> 생략 가능
public interface GoodRepository extends JpaRepository<Good, Integer> {

}
