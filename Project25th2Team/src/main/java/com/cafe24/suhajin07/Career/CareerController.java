package com.cafe24.suhajin07.Career;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class CareerController {

	@Autowired
	CareerService careerservice;

	// 메인(head)에서 등록버튼 누르면 넘어가기.
	@RequestMapping(value="/Insert", method=RequestMethod.GET)
	public String CareerInsert() {
		System.out.println("경력등록 Form 요청");
		return "layout/Career";
	}
	@RequestMapping(value="/CareerInsert", method=RequestMethod.GET)
	public String Career() {
		System.out.println("Career_InsertForm 요청");
		return "Career_Career/Career_Insert";
	}
	
	@RequestMapping(value="/addCareer", method=RequestMethod.POST)
	public String addCareer(Career career) {
		System.out.println("CareerController addCareer");
		
		careerservice.addCareer(career);
		
		return "layout/Career";	
	}	
		//CareerList
	@RequestMapping(value="/CareerList", method=RequestMethod.GET)
	public String CareerList(){
		System.out.println("Career 전체리스트");
		
		return "Career_Career/Career_List";
	
		
	}
}
