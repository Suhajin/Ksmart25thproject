package com.cafe24.suhajin07.FinalGoal;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FinalGoalDao {

   @Autowired
   SqlSessionTemplate sqlSessionTemplate;
   
   private final String NS = "com.cafe24.suhajin07.FinalGoal.FinalGoalMapper.";
   
   //최종목표 입력
   public void insertFinalGoal(FinalGoal fg) {

      System.out.println("FinalGoal insert 성공");
      System.out.println("Dao다 Dao!!");
      sqlSessionTemplate.insert(NS+"insertFinalGoal", fg);
   }
   //최종목표 리스트
   public List<FinalGoal> selectFinalGoalList(){
      System.out.println("FinalGoal Dao 반가워요");
      return sqlSessionTemplate.selectList(NS+"selectFinalGoalList"); 
   }
}