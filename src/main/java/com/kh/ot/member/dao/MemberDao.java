package com.kh.ot.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ot.member.vo.Member;


@Repository("mDao")
public class MemberDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public Member loginMember(String id,String pwd) {
		Member m = new Member();
		m.setMemId(id);
		m.setMemPwd(pwd);
		return (Member)sqlSession.selectOne("memberMapper.loginMember",m);
	}
	
}
