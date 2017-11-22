package com.cafe24.suhajin07.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CareerController {
	
	@RequestMapping(value="/CareerInsert", method=RequestMethod.GET)
	public String Career() {
		System.out.println("Career_InsertForm 요청");
		return "Career_Career/Career_Insert";
	}

}
