package com.cafe24.suhajin07.Career;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CareerService {

	@Autowired
	CareerDao careerdao;
	// 입력
	public void addCareer(Career career) {
		System.out.println("service career :: "+ career);
		careerdao.insertCareer(career);
		
	}
	// 업데이트
	public void UpdateCareer(Career career) {
		System.out.println("service Career :: " + career);
		careerdao.UpdateCareer(career);
	}
	
	// 삭제
	public void DeleteCareer(Career career) {
		System.out.println("service Career :: " + career);
		careerdao.DeleteCareer(career);
	}

}
