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
	
	
	public void insertManager(Master master) {
		System.out.println("Career Insert 성공");
		sql.insert(NS+"insertManager", master);
		sql.insert(NS+"insertManagerGrade", master);
	}

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
	public List<Master> MagerGrade1List(){
		System.out.println("총괄매니저 List");
		return sql.selectList(NS+"managerGradeList_1");
	}

	public List<Master> MagerGrade2List(){
		System.out.println("담당 실장 List");
		return sql.selectList(NS+"managerGradeList_2");
	}

	public List<Master> MagerGrade3List(){
		System.out.println("담당 부실장 List");
		return sql.selectList(NS+"managerGradeList_3");
	}

	public List<Master> MagerGrade4List(){
		System.out.println("담당 매니저 List");
		return sql.selectList(NS+"managerGradeList_4");
	}

	public List<Master> MagerGrade5List(){
		System.out.println("수습 매니저 List");
		return sql.selectList(NS+"managerGradeList_5");
	}
	
	public Master managerselectone(int managerCode) {
		System.out.println("managerCode출력 :: masterdao " + managerCode);
		return sql.selectOne(NS+"managerselectOne", managerCode);
	}
	
	public void managerGardeUpdate(Master master) {
		System.out.println("manager 업데이트  :: " + master);
		sql.update(NS+"managerGradeupdate", master);
	}
	public void managerdelete(Master master) {
		System.out.println("manager 삭제");
		sql.delete(NS+"ManagerDelete", master);
	}
}
