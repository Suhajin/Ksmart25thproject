package com.cafe24.suhajin07.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.suhajin07.Dao.MemberDao;
import com.cafe24.suhajin07.Dto.Member;


@Controller
public class MemberController {

	@Autowired
	private MemberDao memberdao;
/*	private Member member;*/
	
	@RequestMapping(value="", method = RequestMethod.GET)
	public String home() {
		return "home";
	}
		


	@RequestMapping(value = "/addmember", method = RequestMethod.GET)
	public String addmember() {
		System.out.println("Member_InsertForm 폼 요청");
		
		return "Member/Member_InsertForm";

	}

	@RequestMapping(value = "/addMember", method = RequestMethod.POST)
	public String addMebmer(@RequestParam(value="memberCode") String memberCode
							,@RequestParam(value="memberId") String memberId
							,@RequestParam(value="memberPw") String memberPw
							,@RequestParam(value="memberName") String memberName
							,@RequestParam(value="memberPhone") String memberPhone
							,@RequestParam(value="memberEmail") String memberEmail
							,@RequestParam(value="memberAddress") String memberAddress) {
			System.out.println("memberCode:"+memberCode);
			System.out.println("memberId:"+memberId);
			System.out.println("memberPw:"+memberPw);
			System.out.println("memberName:"+memberName);
			System.out.println("memberPhone:"+memberPhone);
			System.out.println("memberEmail:"+memberEmail);
			System.out.println("memberAddress:"+memberAddress);
			
			Member member = new Member();
			
			member.setMemberCode(memberCode);
			member.setMemberId(memberId);
			member.setMemberPw(memberPw);
			member.setMemberName(memberName);
			member.setMemberPhone(memberPhone);
			member.setMemberEmail(memberEmail);
			member.setMemberAddress(memberAddress);
			
			System.out.println("memberController : " + member);
					
			memberdao.insertMember(member);
			
		return "home";
	}
}
