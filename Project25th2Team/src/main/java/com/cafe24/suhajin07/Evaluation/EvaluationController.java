package com.cafe24.suhajin07.Evaluation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EvaluationController {
	@Autowired
	EvaluationService evaluationService;
	
	@RequestMapping(value = "/Evaluation", method = RequestMethod.GET)
	public String Evaluation() {
		System.out.println("매니저 평가 페이지 요청");
		return "Evaluation/Evaluation_Insert";
	}
}
