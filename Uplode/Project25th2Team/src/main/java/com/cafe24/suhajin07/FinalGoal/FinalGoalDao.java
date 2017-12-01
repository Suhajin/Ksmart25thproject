package com.cafe24.suhajin07.FinalGoal;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FinalGoalDao {

	@Autowired
	SqlSessionTemplate SST;
	
	private final String NS = "com.cafe24.suhajin07.FinalGoal.FinalGoalMapper.";
	
	//최종목표 입력
	public void insertFinalGoal(FinalGoal fg) {
		System.out.println("Dao다 Dao!!");
		SST.insert(NS+"insertFinalGoal", fg);
	}
}
