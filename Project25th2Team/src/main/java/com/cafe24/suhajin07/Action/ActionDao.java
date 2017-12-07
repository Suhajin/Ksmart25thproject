package com.cafe24.suhajin07.Action;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ActionDao {
	
	@Autowired
	SqlSessionTemplate sst;
	
	private final String NS = "com.cafe24.suhajin07.Action.ActionMapper.";
	
	//한회원에 대한 ActionList
	public List<Action> oneActionList(String memberId) {
		System.out.println("OneActionList성공 <-- ActionDao.java");
		return sst.selectList(NS+"ActionOneList", memberId);
		
	}
	
	//updateForm으로 이동
	public Action actionUpdateForm(int actionCode) {
		System.out.println("actionUpdateForm 성공 <-- ActionDao.java");
		return sst.selectOne(NS+"oneActionList", actionCode);
		
	}
}
