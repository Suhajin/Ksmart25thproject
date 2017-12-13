package com.cafe24.suhajin07.Language;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.suhajin07.Member.Member;

@Controller
public class LanguageController {

	@Autowired
	LanguageService languageService;
	
	@Autowired
	LanguageDao languagedao;
	
	@RequestMapping(value = "/Language", method = RequestMethod.GET)
	public String Language() {
		System.out.println("Language_Insert 폼 요청 <-- LanguageController");
		return "Career_language/Language_Insert";
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
		model.addAttribute("Language", languagedao.selectLanguageList());
		return "Career_language/Language_List";
	}
	
	//언어 수정 폼으로 이동
	@RequestMapping(value = "/LanguageUpdateOne", method = RequestMethod.GET)
	public String languageUpdate(Model model, @RequestParam("languageCode") int languageCode) {
		System.out.println(model + "languageUpdate 성공");
		model.addAttribute("languageUpdate", languagedao.languageUpdateForm(languageCode));
		return "Career_language/Language_Update";
	}
	
	//언어 수정 처리
	@RequestMapping(value ="/updateLanguage", method = RequestMethod.POST)
	public String updateLanguage(HttpSession session, Language language) {
		System.out.println("updateLanguage 성공");
		languagedao.updateLanguage(language);
		return "redirect:/MemberCareerList?memberId="+((Member)session.getAttribute("Member")).getMemberId();
		
	}
	
	//언어 삭제처리
	@RequestMapping(value="/LanguageDelete" , method = RequestMethod.GET)
	public String deleteLanguage(HttpSession session, Language language) {
		languagedao.DeleteLanguage(language);
		return "redirect:/MemberCareerList?memberId="+((Member)session.getAttribute("Member")).getMemberId();
		
	}
}
