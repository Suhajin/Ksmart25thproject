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

		// 입력처리
		public void insertCareer(Career career) {
			System.out.println("Career Insert 성공");
			sql.insert(NS+"insertCareer", career);
		}
		
		// 리스트
		public List<Career> selectcareerList(){
			System.out.println("Creer List 성공");
			return sql.selectList(NS+"CareerList");
		}
		
		// 1사람에 대한 리스트
		public List<Career> OneCareerList(String memberId){
			System.out.println("One CareerList성공");
			return sql.selectList(NS+"CareerListOne", memberId);
		}
		// 수정폼열기(객체1개)
		public Career careerselectone(int careerCode) {
			System.out.println("career onelist 성공");
			System.out.println(careerCode);
			return sql.selectOne(NS+"CareerSelectOne", careerCode);
		}
		
		// 수정처리
		public void UpdateCareer(Career career) {
			System.out.println("Career UPdate Dao 성공");
			sql.update(NS+"CareerUpdate", career);
		}
		
		// 삭제처리
		public void DeleteCareer(Career career) {
			System.out.println("Career Delete Dao 성공");
			sql.delete(NS+"CareerDelete",career);
		}
}
