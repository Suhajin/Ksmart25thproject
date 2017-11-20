package com.cafe24.suhajin07.Dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.suhajin07.Dto.Member;

@Repository
public class MemberDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	private final String NS = "com.cafe24.suhajin07.Mapper.MemberMapper.";
	
	public int insertMember(Member member) {
		System.out.println("DB연결성공");
		System.out.println("Dao member 확인 : " + member);
		
		return sqlSessionTemplate.insert(NS+"insertMember",member);
	}
}
