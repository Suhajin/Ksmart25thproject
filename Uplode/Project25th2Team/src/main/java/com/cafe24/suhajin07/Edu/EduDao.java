package com.cafe24.suhajin07.Edu;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.suhajin07.Complete.Complete;
import com.cafe24.suhajin07.Edu.Edu;



@Repository
public class EduDao {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	private final String NS = "com.cafe24.suhajin07.Edu.EduMapper.";
	
	public void insertEdu(Edu edu) {
		System.out.println("EduDao 성공");
		System.out.println(edu);
		sqlSessionTemplate.insert(NS+"insertEdu", edu);
	}
	
	public List<Edu> OneEduList(String memberId){
		System.out.println("One EduList성공");
		return sqlSessionTemplate.selectList(NS+"EduListOne", memberId);
	}
	
}
