package com.ideal.worldcup.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ideal.worldcup.dto.LoginVO;
import com.ideal.worldcup.dto.MemberVO;

@Repository
public class LoginDAOImpl implements LoginDAO{

	@Inject
	private SqlSession sqlSession;
	
	private static final String Namespace ="com.ideal.worldcup.mapper.memberMapper";
	
	@Override
	public MemberVO selectMember(MemberVO memberVO) throws Exception {
		// TODO Auto-generated method stub
		
		return sqlSession.selectOne(Namespace + ".selectLogin",memberVO);
	}
	
}
