package com.cafe24.suhajin07.Member;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.suhajin07.Member.Member;



@Repository
public class MemberDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	
	private final String NS = "com.cafe24.suhajin07.Member.MemberMapper.";
	
	public void insertMember(Member member) {
		System.out.println("Dao 성공");
		System.out.println(member);
		sqlSessionTemplate.insert(NS+"insertMember",member);
	}

	
	 public Member loginCheck(Member member) {
		 	System.out.println("Dao 성공");
			System.out.println(member);
			
			member = sqlSessionTemplate.selectOne(NS+"login", member);
			System.out.println(member);
			
			return member;
			
	    }
}
