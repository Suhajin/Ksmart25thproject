package com.cafe24.suhajin07.License;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
		List<License> list = licenseDao.selectLicenseList();
		model.addAttribute("list", list);
		return "Career_License/License_List";
	}
}
