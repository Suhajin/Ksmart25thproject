package com.cafe24.suhajin07.MidGoal;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MidGoalDao {
	@Autowired
	SqlSessionTemplate SST;
	
	private final String NS = "com.cafe24.suhajin07.MidGoal.MidGoalMapper.";
	
	//중간목표 입력
	public void insertMidGoal(MidGoal mg) {
		System.out.println("미드골 인서트 성공!!in DAO");
		System.out.println(mg);
		SST.insert(NS+"insertMidGoal",mg);
	}
}
