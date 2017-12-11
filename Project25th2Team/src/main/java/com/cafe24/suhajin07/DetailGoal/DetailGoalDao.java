package com.cafe24.suhajin07.DetailGoal;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class DetailGoalDao {
	@Autowired
	SqlSessionTemplate SST;
	
	private final String NS = "com.cafe24.suhajin07.DetailGoal.DetailGoalMapper.";
	
	//세부목표 수정화면
	public List<DetailGoal> selectDetailGoalUpdate(int detailGoalCode){
		System.out.println("updateDetialGoal in Dao~~");
		List<DetailGoal> list=SST.selectList(NS+"selectDetailGoalUpdate",detailGoalCode);
		System.out.println(list);
		return list;
	}
	
	//세부목표 리스트
		public List<DetailGoal> selectDetailGoalList(String memberId){
			System.out.println("selectDetailGoalList Dao 성공");
			List<DetailGoal> list = SST.selectList(NS+"selectDetailGoalList",memberId);
			System.out.println(list);
			return list;
		}
	
	//세부목표 입력
	public void insertDetailGoal(DetailGoal dg) {
		System.out.println("세부목표 인서트 성공 시마시타. from DAO");
		System.out.println(dg);
		SST.insert(NS+"insertDetailGoal",dg);
	}
			
}
