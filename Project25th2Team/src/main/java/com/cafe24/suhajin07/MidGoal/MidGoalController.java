package com.cafe24.suhajin07.MidGoal;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.suhajin07.Member.Member;

@Controller
public class MidGoalController {
	@Autowired
	MidGoalService mgService;

	// 목표설정삭제
	@RequestMapping(value = "/DeleteMidGoal", method = RequestMethod.GET)
	public String DeleteMidGoal(Model model, @RequestParam("midGoalName") String midGoalName, HttpSession session) {
		System.out.println("중간목표 삭제페이지");
		System.out.println(midGoalName);
		Member member = (Member) session.getAttribute("Member");
		mgService.deleteMidGoal(midGoalName);
		model.addAttribute("memberId", member.getMemberId());
		return "redirect:/MidGoalList";
	}

	// 목표설정수정Action
	@RequestMapping(value = "/UpdateActionMidGoal", method = RequestMethod.POST)
	public String UpdateActionMidGoal(Model model, MidGoal mg, HttpSession session) {
		System.out.println("중간목표 수정페이지Action");
		System.out.println(mg);
		Member member = (Member) session.getAttribute("Member");
		mgService.updateActionMidGoal(mg);
		model.addAttribute("memberId", member.getMemberId());
		return "redirect:/MidGoalList";
	}

	// 목표설정수정
	@RequestMapping(value = "/UpdateMidGoal", method = RequestMethod.GET)
	public String UpdateMidGoal(Model model, @RequestParam("midGoalName") String midGoalName) {
		System.out.println("중간목표 수정페이지");
		System.out.println(midGoalName);
		List<MidGoal> list = mgService.updateMidGoal(midGoalName);
		model.addAttribute("listMidGoal", list);
		return "Mid_Goal/MidGoal_Update_Form";
	}
	// Master권한. 중간목표 수정페이지로 연동
	@RequestMapping(value = "/MidGoalUpdate", method = RequestMethod.GET)
	public String MidGoalUpdate() {
		
		return "Mid_Goal/MidGoalMember_Update_Form";
	}
	
	
	// 목표설정 최종목표 밑에 중간목표 리스트
	@RequestMapping(value = "/MidGoalList", method = RequestMethod.GET)
	public String MidGoal(Model model, @RequestParam("memberId") String memberId) {
		System.out.println("중간목표 in 목표설정페이지");
		System.out.println(memberId);
		List<MidGoal> list = mgService.listMidGoal(memberId);
		model.addAttribute("listMidGoal", list);
		return "Mid_Goal/MidGoal";
	}

	// 중간목표 등록
	@RequestMapping(value = "/AddMidGoal", method = RequestMethod.POST)
	public String addMidGoal(HttpSession session, MidGoal mg) {
		System.out.println("addMidGoal Controller 성공");
		System.out.println(mg);
		mgService.addMidGoal(mg);
		return "redirect:/MidGoalList?memberId=" + ((Member) session.getAttribute("Member")).getMemberId();
	}
}
