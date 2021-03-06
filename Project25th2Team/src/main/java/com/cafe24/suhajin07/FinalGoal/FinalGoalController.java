package com.cafe24.suhajin07.FinalGoal;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.suhajin07.Member.Member;
import com.cafe24.suhajin07.Master.Goal;

@Controller
public class FinalGoalController {

	@Autowired
	FinalGoalService fgService;
	
	
	//중간목표 인서트 폼(대분류목표 list를 기반으로 중간목표 insert가 이루어진다)
	@RequestMapping(value="/InsertMidGoalForm", method=RequestMethod.GET)
	public String MidGoalInsertForm(Model model, @RequestParam("memberId") String memberId){
		System.out.println("MidGoalInsertForm Contoller");
		System.out.println(memberId);
		List<FinalGoal> list = fgService.insertFormMidGoal(memberId);
		model.addAttribute("listMidGoalForm", list);
		return "Mid_Goal/MidGoal_Insert_Form";
	}
	
	//최종목표 수정
	@RequestMapping(value="/UpdateActionFinalGoal", method=RequestMethod.POST)
	public String updateActionFinalGoal(FinalGoal fg, HttpSession session) {
		System.out.println("updateActionFinalGoal Controller");
		System.out.println(fg);
		fgService.updateFinalGoal(fg);
		return "redirect:/Goal?memberId="+((Member)session.getAttribute("Member")).getMemberId();
		
	}
	// Master 한개의 객체 수정하기 위해서 불러오는 화면
	@RequestMapping(value="/FinalGoalUpdate", method=RequestMethod.GET)
	public String FinalGoalUpdate(FinalGoal fg, HttpSession session) {
		
		return "Final_Goal/FinalGoalMember_Update_Form";
		
	} 
	

	//최종목표 수정페이지
	@RequestMapping(value="/UpdateFinalGoal", method=RequestMethod.GET)
	public String updateFinalGoal(Model model, HttpSession session) {
		Member member = (Member) session.getAttribute("Member");
		System.out.println(member.getMemberId());
		List<FinalGoal> list = fgService.listFinalGoal(member.getMemberId());
		model.addAttribute("listFinalGoal", list);
		return "Final_Goal/FinalGoal_Update_Form";
		
	}

	//최종목표 등록
	@RequestMapping(value="/AddFinalGoal", method=RequestMethod.POST)
	public String addFinalGoal(HttpSession session,FinalGoal fg) {
		System.out.println("FinalGoalController"+fg);
		fgService.addFinalGoal(fg);
		return "redirect:/Goal?memberId="+((Member)session.getAttribute("Member")).getMemberId();
		
	}
	
	// 메인화면에서 Head의 목표설정을 누르면 목표설정(대분류 목표) 페이지로 이동
	@RequestMapping(value="/Goal", method=RequestMethod.GET)
	public String FinalGoal(Model model,HttpSession session){
			System.out.println("목표설정 페이지 요청");
			Member member = (Member) session.getAttribute("Member");
			System.out.println(member.getMemberCode());
			System.out.println(member.getMemberId());
			int row = fgService.checkFinalGoal(member.getMemberCode());
			if(row==1) {
				List<FinalGoal> list = fgService.listFinalGoal(member.getMemberId());
				model.addAttribute("listFinalGoal", list);
				return "Final_Goal/FinalGoal";
			}
			else {
				return "Final_Goal/FinalGoal_Insert_Form";
		}
	}
}
