package com.cafe24.suhajin07.Language;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LanguageController {

	@Autowired
	LanguageService languageService;
	
	@Autowired
	LanguageDao languagedao;
	
	@RequestMapping(value = "/Language", method = RequestMethod.GET)
	public String Language() {
		System.out.println("Language_Insert 폼 요청 <-- LanguageController");
		return "Career_Language/Language_Insert";
	}
	
	@RequestMapping(value = "/addLanguage", method = RequestMethod.POST)
	public String addLanguage(Language language) {
		System.out.println(language + "CareerController addLanguage");
		
		languageService.addLanguage(language);
		
		return "layout/Career";
	}
	@RequestMapping(value = "/LanguageList", method = RequestMethod.GET)
	public String LanguageList(Model model) {
		System.out.println("Language 전체리스트");
		List<Language> Language = languagedao.selectLanguageList();
		model.addAttribute("Language", Language);
		return "Career_Language/Language_List";
	}
}
