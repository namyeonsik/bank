package com.bank.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bank.web.domain.MemberVO;
import com.bank.web.serviceImpl.MemberServiceImpl;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired MemberVO member;
	@Autowired MemberServiceImpl service;
	
	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public String loginForm(Model model){
		
		return "member/loginForm";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(
			@RequestParam("userid")String userid,
			@RequestParam("password")String password,
			Model model){
		
		System.out.println("넘어온 아이디 " + userid);
		System.out.println("넘어온 비밀번호 " + password);
		member.setUserid(userid);
		member.setPassword(password);
		member = service.login(member);
		System.out.println("로그인 후 이름 : " + member.getName());
		model.addAttribute("name", member.getName() );
		
		return "account/myaccount";
	}
	
	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public String joinForm(Model model){
		
		return "member/joinForm";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join(
			@RequestParam("userid")String userid,
			@RequestParam("password")String password,
			@RequestParam("name")String name,
			@RequestParam("addr")String addr,
			@RequestParam("birth")String birth,
			Model model){
		
		member.setUserid(userid);
		member.setPassword(password);
		member.setName(name);
		member.setAddr(addr);
		member.setBirth(Integer.parseInt(birth));
		// String 타입을 int 타입으로 변환 => Integer.parseInt()
		// String.valueOf() => int 타입을 String 타입으로 변환
		
		int result = service.join(member);
		if(result == 1){
			model.addAttribute("name", name);
		} else{
			System.out.println("회원가입 실패");
		}
		return "member/loginForm";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Model model){
		
		return "global/home";
	}
}
