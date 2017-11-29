package com.cafe24.suhajin07.Language;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LanguageService {

	@Autowired
	LanguageDao languageDao;
	
	public void addLanguage(Language language) {
		System.out.println("ServiceLanguage" + language);
		languageDao.insertLanguage(language);
	}
}
