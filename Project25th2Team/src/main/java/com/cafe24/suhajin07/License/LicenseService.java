package com.cafe24.suhajin07.License;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LicenseService {

	@Autowired
	LicenseDao licenseDao;
	
	public void addLicense(License license) {
		System.out.println("ServiceaddLicense" + license);
		licenseDao.insertLicense(license);
	}
	public void UpdateLicense(License license) {
		System.out.println("ServiceUpdateLicense" + license);
		licenseDao.UpdateLicense(license);
	}
	public void DeleteLicense(License license) {
		System.out.println("ServiceDeleteLicense" + license);
		licenseDao.DeleteLicense(license);
	}
}
