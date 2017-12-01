package com.cafe24.suhajin07.Language;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe24.suhajin07.Career.Career;

@Repository
public class LanguageDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	private final String NS = "com.cafe24.suhajin07.Language.LanguageMapper.";
	
	public void insertLanguage(Language language) {
		System.out.println("LanguageDao 성공");
		System.out.println(language);
		sqlSessionTemplate.insert(NS+"insertLanguage", language);
	}
	
	public List<Language> selectLanguageList() {
		System.out.println("LanguageList 성공");
		return sqlSessionTemplate.selectList(NS+"LanguageList");
	}
	// 1사람에 대한 리스트
	public List<Language> OneLanguageList(String memberId){
		System.out.println("One CareerList성공");
		return sqlSessionTemplate.selectList(NS+"languageListOne", memberId);
	}
}
