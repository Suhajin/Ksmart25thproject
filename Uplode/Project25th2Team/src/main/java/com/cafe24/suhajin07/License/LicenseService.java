package com.cafe24.suhajin07.License;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LicenseService {

	@Autowired
	LicenseDao licenseDao;
	
	public void addLicense(License license) {
		System.out.println("ServiceLicense" + license);
		licenseDao.insertLicense(license);
	}
}
