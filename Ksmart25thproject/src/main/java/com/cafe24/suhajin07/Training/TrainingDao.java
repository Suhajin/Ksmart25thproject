package com.cafe24.suhajin07.Training;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TrainingDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	private final String NS = "com.cafe24.suhajin07.Training.TrainingMapper.";
	
	public void insertTraining(Training training) {
		System.out.println("TrainingDao 성공");
		System.out.println(training);
		sqlSessionTemplate.insert(NS+"insertTraining", training);
	}
	public List<Training> selectTrainingList() {
		System.out.println("TrainingList 성공");
		return sqlSessionTemplate.selectList(NS+"TrainingList");
	}
}
