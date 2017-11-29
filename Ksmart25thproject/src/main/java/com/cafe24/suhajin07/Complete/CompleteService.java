package com.cafe24.suhajin07.Complete;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CompleteService {

	@Autowired
	CompleteDao completeDao;

	public void addComplete(Complete complete) {
		System.out.println("serviceComplete" + complete);
		completeDao.insertComplete(complete);
	}
}
