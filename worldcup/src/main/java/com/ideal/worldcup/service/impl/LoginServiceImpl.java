package com.ideal.worldcup.service.impl;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ideal.worldcup.dao.LoginDAO;
import com.ideal.worldcup.dto.LoginVO;
import com.ideal.worldcup.dto.MemberVO;

@Service
public class LoginServiceImpl implements LoginService{
	
	@Inject
	private LoginDAO dao;
	
	@Override
	public MemberVO selectMember(MemberVO memberVO) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectMember(memberVO);
	}
	
}
