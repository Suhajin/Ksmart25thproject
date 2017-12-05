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

	// 전체리스트(회원)
	public List<Master> AllMemberList() {
		System.out.println(" All MemberList 성공");
		return sql.selectList(NS + "memberAllList");
	}
	
	// 전체리스트(매니저)
	public List<Master> AllManagerList(){
		System.out.println("All ManagerList 성공");
		return sql.selectList(NS+"managerAllList");
				
	}

}
