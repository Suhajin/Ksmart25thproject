package com.cafe24.suhajin07.FinalGoal;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FinalGoalService {

	@Autowired
	FinalGoalDao fgd;

	// 중간목표 입력 폼
	public List<FinalGoal> insertFormMidGoal(String memberId) {
		System.out.println("insertFormMidGoal service 성공");
		System.out.println(memberId);
		List<FinalGoal> list = fgd.insertFormMidGoal(memberId);
		return list;
	}

	// 최종목표 수정

	public void updateFinalGoal(FinalGoal fg) {
		System.out.println(fg);
		System.out.println("updateFinalGoal Service 성공");
		fgd.updateFinalGoal(fg);

	}

	// 최종목표 리스트
	public List<FinalGoal> listFinalGoal(String memberId) {
		System.out.println("listFinalGoal Service 성공 ");
		System.out.println(memberId);
		List<FinalGoal> listFinalGoal = fgd.selectFinalGoalList(memberId);
		System.out.println(listFinalGoal);
		return listFinalGoal;
	}

	// 최종목표설정 등록되어있는지 확인
	public int checkFinalGoal(int memberCode) {
		System.out.println("checkFinalGoal Service 성공 " + memberCode);
		int row = fgd.checkFinalGoal(memberCode);
		return row;
	}

	// 최종목표 입력
	public void addFinalGoal(FinalGoal fg) {
		System.out.println("addFinalGoal Service 성공 " + fg);
		fgd.insertFinalGoal(fg);
	}

}