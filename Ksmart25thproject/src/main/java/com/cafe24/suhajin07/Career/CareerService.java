package com.cafe24.suhajin07.Career;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CareerService {

	@Autowired
	CareerDao careerdao;

	public void addCareer(Career career) {
		System.out.println("service career :: " + career);
		careerdao.insertCareer(career);

	}

}
