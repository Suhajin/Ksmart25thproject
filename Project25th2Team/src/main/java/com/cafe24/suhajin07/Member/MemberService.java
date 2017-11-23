package com.cafe24.suhajin07.Member;

import org.springframework.beans.factory.annotation.Autowired;
/*import org.springframework.beans.factory.annotation.Autowired;*/
import org.springframework.stereotype.Service;



@Service
public class MemberService {
	@Autowired
	MemberDao memberDao;
	

	public void addMember(Member member) {

		System.out.println(member);
		memberDao.insertMember(member);
	}
	
    public String LoginAction(Member member) {
        String name = memberDao.loginCheck(member);
        System.out.println(name);
   
        return name;
    }
}
