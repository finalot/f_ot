package com.kh.ot.member.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ot.member.dao.MemberDao;
import com.kh.ot.member.vo.Member;


@Service("mService")
public class MemberServiceImpl implements MemberService{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Autowired
	private MemberDao mDao; //MemberDao에 mDao 이름의 어노테이션을 부여
	
	@Override
	public Member loginMember(String id,String pwd) {
		return mDao.loginMember(id,pwd);
	}

	@Override
	public Member findId(String memName, String memSsn) {
		return mDao.findId(memName,memSsn);
	}

}
