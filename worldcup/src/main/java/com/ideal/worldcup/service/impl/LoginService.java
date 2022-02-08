package com.ideal.worldcup.service.impl;

import com.ideal.worldcup.dto.LoginVO;
import com.ideal.worldcup.dto.MemberVO;

public interface LoginService {

	public MemberVO selectMember(MemberVO memberVO) throws Exception;
}
