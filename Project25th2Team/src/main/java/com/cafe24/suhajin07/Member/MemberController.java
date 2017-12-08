package com.cafe24.suhajin07.Member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.suhajin07.Member.Member;
import com.cafe24.suhajin07.Member.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService memberservice;
	
	
	@RequestMapping(value = "/member", method = RequestMethod.GET)
	public String member() {
		System.out.println("Member_InsertForm 폼 요청");
		return "Member/Member_InsertForm";

	}

	@RequestMapping(value = "/addMember", method = RequestMethod.POST)
	// command객체이용하는 방법
	public String addMebmer(Member member) {
		System.out.println("MemberController addMember");
		System.out.println(member);
		
		memberservice.addMember(member);
		
		return "home";
	}
	
	@RequestMapping(value = "/MyPage", method = RequestMethod.GET)
	public String MyPage(HttpSession session) {
		System.out.println(session);
		
		System.out.println("MyPage 폼 요청");
		return "Member/member_Mypage";
	}
	
	@RequestMapping(value = "/updateMember", method = RequestMethod.GET)
	public String updateMember(HttpSession session) {
		System.out.println(session);
		
		System.out.println("updateMember 폼 요청");
		return "Member/Member_Update";
	}
	
	@RequestMapping(value = "/updateMemberAction", method = RequestMethod.POST)
	public String updateMemberAction(Member member, HttpSession session) {
		System.out.println(member);
		System.out.println("updateMemberAction 연결");
		
		int row = memberservice.updateMember(member);
		
		if(row==1) {
			member = memberservice.updateMemberList(member);
			System.out.println(member);
			session.setAttribute("Member", member);
			return "Member/Member_Mypage";
		}
		else {
			return "Member/Member_Update";
		}
	}
}




