package com.ideal.worldcup.service.impl;

import java.util.List;

import com.ideal.worldcup.dto.MemberVO;

public interface SignUpService {
	
	public List<MemberVO> selectMember() throws Exception;
	
	public MemberVO selectId(String m_id) throws Exception;

	public MemberVO selectEmail(String m_email) throws Exception;

	public MemberVO selectNickname(String m_nickname);

	public int insertJoin(MemberVO memberVO);
}
