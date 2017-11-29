package com.cafe24.suhajin07.Training;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TrainingService {

	@Autowired
	TrainingDao trainingDao;
	
	public void addTraining(Training training) {
		System.out.println("ServiceTraining" + training);
		trainingDao.insertTraining(training);
	}
}
