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


@Controller
public class FinalGoalController {


	@Autowired
	FinalGoalService fgService;
	
	
	// 메인화면에서 Head의 목표설정을 누르면 목표설정 페이지로 이동
	@RequestMapping(value="/Goal", method=RequestMethod.GET)
	public String FinalGoal(Model model, @RequestParam ("memberId") String memberId){
			System.out.println("목표설정 페이지 요청");
			System.out.println(memberId);
			List<FinalGoal> list = fgService.listFinalGoal(memberId);
			model.addAttribute("listFinalGoal", list);
			return "Goal_final/FinalGoal";
	}
	
	// 목표설정 페이지에서 대분류목표설정 insertForm 이동
	@RequestMapping(value="/InsertGoalForm", method=RequestMethod.GET)
	public String FinalGoalInsertForm(){
			System.out.println("FinalGoal_InsertForm");
			
			return "Goal_final/FinalGoal_Insert_Form";
	}
	
	//최종목표 등록
	@RequestMapping(value="/addFinalGoal", method=RequestMethod.POST)
	public String addFinalGoal(HttpSession session,FinalGoal fg) {
		System.out.println("FinalGoalController"+fg);
		fgService.addFinalGoal(fg);
		return "redirect:/Goal?memberId="+((Member)session.getAttribute("Member")).getMemberId();
		
	}
	
	
	

   
/*   //메인(head)에서 등록버튼 누르면 폼 등장.
   @RequestMapping(value="/Goal", method=RequestMethod.GET)
   public String FinalGoalInsert(){
         System.out.println("최종목표설정form 요청");
         return "Goal_final/FinalGoal_insert";
   }
   
   //최종목표 등록
   @RequestMapping(value="/addFinalGoal", method=RequestMethod.POST)
   public String addFinalGoal(FinalGoal fg) {
      System.out.println("Controller"+fg);
      fgService.addFinalGoal(fg);
      return "home";
   }
   
   //최종목표 리스트
   @RequestMapping(value="/FinalGoalList", method=RequestMethod.GET)
   public String FinalGoalList(Model model) {
      System.out.println("FinalGoal 리스트 Controller 시작");
      List<FinalGoal> FinalGoal = fgDao.selectFinalGoalList();
      model.addAttribute("FinalGoal",FinalGoal);
      return "Goal_final/FinalGoal_list";   
   }
*/
}
