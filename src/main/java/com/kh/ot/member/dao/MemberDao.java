package com.kh.ot.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ot.member.vo.Member;


@Repository("mDao")
public class MemberDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * @작성일  : 2020. 4. 2.
	 * @작성자  : 문태환
	 * @내용 	: 로그인 Dao
	 * @param id
	 * @param pwd
	 * @return
	 */
	public Member loginMember(String id,String pwd) {
		Member m = new Member();
		m.setMemId(id);
		m.setMemPwd(pwd);
		return (Member)sqlSession.selectOne("memberMapper.loginMember",m);
	}

	/**
	 * @작성일  : 2020. 4. 2.
	 * @작성자  : 문태환
	 * @내용 	: 아이디 찾기 Dao
	 * @param memName
	 * @param memSsn
	 * @return
	 */
	public Member findId(String memName, String memSsn) {
		Member m = new Member();
		m.setMemName(memName);
		m.setMemSsn(memSsn);
		return (Member)sqlSession.selectOne("memberMapper.findId",m);
	}
	
}
