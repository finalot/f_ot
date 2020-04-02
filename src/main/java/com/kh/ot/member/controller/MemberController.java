package com.kh.ot.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	
	
	/**
	 * @작성일 : 2020-04-02
	 * @작성자 : 문태환
	 * @내용 : 로그인 화면 이동
	 * @return
	 */
	@RequestMapping("loginView.do")
	public String loginView() {
		
		return "login";
	}
	
	/**
	 * @작성일 : 0202-04-02
	 * @작성자 : 문태환
	 * @내용 : 회원가입 화면 이동
	 * @return
	 */
	@RequestMapping("joinView.do")
	public String joinView() {
		
		return "join";
	}
}
