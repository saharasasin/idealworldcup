package com.ideal.worldcup.controller;


import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ideal.worldcup.dto.MemberVO;
import com.ideal.worldcup.service.impl.ProfileService;

@Controller
@RequestMapping("/")
public class MainController {
	
	@Inject
	private ProfileService service;
	
		@RequestMapping("main.do")
		public String main() {
			System.out.println("main.do");
			return "main";
		}
		
		@RequestMapping("login.do")
		public String login() {
			return "login/login";
		}
		
		@RequestMapping("profile.do")
		public String profile(HttpServletRequest request, Model model) throws Exception {
			HttpSession session = request.getSession();
			MemberVO memberVO = (MemberVO) session.getAttribute("sessionMemberVO");
			/* MemberVO memberVO = (MemberVO) session.getAttribute("memberVO"); */
			
			memberVO = service.selectMember(memberVO.getM_num());
			model.addAttribute("memberVO", memberVO);
			return "profile/profile";
		}
		
		@RequestMapping("idealWorldcup.do")
		public String idealWorldcup() {
			
			return "idealWorldcup/idealWorldcup";
		}
		
		@RequestMapping("idealWorldcupMake.do")
		public String idealWorldcupMake() {
			
			return "idealWorldcupMake/idealWorldcupMake";
		}
		@RequestMapping("idealWorldcupMakeSample.do")
		public String idealWorldcupMakeSample() {
			
			return "idealWorldcupMake/idealWorldcupMakeSample";
		}
		@RequestMapping("logout.do")
		public String logout(HttpServletRequest request) {
			
			HttpSession session = request.getSession();
			session.invalidate();
			return "main";
		}
		
		
		
		
		
}
