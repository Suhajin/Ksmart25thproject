package com.cafe24.suhajin07.Action;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.suhajin07.Member.Member;

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
	
	//updateForm으로 이동
	@RequestMapping(value="/actionUpdateForm", method=RequestMethod.GET)
	public String actionUpdateForm(Model model, @RequestParam("actionCode") int actionCode) {
		System.out.println("ActionUpdateForm으로 이동 성공 <--ActionController.java");
		model.addAttribute("actionUpdateForm", actionDao.actionUpdateForm(actionCode));
		return "Action/Action_Update";
		
	}
	
	//ActionUpdate 수정처리
	@RequestMapping(value="/updateAction", method=RequestMethod.POST)
	public String updateAction(HttpSession session, Action action) {
		System.out.println("updateAction <-- ActionController.java");
		actionDao.updateAction(action);
		return "redirect:/actionForm?memberId="+((Member)session.getAttribute("Member")).getMemberId();
		
	}
	
	
}
