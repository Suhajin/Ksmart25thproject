package com.cafe24.suhajin07.Master;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.suhajin07.Career.CareerDao;
import com.cafe24.suhajin07.Career.CareerService;
import com.cafe24.suhajin07.Complete.CompleteDao;
import com.cafe24.suhajin07.Edu.EduDao;
import com.cafe24.suhajin07.Language.LanguageDao;
import com.cafe24.suhajin07.License.LicenseDao;
import com.cafe24.suhajin07.Master.MasterDao;
import com.cafe24.suhajin07.Member.MemberService;
import com.cafe24.suhajin07.Training.TrainingDao;

@Controller
public class MasterController {

	@Autowired
	MasterDao masterdao;

	@Autowired
	CareerService careerservice;

	@Autowired
	CareerDao careerdao;

	@Autowired
	CompleteDao completedao;

	@Autowired
	EduDao edudao;

	@Autowired
	LicenseDao licensedao;

	@Autowired
	LanguageDao languagedao;

	@Autowired
	TrainingDao trainingdao;
	@Autowired
	MemberService memberservice;

	// 마이페이지 - 내 경력보기
	@RequestMapping(value = "/MyCareer", method = RequestMethod.GET)
	public String CareerInsert(Model model, Model model2, Model model3, Model model4,
			Model model5, Model model6,
			@RequestParam("memberId") String memberId) {
		System.out.println("경력등록 Form 요청");
		model.addAttribute("listmember", careerdao.OneCareerList(memberId));
		model2.addAttribute("listcomplete", completedao.OneCompleteList(memberId));
		model3.addAttribute("listedu", edudao.OneEduList(memberId));
		model4.addAttribute("listlicense", licensedao.LicenseListOne(memberId));
		model5.addAttribute("listlanguage", languagedao.OneLanguageList(memberId));
		model6.addAttribute("listtraining", trainingdao.OneTrainingList(memberId));
		return "layout/Career";
	}

	// 멤버 전체 리스트
	@RequestMapping(value = "/MemberList", method = RequestMethod.GET)
	public String MemberList(Model model) throws Exception {
		System.out.println("controller memberList 요청");
		System.out.println("Career 전체리스트");
		List<Master> list = masterdao.AllMemberList();
		model.addAttribute("memberlist", list);

		return "Member/Member_List";

	}

	// 매니저 전체리스트 + 등급별 리스트
	@RequestMapping(value = "/ManagerList", method = RequestMethod.GET)
	public String ManagerList(Model model) throws Exception {
		System.out.println("controller memberList 요청");
		System.out.println("Career 전체리스트");
		List<Master> list = masterdao.AllManagerList();
		model.addAttribute("managerlist", list);
		model.addAttribute("ma1List", masterdao.MagerGrade1List());
		model.addAttribute("ma2List", masterdao.MagerGrade2List());
		model.addAttribute("ma3List", masterdao.MagerGrade3List());
		model.addAttribute("ma4List", masterdao.MagerGrade4List());
		model.addAttribute("ma5List", masterdao.MagerGrade5List());
		return "Manager/Manager_List";

	}

	// 멤버 수정
	@RequestMapping(value = "/MemberUpdate", method = RequestMethod.GET)
	public String MemberUpdate() {
		System.out.println("MemberUpdate Controller");

		return "Member/Member_Update";
	}

	// 개인 경력 전체리스트/ 경력별 리스트구현
	@RequestMapping(value = "/MemberCareerList", method = RequestMethod.GET)
	public String MemberCareerList(Model model) {
		System.out.println("Career 회원 전체리스트");
		model.addAttribute("completelist", completedao.selectCompleteList());
		model.addAttribute("CareerList", careerdao.selectcareerList());
		model.addAttribute("eduAllList", edudao.eduAllList());
		model.addAttribute("LanguageList", languagedao.selectLanguageList());
		model.addAttribute("LicenseList", licensedao.selectLicenseList());
		model.addAttribute("Trainingdao", trainingdao.selectTrainingList());
		return "Member/Member_Career_List";
	}

	// 매니저 등록 form
	@RequestMapping(value = "/ManagerInsert", method = RequestMethod.GET)
	public String ManagerInsert() {
		System.out.println("매니저 등록 Controller");

		return "Manager/Manager_InsertForm";
	}

	// 매니저 등록처리
	@RequestMapping(value = "/addmanager", method = RequestMethod.POST)
	public String addmanager(Master master) {
		System.out.println("ManagerController addmanager");
		System.out.println(master);

		masterdao.insertManager(master);

		return "redirect:/ManagerList";
	}

	// 수정화면 열어보기
	@RequestMapping(value = "/ManagerUpdate", method = RequestMethod.GET)
	public String selectoneManager(Model model, @RequestParam("managerCode") int managerCode) {
		System.out.println("selectoneManger Controller");
		model.addAttribute("managerupdatelist", masterdao.managerselectone(managerCode));

		return "Manager/Manager_UpdateForm";
	}

	// 매니저 수정처리
	@RequestMapping(value = "/UpdateManagerGrade", method = RequestMethod.POST)
	public String UpdateManagerGrade(Master master) {
		System.out.println("매니저 권한 수정 Controller");
		masterdao.managerGardeUpdate(master);
		return "redirect:/ManagerList";
	}

	// 매니저 삭제처리
	@RequestMapping(value = "/ManagerDelete", method = RequestMethod.GET)
	public String DeleteManger(Master master) {
		System.out.println("매니저 삭제 Controller");
		masterdao.managerdelete(master);
		return "redirect:/ManagerList";
	}

	// 멤버들 최종/중간/상세 목표컨설 리스트 목록 불러오기
	@RequestMapping(value = "/MemberGoalList", method = RequestMethod.GET)
	public String MemberGoalList(Model model) {
		System.out.println("MemberGoalList Controller");
		model.addAttribute("GoalList", masterdao.memberFinalGoalList());
		model.addAttribute("midGoalList", masterdao.membermidGoalList());
		model.addAttribute("detailgaolList", masterdao.memberdetailGoalList());
		return "Member/Member_Goal_List";
	}
}