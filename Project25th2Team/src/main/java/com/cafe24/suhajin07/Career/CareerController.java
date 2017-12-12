package com.cafe24.suhajin07.Career;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.suhajin07.Career.CareerDao;
import com.cafe24.suhajin07.Career.Career;
import com.cafe24.suhajin07.Career.CareerService;
import com.cafe24.suhajin07.Member.Member;

@Controller
public class CareerController {

	@Autowired
	CareerService careerservice;

	@Autowired
	CareerDao careerdao;

	// 경력 입력 폽으로 넘어가기
	@RequestMapping(value = "/CareerInsert", method = RequestMethod.GET)
	public String Career() {
		System.out.println("Career_InsertForm 요청");
		return "Career_Career/Career_Insert";
	}

	// 경력 입력 처리하기
	@RequestMapping(value = "/addCareer", method = RequestMethod.POST)
	public String addCareer(HttpSession session, Career career) {
		System.out.println("CareerController addCareer");

		careerservice.addCareer(career);
		return "redirect:/MyCareer?memberId="+((Member)session.getAttribute("Member")).getMemberId();
	}

	// CareerList
	@RequestMapping(value = "/CareerList", method = RequestMethod.GET)
	public String CareerList(Model model) {
		System.out.println("Career 전체리스트");
		List<Career> list = careerdao.selectcareerList();
		model.addAttribute("list", list);
		return "Career_Career/Career_List";
	}

	// 수정 화면으로 넘어가기
	@RequestMapping(value = "/CareerUpdateOne", method = RequestMethod.GET)
	public String CareerUpdate(Model model, @RequestParam("careerCode") int careerCode) {
		System.out.println("경력 수정화면 Controller");
		model.addAttribute("listone", careerdao.careerselectone(careerCode));
		return "Career_Career/Career_Update_Form"; // Career_Career/Career_Update_Form.jsp 로 이동
	}

	// 수정처리하기
	@RequestMapping(value = "/UpdateCareer", method = RequestMethod.POST)
	public String UpdateCareer(HttpSession session, Career career) {
		System.out.println("UpdateCareer Controller");
		careerservice.UpdateCareer(career);
		return "redirect:/MemberCareerList?memberId="+((Member)session.getAttribute("Member")).getMemberId();
	}

	// 삭제처리하기
	@RequestMapping(value = "/CareerDelete", method = RequestMethod.GET)
	public String DeleteCareer(HttpSession session, Career career) {
		System.out.println("DeleteCareer Controller");
		careerservice.DeleteCareer(career);
		return "redirect:/MemberCareerList?memberId="+((Member)session.getAttribute("Member")).getMemberId();
		
	}
}
