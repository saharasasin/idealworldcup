package com.ideal.worldcup.service.impl;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ideal.worldcup.dao.ProfileDAO;
import com.ideal.worldcup.dto.MemberVO;

@Service
public class ProfileServiceImpl implements ProfileService{
	
	@Inject
	private ProfileDAO dao;
	
	@Override
	public MemberVO selectMember(int m_num) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectMember(m_num);
	}
}
