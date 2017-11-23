package com.cafe24.suhajin07.Career;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class CareerDao {
	
	@Autowired
	SqlSessionTemplate sql;
	
	private final String NS = "com.cafe24.suhajin07.Mapper.CareerMapper.";

		public void insertCareer(Career career) {
			System.out.println("Career Dao 성공");
			sql.insert(NS+"insertCareer", career);
		}

}
