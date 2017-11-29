package com.cafe24.suhajin07.Goal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GoalController {
	
	@RequestMapping(value = "/Goal", method = RequestMethod.GET)
	public String Goal() {
		System.out.println("Goal 화면 요청");
		return "layout/Goal";

	}

}
