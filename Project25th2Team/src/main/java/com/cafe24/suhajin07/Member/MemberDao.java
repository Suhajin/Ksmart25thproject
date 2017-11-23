package com.cafe24.suhajin07.Member;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class MemberDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	private final String NS = "com.cafe24.suhajin07.Mapper.MemberMapper.";
	
	public void insertMember(Member member) {
		System.out.println("Dao 성공");
		System.out.println(member);
		sqlSessionTemplate.insert(NS+"insertMember",member);
	}

	
	 public String loginCheck(Member member) {
		 	System.out.println("Dao 성공");
			System.out.println(member);
	        String name = sqlSessionTemplate.selectOne(NS+"login", member);
	        System.out.println(name);
	        return name;
	    }
}
