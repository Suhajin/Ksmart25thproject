package com.cafe24.suhajin07.Action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ActionController {
	
	@Autowired
	ActionDao actionDao;
	
	@Autowired
	ActionService actionService;
	
	//Action List화면으로 이동
	@RequestMapping(value="/actionForm", method=RequestMethod.GET)
	public String actionList(Model model, @RequestParam("memberId") String memberId) {
		System.out.println("actionList성공 <-- ActionController.java");
		System.out.println(model + "<--model");
		model.addAttribute("actionList", actionDao.oneActionList(memberId));
		return "Action/Action_Form";
		
	}
	
	/*//Action insert화면으로 이동
	@RequestMapping(value="/actionAdd", method=RequestMethod.GET)
	public String action() {
		System.out.println("action등록 화면으로 이동 성공 <--ActionController.java");
		return "Action/Action_Insert";
		
	}
	
	//Action insert 등록 처리
	@RequestMapping(value="/addAction", method=RequestMethod.POST)
	public String addAction(Action action) {
		System.out.println("addAction 성공 <-- ActionController.java");
		System.out.println(action + "<--ActionController.java");
		actionService.addAction(action);
		
		return "redirect:/ActionForm";
		
	}*/
	
	@RequestMapping(value="/goalAdd", method= {RequestMethod.GET,RequestMethod.POST})
	public String goalAdd(Action action) {
		System.out.println("goalAdd <-- ActionController.java");
		actionDao.goalAdd(action);
		return "Action/Action_Form";
		
	}
	
	//updateForm으로 이동
	@RequestMapping(value="/actionUpdateForm", method=RequestMethod.GET)
	public String actionUpdateForm(Model model, @RequestParam("actionCode") int actionCode) {
		System.out.println("ActionUpdateForm으로 이동 성공 <--ActionController.java");
		model.addAttribute("actionUpdateForm" + actionDao.actionUpdateForm(actionCode));
		return "Action/Action_Update";
		
	}
	
	
}
