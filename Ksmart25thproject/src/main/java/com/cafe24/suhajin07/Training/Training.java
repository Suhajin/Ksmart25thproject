package com.cafe24.suhajin07.Training;

public class Training {

	private String memberId;
	private String memberName;
	private String trainingCode;
	private String memberCode;
	private String trainingPeriod;
	private String trainingStart;
	private String trainingEnd;
	private String trainingNation;
	private String trainingDetail;
	private String trainingDate;
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
	public String getTrainingCode() {
		return trainingCode;
	}
	public void setTrainingCode(String trainingCode) {
		this.trainingCode = trainingCode;
	}
	public String getMemberCode() {
		return memberCode;
	}
	public void setMemberCode(String memberCode) {
		this.memberCode = memberCode;
	}
	public String getTrainingPeriod() {
		return trainingPeriod;
	}
	public void setTrainingPeriod(String trainingPeriod) {
		this.trainingPeriod = trainingPeriod;
	}
	public String getTrainingStart() {
		return trainingStart;
	}
	public void setTrainingStart(String trainingStart) {
		this.trainingStart = trainingStart;
	}
	public String getTrainingEnd() {
		return trainingEnd;
	}
	public void setTrainingEnd(String trainingEnd) {
		this.trainingEnd = trainingEnd;
	}
	public String getTrainingNation() {
		return trainingNation;
	}
	public void setTrainingNation(String trainingNation) {
		this.trainingNation = trainingNation;
	}
	public String getTrainingDetail() {
		return trainingDetail;
	}
	public void setTrainingDetail(String trainingDetail) {
		this.trainingDetail = trainingDetail;
	}
	public String getTrainingDate() {
		return trainingDate;
	}
	public void setTrainingDate(String trainingDate) {
		this.trainingDate = trainingDate;
	}
	@Override
	public String toString() {
		return "Training [memberId=" + memberId + ", memberName=" + memberName + ", trainingCode=" + trainingCode
				+ ", memberCode=" + memberCode + ", trainingPeriod=" + trainingPeriod + ", trainingStart="
				+ trainingStart + ", trainingEnd=" + trainingEnd + ", trainingNation=" + trainingNation
				+ ", trainingDetail=" + trainingDetail + ", trainingDate=" + trainingDate + "]";
	}
	
	
	
}
