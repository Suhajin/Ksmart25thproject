package com.cafe24.suhajin07.FinalGoal;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FinalGoalController {

   @Autowired
   FinalGoalService fgService;
   
   @Autowired
   FinalGoalDao fgDao; 
   
   
   //메인(head)에서 등록버튼 누르면 폼 등장.
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
   
}
