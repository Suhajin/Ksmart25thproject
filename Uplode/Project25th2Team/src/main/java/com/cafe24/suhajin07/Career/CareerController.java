package com.cafe24.suhajin07.Career;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.suhajin07.Career.CareerDao;
import com.cafe24.suhajin07.Career.Career;
import com.cafe24.suhajin07.Career.CareerService;
import com.cafe24.suhajin07.Complete.CompleteDao;
import com.cafe24.suhajin07.Edu.EduDao;
import com.cafe24.suhajin07.Language.LanguageDao;
import com.cafe24.suhajin07.License.LicenseDao;
import com.cafe24.suhajin07.Training.TrainingDao;


@Controller
public class CareerController {

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
	
	// 메인(head)에서 등록버튼 누르면 넘어가기.
	@RequestMapping(value="/MyCareer", method=RequestMethod.GET)
	public String CareerInsert( Model model,Model model2, Model model3, Model model4, Model model5, Model model6, @RequestParam ("memberId") String memberId) {
		System.out.println("경력등록 Form 요청");
		model.addAttribute("listmember", careerdao.OneCareerList(memberId));
		model2.addAttribute("listcomplete", completedao.OneCompleteList(memberId) );
		model3.addAttribute("listedu", edudao.OneEduList(memberId));
		model4.addAttribute("listlicense", licensedao.LicenseListOne(memberId));
		model5.addAttribute("listlanguage", languagedao.OneLanguageList(memberId));
		model6.addAttribute("listtraining", trainingdao.OneTrainingList(memberId));
		return "layout/Career";
	}
	
	
	// 경력 입력 폽으로 넘어가기
	@RequestMapping(value="/CareerInsert", method=RequestMethod.GET)
	public String Career() {
		System.out.println("Career_InsertForm 요청");
		return "Career_Career/Career_Insert";
	}
	
	// 경력 입력 처리하기
	@RequestMapping(value="/addCareer", method=RequestMethod.POST)
	public String addCareer(Career career) {
		System.out.println("CareerController addCareer");
		
		careerservice.addCareer(career);
		
		return "home";	
	}	
		//CareerList
	@RequestMapping(value="/CareerList", method = RequestMethod.GET)
	public String CareerList(Model model){
		System.out.println("Career 전체리스트");
		List<Career> list = careerdao.selectcareerList();
		model.addAttribute("list", list);
		return "Career_Career/Career_List";
	}
	// 수정 화면으로 넘어가기
		@RequestMapping(value="/CareerUpdateOne", method=RequestMethod.GET)
		public String CareerUpdate(Model model, @RequestParam ("careerCode") int careerCode) {
			System.out.println("경력 수정화면 Controller");
			model.addAttribute("listone", careerdao.careerselectone(careerCode));
			return "Career_Career/Career_Update_Form";  //Career_Career/Career_Update_Form.jsp 로 이동 
		}
		
		// 수정처리하기
		
		@RequestMapping(value="/UpdateCareer", method=RequestMethod.POST)
		public String UpdateCareer(Career career) {
			System.out.println("UpdateCareer Controller");
			careerservice.UpdateCareer(career);
			return "redirect:/CareerList"; // /CareerList 의 서블렛이 실행
		}
		
		// 삭제처리하기
		@RequestMapping(value="/CareerDelete", method=RequestMethod.GET)
		public String DeleteCareer(Career career) {
			System.out.println("DeleteCareer Controller");
			careerservice.DeleteCareer(career);
			return "redirect:/CareerList"; 
		}
}
