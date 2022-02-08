package com.ideal.worldcup.controller;

import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ideal.worldcup.dto.LoginVO;
import com.ideal.worldcup.dto.MemberVO;
import com.ideal.worldcup.service.impl.LoginService;

@Controller
public class LoginController {
	
	@Inject
	private LoginService service;
	
	@RequestMapping("loginOk.do")
	public String login(@RequestParam(defaultValue = "0") String command, Locale locale, Model model, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		MemberVO memberVO = new MemberVO();
		
		memberVO.setM_id(request.getParameter("m_id"));
		memberVO.setM_pw(request.getParameter("m_pw"));
		
		memberVO = service.selectMember(memberVO);
		if(memberVO == null) {
			model.addAttribute("loginCheck","fail");
			return "login/login";
		}else {
			session.setAttribute("sessionMemberVO", memberVO);
			/*model.addAttribute("memberVO",memberVO);*/
			return "main";			
		}
	}

}
