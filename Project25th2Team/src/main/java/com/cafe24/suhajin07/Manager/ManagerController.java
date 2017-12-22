package com.cafe24.suhajin07.Manager;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ManagerController {

	@RequestMapping(value="/ManagerBonus", method= RequestMethod.GET)
	public String ManagerBonusList() {
		
		return "Manager/Manager_Bonus_List";
	}
	
	@RequestMapping(value="/ManagerSalay", method= RequestMethod.GET)
	public String ManagerSalay() {
		
		return "Manager/Manager_Salay_List";
	}
	
}
