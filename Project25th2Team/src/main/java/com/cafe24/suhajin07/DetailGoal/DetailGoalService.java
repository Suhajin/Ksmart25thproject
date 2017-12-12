package com.cafe24.suhajin07.DetailGoal;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class DetailGoalService {
	
	@Autowired
	DetailGoalDao dgd;
	
	//세부목표 삭제
	public void deleteDetailGoal(int detailGoalCode) {
		System.out.println("detailGoalCode service 입니당");
		dgd.deleteDetailGoal(detailGoalCode);
	}
	
	//세부목표 수정(Action)
	public void updateActionDetailGoal(DetailGoal dg) {
		System.out.println("updateActionDetailGoal in 서비스!!");
		System.out.println(dg);
		dgd.DetailGoalUpdateAction(dg);
	}
	
	//세부목표 수정폼(From)
	public List<DetailGoal> updateDetailGoal(int detailGoalCode){
		System.out.println("updateDetailGoal in 서비스~");
		List<DetailGoal> listDetailGoal = dgd.selectDetailGoalUpdate(detailGoalCode);
		System.out.println(listDetailGoal);
		return listDetailGoal;
	}
	
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
