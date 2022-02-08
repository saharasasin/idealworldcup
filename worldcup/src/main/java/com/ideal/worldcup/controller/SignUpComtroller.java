package com.ideal.worldcup.controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ideal.worldcup.dto.MemberVO;
import com.ideal.worldcup.service.impl.SignUpService;

@Controller
public class SignUpComtroller {
	
	@Inject
	private SignUpService service;
	
	@RequestMapping("signUp.do")
	public String singup(@RequestParam(defaultValue = "0") String command, Locale locale, Model model, HttpServletRequest request) throws Exception {
		
		MemberVO memberVO = null;
		System.out.println("회원가입 컨트롤: " + command);
		
		if(command.equals("memberId")) {			
			memberVO = service.selectId(request.getParameter("m_id"));
			model.addAttribute("memberVO",memberVO);
			System.out.println();
			return "signup/idCheck";
		}else if(command.equals("memberEmail")){
			memberVO = service.selectEmail(request.getParameter("m_email"));
			
			model.addAttribute("memberVO",memberVO);
			return "signup/emailCheck";
		}else if(command.equals("memberNickname")) {
			memberVO = service.selectNickname(request.getParameter("m_nickname"));
			model.addAttribute("memberVO", memberVO);
			return "signup/nickCheck";
		}

		
		/* System.out.println(command); */
		
		return "signup/signup";
	}
	

	@RequestMapping("join.do")
	public String join(@RequestParam(defaultValue = "0") String command, Locale locale, Model model, HttpServletRequest request) throws Exception {
		MemberVO memberVO = new MemberVO();
		
		memberVO.setM_date(request.getParameter("m_date"));
		memberVO.setM_email(request.getParameter("m_email"));
		memberVO.setM_id(request.getParameter("m_id"));
		memberVO.setM_name(request.getParameter("m_name"));
		memberVO.setM_nickname(request.getParameter("m_nickname"));
		memberVO.setM_pw(request.getParameter("m_pw"));
		
		int result = service.insertJoin(memberVO);
		
		return "main";
	}
}
