package com.kh.ot.member.service;

import com.kh.ot.member.vo.Member;

public interface MemberService {

	
	/**
	 * @작성일 : 2020-04-02
	 * @작성자 : 문태환
	 * @내용    : 로그인 인터페이스
	 * @return
	 */
	public Member loginMember(String id, String pwd);
	
}
