package com.cafe24.suhajin07.Master;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.suhajin07.Master.Master;

@Repository
public class MasterDao {
	
	@Autowired
	SqlSessionTemplate sql;
	
	@Autowired
	MasterService masterservice;

	private final int LINE_PER_PAGE = 10;
	private final String NS = "com.cafe24.suhajin07.Master.MasterMapper.";

	public List<Master> AllMemberList() {
		System.out.println(" All MemberList 성공");
		return sql.selectList(NS + "memberAllList");
	}

	public int selectTotalCount() {
		System.out.println("AllmemberCount 요청 성공");
		return sql.selectOne(NS + "AllMemberCount");
	}
	
	
	public int getLastPage() {
    	System.out.println("getLastPage 요청 성공");
        return (int)(Math.ceil((double)selectTotalCount()/LINE_PER_PAGE));
    }

	 public int countPaging(Criteria cri) throws Exception {

		 return sql.selectOne(NS + "memberListPaging", cri);
		 
		  }
	
        
		
	}


