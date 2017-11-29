package com.cafe24.suhajin07.Edu;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.suhajin07.Edu.Edu;
import com.cafe24.suhajin07.Edu.EduService;

@Controller
public class EduController {
	
	@Autowired
	EduService eduService;
	
	@Autowired
	EduDao eduDao;
	
	//학력 추가버튼 클릭시 Edu_Insert화면으로 이동
	@RequestMapping(value = "/edu", method = RequestMethod.GET)
	public String Edu() {
		System.out.println("Edu_Insert 폼 요청 <-- CareerController");
		return "Career_Edu/Edu_Insert";
	}
	
	//Edu_Insert화면에서 입력후 등록 -> Career화면으로 이동
	@RequestMapping(value = "/edu", method = RequestMethod.POST)
	public String addEdu(Edu edu) {
		System.out.println(edu + "addEdu <-- EduController.java");
		
		eduService.addEdu(edu);
		
		return "layout/Career";
	}
	
	//등록버튼 클릭시 회원의 edu정보 출력
	@RequestMapping(value = "" , method = RequestMethod.GET)
	public String CareerInsert(Model model, @RequestParam("memberId") String memberId ) {
		model.addAttribute("memberEduList", eduDao.listAll(memberId));
		return "layout/Career";
	}
	
	//학력등록 후 Career화면에서 입력 한 내용 List로 출력
	@RequestMapping(value="/Career", method = RequestMethod.GET)
	public void listAll(Edu edu) {
		System.out.println(edu + "listAll <-- EduController.java");
	}
	
}