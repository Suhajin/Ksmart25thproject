package com.cafe24.suhajin07.MidGoal;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MidGoalDao {
	@Autowired
	SqlSessionTemplate SST;
	
	private final String NS = "com.cafe24.suhajin07.MidGoal.MidGoalMapper.";
	
/*	//중간목표 수정
		public List<MidGoal> updateMidGoal(String midGoalName){
			System.out.println("updateMidGoal Dao 성공");
			List<MidGoal> list = SST.selectList(NS+"selectMidGoalList",midGoalName);
			System.out.println(list);
			return list;
		}*/
	//중간목표 리스트
	public List<MidGoal> selectMidGoalList(String memberId){
		System.out.println("selectMidGoalList Dao 성공");
		List<MidGoal> list = SST.selectList(NS+"selectMidGoalList",memberId);
		System.out.println(list);
		return list;
	}
	//중간목표 입력
	public void insertMidGoal(MidGoal mg) {
		System.out.println("미드골 인서트 성공!!in DAO");
		System.out.println(mg);
		SST.insert(NS+"insertMidGoal",mg);
	}
}
