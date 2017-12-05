package com.cafe24.suhajin07.Action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ActionController {
	
	//Action List화면으로 이동
	@RequestMapping(value="/ActionForm", method=RequestMethod.GET)
	public String actionList() {
		System.out.println("actionList성공 <-- ActionController.java");
		return "Action/Action_Form";
		
	}
	
	//Action insert화면으로 이동
	@RequestMapping(value="/actionAdd", method=RequestMethod.GET)
	public String action() {
		System.out.println("action등록 화면으로 이동 성공 <--ActionController.java");
		return "Action/Action_Insert";
		
	}
	
	//Action insert 등록 처리
	public String addAction(Action action) {
		System.out.println("addAction 성공 <-- ActionController.java");
		return "Action/Action_Form";
		
	}
}
