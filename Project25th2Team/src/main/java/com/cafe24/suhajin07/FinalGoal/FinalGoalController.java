package com.cafe24.suhajin07.FinalGoal;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.cafe24.suhajin07.Member.Member;



@Controller
public class FinalGoalController {


	@Autowired
	FinalGoalService fgService;
	
	
	// 메인화면에서 Head의 목표설정을 누르면 목표설정 페이지로 이동
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
	
	//최종목표 등록
	@RequestMapping(value="/AddFinalGoal", method=RequestMethod.POST)
	public String addFinalGoal(HttpSession session,FinalGoal fg) {
		System.out.println("FinalGoalController"+fg);
		fgService.addFinalGoal(fg);
		return "redirect:/Goal?memberId="+((Member)session.getAttribute("Member")).getMemberId();
		
	}
}
