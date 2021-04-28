package com.cos.blogStudy.model;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.CreationTimestamp;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
public class Good {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) // auto_increment
	private int id;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "boardId")
	private Board board;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "userId")
	private User user;

	@CreationTimestamp
	private Timestamp createDate;
}

/*
 * 좋아요 버튼 로직 사용자가 좋아요 버튼을 누르면 데이터가 생성 만약, 데이터가 존재하는데 데이터를 누르는 경우에는 해당 튜플을 삭제함
 * 화면에는 모든 데이터의 개수를 반환해서 보여주면 될것 같음
 */