package com.cafe24.suhajin07.Master;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.suhajin07.Master.Master;

@Repository
public class MasterDao {
	
	@Autowired
	SqlSessionTemplate sql;

	private final String NS = "com.cafe24.suhajin07.Master.MasterMapper.";
	
	public List<Master> AllMemberList(){
		System.out.println("All MemberList 성공");
		return sql.selectList(NS + "memberAllList");
	}
}
