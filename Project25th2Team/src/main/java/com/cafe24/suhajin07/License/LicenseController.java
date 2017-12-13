package com.cafe24.suhajin07.License;

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
public class LicenseController {

	@Autowired
	LicenseService licenseService;
	
	@Autowired
	LicenseDao licenseDao;
	
	@RequestMapping(value = "/License", method = RequestMethod.GET)
	public String License() {
		System.out.println("License_Insert 폼 요청 <--LicenseController");
		return "Career_License/License_Insert";
	}
	
	@RequestMapping(value = "/addLicense", method = RequestMethod.POST)
	public String addLicense(License license) {
		System.out.println(license + "CareerController addLicense");
		
		licenseService.addLicense(license);
		
		return "layout/Career";
	}
	@RequestMapping(value = "/LicenseList", method = RequestMethod.GET)
	public String LicenseList(Model model) {
		System.out.println("License 전체리스트");
		List<License> Licenselist = licenseDao.selectLicenseList();
		model.addAttribute("Licenselist", Licenselist);
		return "Career_License/License_List";
	}
	//자격증 수정폼으로 이동
	@RequestMapping(value = "/LicenseUpdateOne", method = RequestMethod.GET)
	public String LicenseUpdate(Model model, @RequestParam("licenseCode") int licenseCode) {
		System.out.println("자격증 수정화면 Controller");
		model.addAttribute("listone", licenseDao.LicenseSelectone(licenseCode));
		return "Career_License/License_Update_Form";
	}
	//자격증 수정 처리
	@RequestMapping(value = "/UpdateLicense", method = RequestMethod.POST)
	public String UpdateLicense(HttpSession session, License license) {
		System.out.println("UpdateLicense Controller");
		licenseService.UpdateLicense(license);
		return "redirect:/MemberCareerList?memberId="+((Member)session.getAttribute("Member")).getMemberId();
	}
	@RequestMapping(value = "/LicenseDelete", method = RequestMethod.GET)
	public String DeleteLicense(HttpSession session, License license) {
		System.out.println("DeleteLicense Controller");
		licenseService.DeleteLicense(license);
		return "redirect:/MemberCareerList?memberId="+((Member)session.getAttribute("Member")).getMemberId();
	}
}
