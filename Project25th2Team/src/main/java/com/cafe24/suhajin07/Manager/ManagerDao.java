package com.cafe24.suhajin07.Manager;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.suhajin07.Manager.Manager;

@Repository
public class ManagerDao {

	@Autowired
	SqlSessionTemplate sql;
	
	private final String NS = "com.cafe24.suhajin07.Manager.ManagerMapper.";
	
	
	// 매니저 평가 리스트
	
	public List<Manager> managerEvaluationList(){
		System.out.println("managerEvaluationList 완성");
				
		return sql.selectList(NS+"ManagerEvaluationList");
	}
}
