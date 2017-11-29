package com.cafe24.suhajin07.Edu;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.cafe24.suhajin07.Edu.Edu;
import com.cafe24.suhajin07.Edu.EduService;

@Controller
public class EduController {
	
	@Autowired
	EduService eduService;

	
	@RequestMapping(value = "/edu", method = RequestMethod.GET)
	public String Edu() {
		System.out.println("Edu_Insert 폼 요청 <-- CareerController");
		return "Career_Edu/Edu_Insert";
	}
	
	@RequestMapping(value = "/addEdu", method = RequestMethod.POST)
	public String addEdu(Edu edu) {
		System.out.println(edu + "CareerController addEdu");
		
		eduService.addEdu(edu);
		
		return "home";
	}
	
}