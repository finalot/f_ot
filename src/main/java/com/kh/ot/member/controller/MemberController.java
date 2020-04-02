package com.kh.ot.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.kh.ot.member.service.MemberService;
import com.kh.ot.member.vo.Member;

@SessionAttributes("loginMember")
@Controller
public class MemberController {

	// @Autowired 타입의 어노테이션을 붙여주면 생성할 필요없이 변수 선언만 해도
	// 빈 스키냉을 통해 아래의 'mService'의 이름을 가지고 있는 빈을 찾아서
	// 자동으로 생성 후 주입해준다.

	@Autowired
	private MemberService mService;
	
//	암호화용 	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;

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

	/**
	 * @작성일 : 2020-04-02
	 * @작성자 : 문태환
	 * @내용 : 마이페이지 이동
	 * @return
	 */
	@RequestMapping("MyPage.do")
	public String MyPage() {

		return "mypage";
	}

	/**
	 * @작성일  :2020-04-02 
	 * @작성자  : 우예진
	 * @내용    :카트페이지 이동
	 * @return
	 */
	@RequestMapping("cart.do")
	public String cartView() {
		
		return "cart";
	}
	
	
	/**
	 * @작성일 : 2020-04-02
	 * @작성자 : 문태환
	 * @내용 : 로그인
	 * @param id
	 * @param pwd
	 * @param response
	 * @throws IOException
	 */
	
	  @RequestMapping("login.do") 
	  public void login(String id, String pwd, HttpServletResponse response,HttpSession session) throws IOException{
	  
	  String msg = "";
	  PrintWriter out = response.getWriter();
		  Member m = mService.loginMember(id, pwd);
		  
		if (m != null /* && bcryptPasswordEncoder.matches(m.getMemPwd(), pwd) */ ) {
			  msg = "ok";
			  session.setAttribute("loginMember", m);			  
		  }else {
			  msg="fail";	
		  }
		  out.print(msg);
	  }
	  
	  /**
	 * @작성일  : 2020-04-02
	 * @작성자  : 문태환
	 * @내용 	: 로그아웃
	 * @param status
	 * @return
	 */
	@RequestMapping("logout.do")
		public String logout(SessionStatus status) {

		  status.setComplete();
		  
			return "home";
		}
	 

}
