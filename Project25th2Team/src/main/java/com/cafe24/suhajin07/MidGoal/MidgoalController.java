package com.cafe24.suhajin07.MidGoal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MidgoalController {
	@RequestMapping(value="/InsertMidGoalForm", method=RequestMethod.GET)
	public String MidGoalInsertForm(){
			System.out.println("MidGoalInsertForm");
			return "Goal_Mid/MidGoal_Insert_form";
	}
}
