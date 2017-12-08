package com.cafe24.suhajin07.DetailGoal;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class DetailGoalService {
	
	@Autowired
	DetailGoalDao dgd;
		
	//세부목표 리스트 listDetailGoal
	public List<DetailGoal> listDetailGoal(String memberId) {
		System.out.println("listDetailGoal service 성공");
		List<DetailGoal> listDetailGoal = dgd.selectDetailGoalList(memberId);
		System.out.println(listDetailGoal);
		return listDetailGoal;
	}

	//세부목표 입력처리
	
	public void addDetailGoal(DetailGoal dg) {
		System.out.println("세부목표 서비스라네"+dg);
		dgd.insertDetailGoal(dg);
	}
}
