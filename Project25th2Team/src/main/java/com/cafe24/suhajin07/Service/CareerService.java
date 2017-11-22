package com.cafe24.suhajin07.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.suhajin07.Dao.CareerDao;
import com.cafe24.suhajin07.Dto.Career;

@Service
public class CareerService {

	@Autowired
	CareerDao careerdao;
	
	public void addCareer(Career career) {
		System.out.println("service career :: "+ career);
		careerdao.insertCareer(career);
		
	}

}
