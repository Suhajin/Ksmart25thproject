package com.cafe24.suhajin07.Training;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.suhajin07.Language.Language;
import com.cafe24.suhajin07.Member.Member;

@Controller
public class TrainingController {

	@Autowired
	TrainingService trainingService;
	
	@Autowired
	TrainingDao trainingDao;
	
	@RequestMapping(value = "/Training", method = RequestMethod.GET)
	public String Training() {
		System.out.println("Training_Insert 폼 요청 <--TrainingController");
		return "Career_Training/Training_Insert";
	}
	
	@RequestMapping(value = "/addTraining", method = RequestMethod.POST)
	public String addTraining(Training training) {
		System.out.println(training + "CareerController addTraining");
		
		trainingService.addTraining(training);
		
		return "layout/Career";
	}
	@RequestMapping(value = "/TrainingList", method = RequestMethod.GET)
	public String TrainingList(Model model) {
		System.out.println("Training 전체리스트");
		List<Training> list = trainingDao.selectTrainingList();
		model.addAttribute("list", list);
		return "Career_Training/Training_List";
	}
	
	//연수봉사 수정폼으로 이동
	@RequestMapping(value = "/TrainingUpdateOne", method = RequestMethod.GET)
	public String trainingUpdateForm(Model model, @RequestParam("trainingCode") int trainingCode) {
		model.addAttribute("training", trainingDao.trainingUpdateForm(trainingCode));
		return "Career_Training/Training_Update";
		
	}
	
	//연수봉사 수정처리
	@RequestMapping(value="/UpdateTraining", method = RequestMethod.POST)
	public String updateTraining(HttpSession session, Training training) {
		trainingDao.updateTraining(training);
		return "redirect:/MemberCareerList?memberId="+((Member)session.getAttribute("Member")).getMemberId();
		
	}
	
	//연수봉사 삭제처리
	@RequestMapping(value="/TrainingDelete", method = RequestMethod.GET)
	public String deleteTraining(HttpSession session, Training training) {
		trainingDao.deleteTraining(training);
		return "redirect:/MemberCareerList?memberId="+((Member)session.getAttribute("Member")).getMemberId();
		
	}
}
