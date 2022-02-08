package com.ideal.worldcup.dao;

import com.ideal.worldcup.dto.LoginVO;
import com.ideal.worldcup.dto.MemberVO;

public interface LoginDAO {

	public MemberVO selectMember(MemberVO memberVO) throws Exception;

}
