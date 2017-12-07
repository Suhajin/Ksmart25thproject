package com.cafe24.suhajin07.Evaluation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EvaluationService {
	@Autowired
	EvaluationDao evaluationDao;
	
	public void EvaluationAdd(Evaluation evaluation) {
		System.out.println("EvaluationService" + evaluation);
		evaluationDao.EvaluationInsert(evaluation);
	}
}
