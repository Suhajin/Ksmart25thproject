package com.cafe24.suhajin07.MidGoal;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MidgoalController {
	@Autowired
	MidGoalService mgService;
	
	//중간목표 인서트 폼
	@RequestMapping(value="/InsertMidGoalForm", method=RequestMethod.GET)
	public String MidGoalInsertForm(){
			System.out.println("MidGoalInsertForm");
			return "Goal_Mid/MidGoal_Insert_form";
	}
	//중간목표 등록
		@RequestMapping(value="/AddMidGoal", method=RequestMethod.POST)
		public String addMidGoal(MidGoal mg) {
		
			System.out.println("MidGoalController 성공"+mg);
			mgService.addMidGoal(mg);
			return "home";
			
		}
}
