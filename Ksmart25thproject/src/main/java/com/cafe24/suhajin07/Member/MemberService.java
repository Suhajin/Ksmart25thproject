package com.cafe24.suhajin07.Member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.suhajin07.Member.MemberDao;
import com.cafe24.suhajin07.Member.Member;



@Service
public class MemberService {
	@Autowired
	MemberDao memberDao;

	public void addMember(Member member) {

		System.out.println(member);
		memberDao.insertMember(member);
	}
	
    public Member LoginAction(Member member) {
        
        System.out.println(member);
   
        member = memberDao.loginCheck(member);
        System.out.println(member);
        
        return member;

    }

}
