package com.cafe24.suhajin07.Complete;

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
public class CompleteController {

	@Autowired
	CompleteService completeService;
	
	@Autowired
	CompleteDao completeDao;

	@RequestMapping(value = "/Complete", method = RequestMethod.GET)
	public String Complete() {
		System.out.println("Complete_Insert 폼 요청 <-- CompleteController");
		return "Career_Complete/Complete_Insert";
	}

	@RequestMapping(value = "/addComplete", method = RequestMethod.POST)
	public String addComplete(Complete complete) {
		System.out.println(complete + "CompleteController addComplete");

		completeService.addComplete(complete);

		return "layout/Career";
	}

	@RequestMapping(value = "/CompleteList", method = RequestMethod.GET)
	public String CompleteList(Model model) {
		System.out.println("Complete 전체리스트");
		List<Complete> list = completeDao.selectCompleteList();
		model.addAttribute("list",completeDao.selectCompleteList());
		return "Career_Complete/Complete_List";
	}
	
	//수료부분 수정폼 이동
	@RequestMapping(value="/CompleteUpdateOne", method =RequestMethod.GET)
	public String completeUpdateForm(Model model, @RequestParam("complitionCode") int complitionCode) {
		System.out.println("completeUpdateForm 성공");
		model.addAttribute("complete", completeDao.completeUpdateForm(complitionCode));
		return "Career_Complete/Complete_Update";
	}
	
	//수료부분 수정처리
	@RequestMapping(value="/UpdateComplete", method = RequestMethod.POST)
	public String completeUpdate(HttpSession session, Complete complete) {
		completeDao.completeUpdate(complete);
		return "redirect:/MemberCareerList?memberId="+((Member)session.getAttribute("Member")).getMemberId();
		
	}
	
	//수료부분 삭제처리
	@RequestMapping(value="/CompleteDelete", method = RequestMethod.GET)
	public String completeDelete(HttpSession session, Complete complete) {
		completeDao.completeDelete(complete);
		return "redirect:/MemberCareerList?memberId="+((Member)session.getAttribute("Member")).getMemberId();
		
	}
}
