package com.cafe24.suhajin07.FinalGoal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
public class FinalGoalController {

	@Autowired
	FinalGoalService fgService;
	
	
	//메인(head)에서 등록버튼 누르면 폼 등장.
	@RequestMapping(value="/Goal", method=RequestMethod.GET)
	public String FinalGoalInsert(){
			System.out.println("최종목표설정form 요청");
			return "Goal_final/FinalGoal";
	}
	
	//최종목표 등록
	@RequestMapping(value="/addFinalGoal", method=RequestMethod.POST)
	public String addFinalGoal(FinalGoal fg) {
		System.out.println("Controller"+fg);
		fgService.addFinalGoal(fg);
		
		return "home";
	}
	
	
	
}
