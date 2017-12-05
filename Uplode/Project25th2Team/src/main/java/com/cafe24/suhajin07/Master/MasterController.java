package com.cafe24.suhajin07.Master;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.cafe24.suhajin07.Master.MasterDao;

@Controller
public class MasterController {

	@Autowired
	MasterDao masterdao;
	
	@Autowired
	MasterService masterservice;

	@RequestMapping(value = "/MemberList", method = RequestMethod.GET)
	 public String userList(@ModelAttribute("cri") Criteria cri, Model model) {
		System.out.println("controller memberList 요청");

	    		return "Member/Member_List";

	}

}