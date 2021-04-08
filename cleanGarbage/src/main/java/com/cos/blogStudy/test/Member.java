package com.cos.blogStudy.test;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Member {
	private int id;
	private String nickname;
	private String username;
	private String password;
	private String email;

	@Builder
	public Member(int id, String nickname, String username, String password, String email) {
		super();
		this.id = id;
		this.nickname = nickname;
		this.username = username;
		this.password = password;
		this.email = email;
	}
}
