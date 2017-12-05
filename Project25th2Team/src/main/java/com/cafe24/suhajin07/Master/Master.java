package com.cafe24.suhajin07.Master;

public class Master {
	
	private int memberCode;
	private String memberId;
	private String memberPw;
	private String memberName;
	private String memberPhone;
	private String memberEmail;
	private String memberPostNum;
	private String memberAddress;
	private String memberDetailAddress;
	private String memberGrade;
	private String memberDate;
	
	public Master(){
		super();
	}
	
	public Master(int memberCode, String memberId, String memberPw,
			String memberName, String memberPhone, String memberEmail, String memberPostNum
			, String memberAddress, String memberDetailAddress, String memberGrade, String memberDate ) {
		super();
		this.memberCode = memberCode;
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.memberName = memberName;
		this.memberPhone = memberPhone;
		this.memberEmail = memberEmail;
		this.memberPostNum = memberPostNum;
		this.memberAddress = memberAddress;
		this.memberDetailAddress = memberDetailAddress;
		this.memberGrade = memberGrade;
		this.memberDate = memberDate;
	}
	
	
	
	public int getMemberCode() {
		return memberCode;
	}
	public void setMemberCode(int memberCode) {
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
	public String getMemberDate() {
		return memberDate;
	}
	public void setMemberDate(String memberDate) {
		this.memberDate = memberDate;
	}
	@Override
	public String toString() {
		return "Master [memberCode=" + memberCode + ", memberId=" + memberId + ", memberPw=" + memberPw
				+ ", memberName=" + memberName + ", memberPhone=" + memberPhone + ", memberEmail=" + memberEmail
				+ ", memberPostNum=" + memberPostNum + ", memberAddress=" + memberAddress + ", memberDetailAddress="
				+ memberDetailAddress + ", memberGrade=" + memberGrade + ", memberDate=" + memberDate + "]";
	}
	
	
	
	
	

}
