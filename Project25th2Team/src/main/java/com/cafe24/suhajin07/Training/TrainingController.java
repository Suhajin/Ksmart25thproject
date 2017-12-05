package com.cafe24.suhajin07.Training;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
}
