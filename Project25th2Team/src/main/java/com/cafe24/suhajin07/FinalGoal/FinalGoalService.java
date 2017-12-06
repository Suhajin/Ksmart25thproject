package com.cafe24.suhajin07.FinalGoal;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.suhajin07.Member.Member;


@Service
public class FinalGoalService {

   @Autowired
   FinalGoalDao fgd;
   
   //최종목표 입력
   public void addFinalGoal(FinalGoal fg) {
      System.out.println("addFinalGoal Service 성공 "+ fg);
      fgd.insertFinalGoal(fg);
   }
   
   //최종목표설정 등록되어있는지 확인
   public int checkFinalGoal(int memberCode) {
	      System.out.println("checkFinalGoal Service 성공 "+ memberCode);
	      int row = fgd.checkFinalGoal(memberCode);
	      return row;
	   }
   
   //최종목표 리스트
   public List<FinalGoal> listFinalGoal(String memberId) {
	      System.out.println("listFinalGoal Service 성공 ");
	      List<FinalGoal> listFinalGoal  = fgd.selectFinalGoalList(memberId);
	      System.out.println(listFinalGoal);
	      return listFinalGoal;
	   }
}