package com.ideal.worldcup.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ideal.worldcup.dao.SignUpDAO;
import com.ideal.worldcup.dto.MemberVO;

@Service
public class SignUpServiceImpl implements SignUpService{
	
	@Inject
	private SignUpDAO dao;
	
	@Override
	public List<MemberVO> selectMember() throws Exception {
		// TODO Auto-generated method stub
		return dao.selectMember();
	}
	
	@Override
	public MemberVO selectId(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectId(m_id);
	}
	
	@Override
	public MemberVO selectEmail(String m_email) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectEmail(m_email);
	}
	
	@Override
	public MemberVO selectNickname(String m_nickname) {
		// TODO Auto-generated method stub
		return dao.selectNickname(m_nickname);
	}
	
	@Override
	public int insertJoin(MemberVO memberVO) {
		// TODO Auto-generated method stub
		return dao.insertJoin(memberVO);
	}
	
}
