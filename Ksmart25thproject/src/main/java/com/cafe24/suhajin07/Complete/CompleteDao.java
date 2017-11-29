package com.cafe24.suhajin07.Complete;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CompleteDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	private final String NS = "com.cafe24.suhajin07.Complete.CompleteMapper.";
	
	public void insertComplete(Complete complete) {
		System.out.println("CompleteDao 성공");
		System.out.println(complete);
		sqlSessionTemplate.insert(NS+"insertComplete", complete);
	}
	
	public List<Complete> selectCompleteList() {
		System.out.println("CompleteList 성공");
		return sqlSessionTemplate.selectList(NS+"CompleteList");
	}
	
}
