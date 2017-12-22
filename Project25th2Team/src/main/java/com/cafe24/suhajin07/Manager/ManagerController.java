package com.cafe24.suhajin07.Manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ManagerController {

	@Autowired
	ManagerDao managerdao;
	
	
	@RequestMapping(value="/ManagerBonus", method= RequestMethod.GET)
	public String ManagerBonusList(Model model) {
		System.out.println("COntroller ++ ManagerBonusList 완성");
		model.addAttribute("ManagerEvaluationList", managerdao.managerEvaluationList());
		
		System.out.println("Controller + ManagerEvaluationList 완성");
		System.out.println(model);
		return "Manager/Manager_Bonus_List";
	}
	// 매니저 임금 페이지
	@RequestMapping(value="/ManagerSalay", method= RequestMethod.GET)
	public String ManagerSalay() {
		
		return "Manager/Manager_Salay_List";
	}
	
	// 매니저 인센티브 등록 화면으로 연동
	@RequestMapping(value="/ManagerInsentiveInsert", method=RequestMethod.GET)
	public String ManagerInsevtive() {
		
		return "Manager/Manager_Incentive_Insert";
	}
	
}
