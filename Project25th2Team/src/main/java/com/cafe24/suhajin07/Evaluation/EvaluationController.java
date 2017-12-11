package com.cafe24.suhajin07.Evaluation;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.suhajin07.Member.Member;

@Controller
public class EvaluationController {
	@Autowired
	EvaluationService evaluationService;
	
	@RequestMapping(value = "/Evaluation", method = RequestMethod.GET)
	public String Evaluation() {
		System.out.println("매니저 평가 페이지 요청");
		return "Evaluation/Evaluation_Insert";
	}
	@RequestMapping(value = "/EvaluationAdd", method = RequestMethod.POST)
	public String EvaluationAdd(HttpSession session, Evaluation eva) {
		System.out.println("EvaluationController 성공 " + eva);
		evaluationService.EvaluationAdd(eva);
		return "redirect:/Evaluation?memberId="+((Member)session.getAttribute("Member")).getMemberId();
	}
}
