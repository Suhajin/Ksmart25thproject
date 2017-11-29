package com.cafe24.suhajin07.Complete;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CompleteController {

	@Autowired
	CompleteService completeService;
	
	@Autowired
	CompleteDao completeDao;

	@RequestMapping(value = "/Complete", method = RequestMethod.GET)
	public String Complete() {
		System.out.println("Complete_Insert 폼 요청 <-- CompleteController");
		return "Career_Complete/Complete_Insert";
	}

	@RequestMapping(value = "/addComplete", method = RequestMethod.POST)
	public String addComplete(Complete complete) {
		System.out.println(complete + "CompleteController addComplete");

		completeService.addComplete(complete);

		return "layout/Career";
	}

	@RequestMapping(value = "/CompleteList", method = RequestMethod.GET)
	public String CompleteList(Model model) {
		System.out.println("Complete 전체리스트");
		List<Complete> list = completeDao.selectCompleteList();
		model.addAttribute("list",list);
		return "Career_Complete/Complete_List";
	}
}
