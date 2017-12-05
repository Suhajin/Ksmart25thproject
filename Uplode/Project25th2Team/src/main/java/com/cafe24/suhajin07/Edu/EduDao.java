package com.cafe24.suhajin07.Edu;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.suhajin07.Complete.Complete;
import com.cafe24.suhajin07.Edu.Edu;



@Repository
public class EduDao {
	
	@Autowired
	SqlSessionTemplate sst;
	
	private final String NS = "com.cafe24.suhajin07.Edu.EduMapper.";
	
		//학력등록 처리
		public void insertEdu(Edu edu) {
			System.out.println("EduDao 성공");
			System.out.println(edu);
			sst.insert(NS+"insertEdu", edu);
		}
		
		public List<Edu> OneEduList(String memberId){
			System.out.println("One EduList성공");
			return sst.selectList(NS+"EduListOne", memberId);
		}
	
		//id값을 받아서 list로 출력
		public List<Edu> eduList(String memberId) {
			System.out.println("EduAllList <--EduDao.java");
			return sst.selectList(NS+"eduList",memberId);
		}
		
		//edu 전체 리스트 출력
		public List<Edu> eduAllList() {
			System.out.println("eduAllList <--EduaDao.java");
			return sst.selectList(NS+"eduAllList");
			
		}
		
		//edu 수정폼 출력
		public Edu eduUpdateForm(int eduCode) {
			System.out.println("eduUpdateForm <--EduDao.java");
			return sst.selectOne(NS+"eduOneList",eduCode);
		}
		
		//edu 수정처리
		public void updateEdu(Edu edu) {
			System.out.println("eduUpdate <--EduDao.java");
			sst.update(NS+"eduUpdate", edu);
		}
		
		//edu 삭제처리
		public void deleteEdu(Edu edu) {
			System.out.println("deleteEdu <-- EduDao.java");
			sst.delete(NS+"eduDelete",edu);
		}
	
}
