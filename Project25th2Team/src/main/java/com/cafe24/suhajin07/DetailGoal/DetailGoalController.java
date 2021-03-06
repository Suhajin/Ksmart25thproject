package com.cafe24.suhajin07.DetailGoal;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
/*import org.springframework.web.servlet.ModelAndView;*/

import com.cafe24.suhajin07.Member.Member;

@Controller
public class DetailGoalController {
	
	@Autowired
	DetailGoalService dgService;
	@Autowired
	DetailGoalDao dgDao;
	
	//세부목표 삭제
	@RequestMapping(value="/DeleteDetailGoal", method=RequestMethod.GET)
	public String DeleteDetailGoal(Model model, @RequestParam("detailGoalCode")int detailGoalCode, HttpSession session) {
	System.out.println("세부목표 삭제");
	System.out.println("detailGoalCode");
	Member member = (Member) session.getAttribute("Member");
	dgService.deleteDetailGoal(detailGoalCode);
	model.addAttribute("memberId", member.getMemberId());
	return "redirect:/DetailGoalList";
}
	/*	public ModelAndView DeleteDetailGoal(@RequestParam Map<String,Object>map) {
		String a = Integer.parseInt(detailGoalCode);	
		ModelAndView mav=new ModelAndView();
			System.out.println(map.get("delSeqNo"));
			mav.addAllObjects(dgService.deleteDetailGoal(map));
			mav.setViewName("JSON");
			return null;
	}*/

	

	//세부목표 수정 Action
	@RequestMapping(value="/UpdateActionDetailGoal", method=RequestMethod.POST)
	public String UpdateActionDetailGoal(Model model, DetailGoal dg, HttpSession session) {
		System.out.println("세부목표 수정 Action");
		System.out.println(dg);
		Member member = (Member) session.getAttribute("Member");
		dgService.updateActionDetailGoal(dg);
		model.addAttribute("memberId",member.getMemberId());
		return "redirect:/DetailGoalList";
	}
	
	//세부목표 수정 폼 UpdateDetailGoalForm
	@RequestMapping(value="/UpdateDetailGoal", method=RequestMethod.GET)
	public String UpdateDetailGoal(Model model, @RequestParam("detailGoalCode") int detailGoalCode) {
		System.out.println("수정폼 요청");
		System.out.println(detailGoalCode);
		List<DetailGoal> list=dgService.updateDetailGoal(detailGoalCode);
		model.addAttribute("listDetailGoal",list);
		return "Detail_Goal/DetailGoal_Update_Form";
	}
	
	// Master,Manager 세부목표 수정 폼
	
	
	@RequestMapping(value="/detailUpgrade", method=RequestMethod.GET)
	public String detailUpgrade() {
		return "Detail_Goal/DetailGoalMember_Update_Form";
	}
	
	//세부목표 리스트
	@RequestMapping(value="/DetailGoalList", method=RequestMethod.GET)
	public String DetailGoal(Model md, @RequestParam("memberId") String memberId) {
		System.out.println("세부목표 in 목표설정페이지");
		System.out.println(memberId);
		List<DetailGoal> list = dgService.listDetailGoal(memberId);
		md.addAttribute("listDetailGoal", list);
		System.out.println(list);
		return "Detail_Goal/DetailGoal";
	}
	
	//세부목표 인서트 폼
		@RequestMapping(value="/InsertDetailGoalForm", method=RequestMethod.GET)
		public String MidGoalInsertForm(){
				System.out.println("InsertDetailGoalForm");
				return "Detail_Goal/DetailGoal_Insert_Form";
		}
	//세부목표 등록
	@RequestMapping(value="/AddDetailGoal", method=RequestMethod.POST)
	public String addDetailGoal(HttpSession ss, DetailGoal dg) {
		System.out.println("DetailGoalController 성공"+dg);
		dgService.addDetailGoal(dg);
		return "redirect:/DetailGoalList?memberId="+((Member)ss.getAttribute("Member")).getMemberId();		
		}
}

