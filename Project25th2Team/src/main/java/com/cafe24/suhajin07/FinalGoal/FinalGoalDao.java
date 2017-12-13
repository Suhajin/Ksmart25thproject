package com.cafe24.suhajin07.FinalGoal;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class FinalGoalDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	private final String NS = "com.cafe24.suhajin07.FinalGoal.FinalGoalMapper.";
	
	//중간목표 입력폼
	public List<FinalGoal> insertFormMidGoal(String memberId) {
		System.out.println("insertFormMidGoal Dao 성공");
		System.out.println(memberId);
		List<FinalGoal> list =  sqlSessionTemplate.selectList(NS+"selectMidGoalInsert",memberId);
		System.out.println(list);
		return list;
	}
		
	// 최종목표 수정
	public void updateFinalGoal(FinalGoal fg) {
		System.out.println("updateFinalGoal Dao 성공");
		int row = sqlSessionTemplate.update(NS + "updateFinalGoal", fg);
		System.out.println(row);
	}
	
	// 최종목표 리스트
	public List<FinalGoal> selectFinalGoalList(String memberId) {
		System.out.println("selectFinalGoalList Dao 성공");
		System.out.println(memberId);
		return sqlSessionTemplate.selectList(NS + "selectFinalGoalList", memberId);
	}

	// 최종목표설정 등록되어있는지 확인
	public int checkFinalGoal(int memberCode) {

		System.out.println(memberCode);
		System.out.println("checkFinalGoal Dao 성공" + memberCode);
		int row = sqlSessionTemplate.selectOne(NS + "selectFinalGoal", memberCode);
		System.out.println(row);
		return row;
	}

	// 최종목표 입력
	public void insertFinalGoal(FinalGoal fg) {
		System.out.println(fg);
		System.out.println("insertFinalGoal Dao 성공");
		sqlSessionTemplate.insert(NS + "insertFinalGoal", fg);
	}

}