package com.ideal.worldcup.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ideal.worldcup.dto.MemberVO;

@Repository
public class SignUpDAOImpl implements SignUpDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String Namespace = "com.ideal.worldcup.mapper.memberMapper";
	
	@Override
	public List<MemberVO> selectMember() throws Exception {
		
		
		return sqlSession.selectList(Namespace + ".selectMember");
	}
	
	@Override
	public MemberVO selectId(String m_id) throws Exception {
		// TODO Auto-generated method stub
		
		return sqlSession.selectOne(Namespace + ".selectId",m_id);
	}
	
	@Override
	public MemberVO selectEmail(String m_email) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(Namespace + ".selectEmail", m_email);
	}
	
	@Override
	public MemberVO selectNickname(String m_nickname) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(Namespace + ".selectNickname", m_nickname);
	}
	
	@Override
	public int insertJoin(MemberVO memberVO) {
		// TODO Auto-generated method stub
		return sqlSession.insert(Namespace + ".insertJoin", memberVO);
	}
	
}
