package com.cafe24.suhajin07.Login;

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

		
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		System.out.println("Login_Form 폼 요청");
		return "Login/Login_Form";
		}	
	


	@RequestMapping(value="/LoginAction", method = RequestMethod.POST)
	public String LoginAction(Member member) {
		String result = memberservice.LoginAction(member);
		System.out.println(result);
		if (result!= null) { // 로그인 성공
		    // main.jsp로 이동
			return "home";
		} else {    // 로그인 실패
		    // login.jsp로 이동
			return "Login/Login_Form";
			}
		}
	}




