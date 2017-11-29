package com.cafe24.suhajin07.License;

public class License {

	
	private String licenseCode;
	private String memberId;
	private String memberName;
	private String memberCode;
	private String lisenceListCode;
	private String licenseAcquire;
	private String licenseNumber;
	private String licenseOrgan;
	private String licenseFile;
	private String licenseApproval;
	private String licenseDate;
	public String getLicenseCode() {
		return licenseCode;
	}
	public void setLicenseCode(String licenseCode) {
		this.licenseCode = licenseCode;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberCode() {
		return memberCode;
	}
	public void setMemberCode(String memberCode) {
		this.memberCode = memberCode;
	}
	public String getLisenceListCode() {
		return lisenceListCode;
	}
	public void setLisenceListCode(String lisenceListCode) {
		this.lisenceListCode = lisenceListCode;
	}
	public String getLicenseAcquire() {
		return licenseAcquire;
	}
	public void setLicenseAcquire(String licenseAcquire) {
		this.licenseAcquire = licenseAcquire;
	}
	public String getLicenseNumber() {
		return licenseNumber;
	}
	public void setLicenseNumber(String licenseNumber) {
		this.licenseNumber = licenseNumber;
	}
	public String getLicenseOrgan() {
		return licenseOrgan;
	}
	public void setLicenseOrgan(String licenseOrgan) {
		this.licenseOrgan = licenseOrgan;
	}
	public String getLicenseFile() {
		return licenseFile;
	}
	public void setLicenseFile(String licenseFile) {
		this.licenseFile = licenseFile;
	}
	public String getLicenseApproval() {
		return licenseApproval;
	}
	public void setLicenseApproval(String licenseApproval) {
		this.licenseApproval = licenseApproval;
	}
	public String getLicenseDate() {
		return licenseDate;
	}
	public void setLicenseDate(String licenseDate) {
		this.licenseDate = licenseDate;
	}
	@Override
	public String toString() {
		return "License [licenseCode=" + licenseCode + ", memberId=" + memberId + ", memberName=" + memberName
				+ ", memberCode=" + memberCode + ", lisenceListCode=" + lisenceListCode + ", licenseAcquire="
				+ licenseAcquire + ", licenseNumber=" + licenseNumber + ", licenseOrgan=" + licenseOrgan
				+ ", licenseFile=" + licenseFile + ", licenseApproval=" + licenseApproval + ", licenseDate="
				+ licenseDate + "]";
	}
	
}
