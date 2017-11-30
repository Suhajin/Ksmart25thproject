package com.cafe24.suhajin07.License;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LicenseDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	private final String NS = "com.cafe24.suhajin07.License.LicenseMapper.";
	
	public void insertLicense(License license) {
		System.out.println("LicenseDao 성공");
		System.out.println(license);
		sqlSessionTemplate.insert(NS + "insertLicense", license);
	}
	public List<License> selectLicenseList() {
		System.out.println("LicenseList 성공");
		return sqlSessionTemplate.selectList(NS + "LicenseList");
	}
	public List<License> OneLicenseList(String memberId) {
		System.out.println("OneLicenseList 성공");
		return sqlSessionTemplate.selectList(NS + "OneLicenseList", memberId);
	}
	public License LicenseSelectone(int licenseCode) {
		System.out.println("LicenseSelectone 성공");
		System.out.println(licenseCode);
		return sqlSessionTemplate.selectOne(NS + "LicenseSelectone", licenseCode);
	}
	public void UpdateLicense(License license) {
		System.out.println("UpdateLicense 성공");
		sqlSessionTemplate.update(NS + "UpdateLicense", license);
	}
	public void DeleteLicense(License license) {
		System.out.println("DeleteLicense 성공");
		sqlSessionTemplate.delete(NS + "DeleteLicense", license);
	}
}
