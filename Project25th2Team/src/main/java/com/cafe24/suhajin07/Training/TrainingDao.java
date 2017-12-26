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
	
	// 1사람에 대한 리스트
	public List<Training> OneTrainingList(String memberId){
		System.out.println("One TrainingListOne성공");
		return sqlSessionTemplate.selectList(NS+"TrainingListOne", memberId);
	}
	
	//수정폼으로 이동
	public Training trainingUpdateForm(int trainingCode) {
		return sqlSessionTemplate.selectOne(NS+"TrainingOneList", trainingCode);
		
	}
	
	//수정처리
	public void updateTraining(Training training) {
		sqlSessionTemplate.update(NS + "TrainingUpdate", training);
	}
	
	//삭제처리
	public void deleteTraining(Training training) {
		sqlSessionTemplate.delete(NS + "TrainingDelete", training);
	}
}
