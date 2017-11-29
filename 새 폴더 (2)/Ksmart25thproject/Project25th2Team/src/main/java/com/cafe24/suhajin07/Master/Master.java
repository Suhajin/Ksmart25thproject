package com.cafe24.suhajin07.Master;

public class Master {
	
	
	private int managerCode;
	private String memberCode;
	private String memberId;
	private String memberPw;
	private String memberName;
	private String memberPhone;
	private String memberEmail;
	private String memberPostNum;
	private String memberAddress;
	private String memberDetailAddress;
	private String memberGrade;
	private String managerGradeCode;
	private String managerName;
	private String managerDepartment;
	
	
	
	public int getManagerCode() {
		return managerCode;
	}
	public void setManagerCode(int managerCode) {
		this.managerCode = managerCode;
	}
	public String getMemberCode() {
		return memberCode;
	}
	public void setMemberCode(String memberCode) {
		this.memberCode = memberCode;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPw() {
		return memberPw;
	}
	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberPhone() {
		return memberPhone;
	}
	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberPostNum() {
		return memberPostNum;
	}
	public void setMemberPostNum(String memberPostNum) {
		this.memberPostNum = memberPostNum;
	}
	public String getMemberAddress() {
		return memberAddress;
	}
	public void setMemberAddress(String memberAddress) {
		this.memberAddress = memberAddress;
	}
	public String getMemberDetailAddress() {
		return memberDetailAddress;
	}
	public void setMemberDetailAddress(String memberDetailAddress) {
		this.memberDetailAddress = memberDetailAddress;
	}
	public String getMemberGrade() {
		return memberGrade;
	}
	public void setMemberGrade(String memberGrade) {
		this.memberGrade = memberGrade;
	}
	public String getManagerGradeCode() {
		return managerGradeCode;
	}
	public void setManagerGradeCode(String managerGradeCode) {
		this.managerGradeCode = managerGradeCode;
	}
	public String getManagerName() {
		return managerName;
	}
	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}
	public String getManagerDepartment() {
		return managerDepartment;
	}
	public void setManagerDepartment(String managerDepartment) {
		this.managerDepartment = managerDepartment;
	}
	@Override
	public String toString() {
		return "Master [managerCode=" + managerCode + ", memberCode=" + memberCode + ", memberId=" + memberId
				+ ", memberPw=" + memberPw + ", memberName=" + memberName + ", memberPhone=" + memberPhone
				+ ", memberEmail=" + memberEmail + ", memberPostNum=" + memberPostNum + ", memberAddress="
				+ memberAddress + ", memberDetailAddress=" + memberDetailAddress + ", memberGrade=" + memberGrade
				+ ", managerGradeCode=" + managerGradeCode + ", managerName=" + managerName + ", managerDepartment="
				+ managerDepartment + "]";
	}
	
	
	

}
