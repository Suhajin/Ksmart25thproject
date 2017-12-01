package com.cafe24.suhajin07.FinalGoal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FinalGoalService {

	@Autowired
	FinalGoalDao fgd;
	
	//최종목표 입력
	public void addFinalGoal(FinalGoal fg) {
		System.out.println("서비스다 서비스 :: "+ fg);
		fgd.insertFinalGoal(fg);
	}
}
