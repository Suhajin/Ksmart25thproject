package com.cafe24.suhajin07.DetailGoal;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.suhajin07.Member.Member;
import com.cafe24.suhajin07.MidGoal.MidGoal;

@Controller
public class DetailGoalController {
	DetailGoalService dgService;
	
	//세부목표 리스트
	@RequestMapping(value="/DetailGoalList", method=RequestMethod.GET)
	public String FinalGoal(Model model, @RequestParam("memberId") String memberId) {
		System.out.println("세부목표 in 목표설정페이지");
		System.out.println(memberId);
		List<DetailGoal> list= dgService.listDetailGoal(memberId);
		model.addAttribute("listDetailGoal", list);
		return "Detail_Goal/DetailGoal";
		
	}
	
	//세부목표 인서트 폼
		@RequestMapping(value="/InsertDetailGoalForm", method=RequestMethod.GET)
		public String MidGoalInsertForm(){
				System.out.println("InsertDetailGoalForm");
				return "Detail_Goal/DetailGoal_Insert_Form";
		}
	//세부목표 등록
	@RequestMapping(value="/AddDetailGoal", method=RequestMethod.POST)
	public String addDetailGoal(HttpSession session, DetailGoal dg) {
		System.out.println("DetailGoalController 성공"+dg);
		dgService.addDetailGoal(dg);
		return "redirect:/DetailGoalList?memberId="+((Member)session.getAttribute("Member")).getMemberId();		
		}
}

