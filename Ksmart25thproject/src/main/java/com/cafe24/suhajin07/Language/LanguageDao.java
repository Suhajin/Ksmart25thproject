package com.cafe24.suhajin07.Language;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
}
