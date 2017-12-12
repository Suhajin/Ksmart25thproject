package com.cafe24.suhajin07.Evaluation;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EvaluationDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	private final String NS = "com.cafe24.suhajin07.Evaluation.EvaluationMapper.";
	
	public void EvaluationInsert(Evaluation eva) {
		System.out.println("EvaluationInsert Dao 성공");
		sqlSessionTemplate.insert(NS + "insertEvaluation", eva);
	}
}
