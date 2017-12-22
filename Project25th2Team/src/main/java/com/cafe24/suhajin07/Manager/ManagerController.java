package com.cafe24.suhajin07.Manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ManagerController {

	@Autowired
	ManagerDao managerdao;

	@RequestMapping(value = "/ManagerBonus", method = RequestMethod.GET)
	public String ManagerBonusList(Model model) {
		System.out.println("COntroller ++ ManagerBonusList 완성");
		model.addAttribute("ManagerEvaluationList", managerdao.managerEvaluationList());

		System.out.println("Controller + ManagerEvaluationList 완성");
		System.out.println(model);
		return "Manager/Manager_Bonus_List";
	}

	// 매니저 임금 페이지
	@RequestMapping(value = "/MasterManagerSalay", method = RequestMethod.GET)
	public String MasterManagerSalay() {

		return "Manager/Manager_Salay_List";
	}

	// 매니저 인센티브 등록 화면으로 연동
	@RequestMapping(value = "/ManagerInsentiveInsert", method = RequestMethod.GET)
	public String ManagerInsevtive() {

		return "Manager/Manager_Incentive_Insert";
	}

	// 개인 매니저가 담당하고 있는 개인 회원 리스트 보여지는 화면
	@RequestMapping(value = "/MemberManagement", method = RequestMethod.GET)
	public String MemberManagement() {

		return "Manager/MemberManagement_List";
	}

	// 개인 매니저가 담당하고 있는 개인 회원 스케줄 리스트 보여지는 화면
	@RequestMapping(value = "/ScheduleManagement", method = RequestMethod.GET)
	public String ScheduleManagement() {

		return "Manager/ScheduleManagement_List";
	}

	// 개인 매니저의 개인 정보 조회 / 수정할 수 있는 화면
	@RequestMapping(value = "/ManagerPage", method = RequestMethod.GET)
	public String ManagerPage() {

		return "Manager/Manager_Page";
	}

	// 개인 매니저의 월별 실적내역 확인 가능한 화면
	@RequestMapping(value = "/ManagerInsentive", method = RequestMethod.GET)
	public String ManagerInsentive() {

		return "Manager/Manager_Insentive_List";
	}

	// 개인 매니저의 월별 상벌상세내역 볼 수 있는 부분(컴플레인 포함)
	@RequestMapping(value = "/Managercomplain", method = RequestMethod.GET)
	public String Managercomplain() {

		return "Manager/Manager_complain_List";
	}

	// 개인 매니저의 월별 급여 내역 리스트
	@RequestMapping(value = "/ManagerSalay", method = RequestMethod.GET)
	public String ManagerSalay() {

		return "Manager/Manager_MySalay_List";
	}
	
}
