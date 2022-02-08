package com.ideal.worldcup.dao;

import com.ideal.worldcup.dto.MemberVO;

public interface ProfileDAO {

	public MemberVO selectMember(int m_num) throws Exception;

}
