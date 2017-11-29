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
		sqlSessionTemplate.insert(NS+"insertLicense", license);
	}
	public List<License> selectLicenseList() {
		System.out.println("LicenseList 성공");
		return sqlSessionTemplate.selectList(NS+"LicenseList");
	}
}
