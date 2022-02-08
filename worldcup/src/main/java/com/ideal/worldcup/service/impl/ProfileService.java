package com.ideal.worldcup.service.impl;

import com.ideal.worldcup.dto.MemberVO;

public interface ProfileService {
	public MemberVO selectMember(int m_num) throws Exception;
}
