package com.cafe24.suhajin07.FinalGoal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FinalGoalController {

	@Autowired
	FinalGoalService fgService;
	
	

	@RequestMapping(value="/Goal", method=RequestMethod.GET)
	public String FinalGoal(){
			System.out.println("목표설정 페이지 요청");
			return "Goal_final/FinalGoal";
	}
	
	@RequestMapping(value="/InsertGoalForm", method=RequestMethod.GET)
	public String FinalGoalInsertForm(){
			System.out.println("FinalGoal_InsertForm");
			return "Goal_final/FinalGoal_Insert_Form";
	}
	
	/*//최종목표 등록
	@RequestMapping(value="/addFinalGoal", method=RequestMethod.POST)
	public String addFinalGoal(FinalGoal fg) {
		System.out.println("Controller"+fg);
		fgService.addFinalGoal(fg);
		
		return "home";
	}*/
	
	
	
}
