package com.cafe24.suhajin07.Complete;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class CompleteDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	private final String NS = "com.cafe24.suhajin07.Complete.CompleteMapper.";
	
	public void insertComplete(Complete complete) {
		System.out.println("CompleteDao 성공");
		System.out.println(complete);
		sqlSessionTemplate.insert(NS+"insertComplete", complete);
	}
	
	public List<Complete> selectCompleteList() {
		System.out.println("CompleteList 성공");
		return sqlSessionTemplate.selectList(NS+"CompleteList");
	}
	
	public List<Complete> OneCompleteList(String memberId){
		System.out.println("One CompleteList성공");
		return sqlSessionTemplate.selectList(NS+"CompleteListOne", memberId);
	}
	
	//수정폼으로 이동
	public Complete completeUpdateForm(int complitionCode) {
		return sqlSessionTemplate.selectOne(NS + "completeOneList", complitionCode);
		
	}
	
	//수정처리
	public void completeUpdate(Complete complete) {
		sqlSessionTemplate.update(NS+"completeUpdate",complete);
	}
	
	//삭제처리
	public void completeDelete(Complete complete) {
		sqlSessionTemplate.delete(NS + "completeDelete", complete);
	}
}
