package com.cafe24.suhajin07.Service;

import org.springframework.stereotype.Service;

import com.cafe24.suhajin07.Dto.Career;

@Service
public class CareerService {
	
	public void addCareer(Career career) {
		System.out.println("service career :: "+ career);
		
	}

}
