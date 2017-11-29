package com.cafe24.suhajin07.Login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.cafe24.suhajin07.Member.Member;
import com.cafe24.suhajin07.Member.MemberService;


@Controller
public class LoginController {

	@Autowired
	MemberService memberservice;
		
	@RequestMapping(value = "/Login", method = RequestMethod.GET)
	public String Login() {
		System.out.println("Login_Form 폼 요청");
		return "Login/Login_Form";
		}	
	


	@RequestMapping(value="/LoginAction", method = RequestMethod.POST)
	public String LoginAction(Member member, HttpSession session) {
		member = memberservice.LoginAction(member);
		System.out.println(member);
		
		if (member!= null) { // 로그인 성공
			session.setAttribute("Member", member);
			return "Login/Login_Main";
		} else {    // 로그인 실패
		    
			return "Login/Login_Form";
		}
	}
	
	@RequestMapping(value = "/Logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		System.out.println("Logout");
		session.invalidate();
		return "home";
		}	
	

}




