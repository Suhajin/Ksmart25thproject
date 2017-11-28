package com.cafe24.suhajin07.Edu;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.suhajin07.Edu.Edu;


@Repository
public class EduDao {
	
	@Autowired
	SqlSessionTemplate sst;
	
	private final String NS = "com.cafe24.suhajin07.Edu.EduMapper.";
	
	//학력등록 처리
	public void insertEdu(Edu edu) {
		System.out.println("EduDao 성공");
		System.out.println(edu);
		sst.insert(NS+"insertEdu", edu);
	}
	
	//등록한 학력 list로 출력
	public Edu listAll(String memberId) {
		System.out.println("selectEdu <--EduDao.java");
		return sst.selectOne(NS+"eduList", memberId);
	}
	
	
}
