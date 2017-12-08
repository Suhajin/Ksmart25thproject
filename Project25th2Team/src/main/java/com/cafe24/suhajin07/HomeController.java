package com.cafe24.suhajin07;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "Team_Intro/Team_Intro";
	}
	@RequestMapping(value = "/Notice", method = RequestMethod.GET)
	public String Notice() {
		System.out.println("이것은  공지사항");
		return "Inform/Notice";
	}
	
	@RequestMapping(value = "/ProjectInporm", method = RequestMethod.GET)
	public String TeamImtro() {
		System.out.println("팀 소개로 이동");
		return "Team_Intro/Team_Intro";
	}

	@RequestMapping(value = "/Information", method = RequestMethod.GET)
	public String Information() {
		System.out.println("이것은  회사안내");
		return "Inform/Information";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String Home() {
		System.out.println("Homepage 메인으로 이동");
		return "home";
	}
	@RequestMapping(value = "/TeamMember", method = RequestMethod.GET)
	public String TeamMember() {
		System.out.println("Team멤버소개로 이동");
		return "Team_Intro/TeamMember";
	}
	@RequestMapping(value = "/TeamERD", method = RequestMethod.GET)
	public String TeamERD() {
		System.out.println("ERD소개 화면으로 이동");
		return "Team_Intro/TeamERD";
	}


}
