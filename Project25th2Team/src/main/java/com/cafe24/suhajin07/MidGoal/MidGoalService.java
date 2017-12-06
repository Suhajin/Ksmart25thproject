package com.cafe24.suhajin07.MidGoal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MidGoalService {

		@Autowired
		MidGoalDao mgd;
		
		//중간목표 입력 처리
		public void addMidGoal(MidGoal mg) {
			System.out.println("미드골 서비스닷 "+ mg);
			mgd.insertMidGoal(mg);		
		}
}
