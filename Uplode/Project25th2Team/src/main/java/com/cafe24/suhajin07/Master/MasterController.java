package com.cafe24.suhajin07.Master;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe24.suhajin07.Master.Master;
import com.cafe24.suhajin07.Master.MasterDao;

@Controller
public class MasterController {

	@Autowired
	MasterDao masterdao;
	

	@RequestMapping(value = "/MemberList", method = RequestMethod.GET)
	public String MemberList(Model model) {
		System.out.println("Master가 Member List");
		List<Master> listmember = masterdao.AllMemberList();
		model.addAttribute("memberlist", listmember);
		System.out.println("Controllo List : "+ listmember);
		System.out.println("Controllo Medel List : "+ model);
		return "Member/Member_List";

	}
}