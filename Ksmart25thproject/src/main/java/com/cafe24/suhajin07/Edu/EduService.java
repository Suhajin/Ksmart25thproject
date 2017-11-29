package com.cafe24.suhajin07.Edu;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe24.suhajin07.Edu.EduDao;
import com.cafe24.suhajin07.Edu.Edu;

@Service
public class EduService {
	
	@Autowired
	EduDao eduDao;
	
	public void addEdu(Edu edu) {
		eduDao.insertEdu(edu);
	}
	
}
