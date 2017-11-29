package com.cafe24.suhajin07.Career;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CareerDao {
	
	@Autowired
	SqlSessionTemplate sql;
	
	private final String NS = "com.cafe24.suhajin07.Career.CareerMapper.";

		public void insertCareer(Career career) {
			System.out.println("Career Insert 성공");
			sql.insert(NS+"insertCareer", career);
		}
		
		public List<Career> selectcareerList(){
			System.out.println("Creer List 성공");
			return sql.selectList(NS+"CareerList");
		}

}
