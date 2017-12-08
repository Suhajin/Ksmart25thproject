package com.cafe24.suhajin07.Edu;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe24.suhajin07.Edu.Edu;
import com.cafe24.suhajin07.Edu.EduService;
import com.cafe24.suhajin07.Member.Member;

@Controller
public class EduController {
	
	@Autowired
	EduService eduService;
	
	@Autowired
	EduDao eduDao;
	
	/*//마이페이지 버튼 클릭시 Id값을 받아 DB에 입력된 eduList출력
	@RequestMapping(value="", method=RequestMethod.GET)
	public String eduList(Model model, @RequestParam("memberId") String memberId) {
		System.out.println("eudList 출력요청");
		model.addAttribute("eduList", eduDao.eduList(memberId));
		return "layout/Career";
	}*/
	
	//학력 추가버튼 클릭시 Edu_Insert화면으로 이동
	@RequestMapping(value = "/edu", method = RequestMethod.GET)
	public String Edu() {
		System.out.println("Edu_Insert 폼 요청 <-- CareerController");
		return "Career_Edu/Edu_Insert";
	}
	
	//Edu_Insert화면에서 입력후 등록 -> Career화면으로 이동
	@RequestMapping(value = "/edu", method = RequestMethod.POST)
	public String addEdu(HttpSession session, Edu edu) {
		System.out.println(edu + "addEdu <-- EduController.java");
		
		eduService.addEdu(edu);
		
		return "redirect:/MyCareer?memberId="+((Member)session.getAttribute("Member")).getMemberId();
	}
	
	//전체리스트 버튼 클릭시 edu 전체리스트 출력
	@RequestMapping(value = "/eduList", method = RequestMethod.GET)
	public String eduAllList(Model model) {
		System.out.println(model + "eduAllList <-- EduController.java");
		model.addAttribute("eduAllList", eduDao.eduAllList());
		
		return "Career_Edu/Edu_List";
	}
	
	//edu UpdateForm으로 이동
	@RequestMapping(value = "/eduUpdateForm", method = RequestMethod.GET)
	public String eduUpdate(Model model, @RequestParam("eduCode") int eduCode) {
		System.out.println(model + "eduUpdate <-- EduController.java");
		model.addAttribute("eduUpdate", eduDao.eduUpdateForm(eduCode));
		return "Career_Edu/Edu_Update";
	}
	
	//edu 수정처리
	@RequestMapping(value = "/updateEdu", method = RequestMethod.POST)
	public String updateEdu(HttpSession session, Edu edu) {
		System.out.println("updateEdu <-- EduController.java");
		System.out.println(edu + "<--updateEdu");
		eduDao.updateEdu(edu);
		return "redirect:/MemberCareerList?memberId="+((Member)session.getAttribute("Member")).getMemberId();
	}
	
	//edu 삭제처리
	@RequestMapping(value = "/eduDelete", method = RequestMethod.GET)
	public String deleteEdu(HttpSession session, Edu edu) {
		System.out.println("deleteEdu <-- EduController.java");
		eduDao.deleteEdu(edu);
		return "redirect:/MemberCareerList?memberId="+((Member)session.getAttribute("Member")).getMemberId();
	}
}