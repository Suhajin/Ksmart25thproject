package com.cafe24.suhajin07.Action;

public class Action {
	private int actionCode;
	private int detailGoalCode; 
	private int memberCode; 
	private int midGoalCode; 
	private String biggestGoalCode; 
	private String goalTotalCode; 
	private int managerCode;
	private String studyCode;
	private String managerGradeCode;
	private String lisenceListCode;
	private String detailGoalList;
	private String actionResult;
	private String actionDate;
	private String actionStart;
	private String actionEnd;
	private String actionTime;
	private float actionRate;
	
	public int getActionCode() {
		return actionCode;
	}
	public void setActionCode(int actionCode) {
		this.actionCode = actionCode;
	}
	public int getDetailGoalCode() {
		return detailGoalCode;
	}
	public void setDetailGoalCode(int detailGoalCode) {
		this.detailGoalCode = detailGoalCode;
	}
	public int getMemberCode() {
		return memberCode;
	}
	public void setMemberCode(int memberCode) {
		this.memberCode = memberCode;
	}
	public int getMidGoalCode() {
		return midGoalCode;
	}
	public void setMidGoalCode(int midGoalCode) {
		this.midGoalCode = midGoalCode;
	}
	public String getBiggestGoalCode() {
		return biggestGoalCode;
	}
	public void setBiggestGoalCode(String biggestGoalCode) {
		this.biggestGoalCode = biggestGoalCode;
	}
	public String getGoalTotalCode() {
		return goalTotalCode;
	}
	public void setGoalTotalCode(String goalTotalCode) {
		this.goalTotalCode = goalTotalCode;
	}
	public int getManagerCode() {
		return managerCode;
	}
	public void setManagerCode(int managerCode) {
		this.managerCode = managerCode;
	}
	public String getStudyCode() {
		return studyCode;
	}
	public void setStudyCode(String studyCode) {
		this.studyCode = studyCode;
	}
	public String getManagerGradeCode() {
		return managerGradeCode;
	}
	public void setManagerGradeCode(String managerGradeCode) {
		this.managerGradeCode = managerGradeCode;
	}
	public String getLisenceListCode() {
		return lisenceListCode;
	}
	public void setLisenceListCode(String lisenceListCode) {
		this.lisenceListCode = lisenceListCode;
	}
	public String getDetailGoalList() {
		return detailGoalList;
	}
	public void setDetailGoalList(String detailGoalList) {
		this.detailGoalList = detailGoalList;
	}
	public String getActionResult() {
		return actionResult;
	}
	public void setActionResult(String actionResult) {
		this.actionResult = actionResult;
	}
	public String getActionDate() {
		return actionDate;
	}
	public void setActionDate(String actionDate) {
		this.actionDate = actionDate;
	}
	public String getActionStart() {
		return actionStart;
	}
	public void setActionStart(String actionStart) {
		this.actionStart = actionStart;
	}
	public String getActionEnd() {
		return actionEnd;
	}
	public void setActionEnd(String actionEnd) {
		this.actionEnd = actionEnd;
	}
	public String getActionTime() {
		return actionTime;
	}
	public void setActionTime(String actionTime) {
		this.actionTime = actionTime;
	}
	public float getActionRate() {
		return actionRate;
	}
	public void setActionRate(float actionRate) {
		this.actionRate = actionRate;
	}
	
	@Override
	public String toString() {
		return "Action [actionCode=" + actionCode + ", detailGoalCode=" + detailGoalCode + ", memberCode=" + memberCode
				+ ", midGoalCode=" + midGoalCode + ", biggestGoalCode=" + biggestGoalCode + ", goalTotalCode="
				+ goalTotalCode + ", managerCode=" + managerCode + ", studyCode=" + studyCode + ", managerGradeCode="
				+ managerGradeCode + ", lisenceListCode=" + lisenceListCode + ", detailGoalList=" + detailGoalList
				+ ", actionResult=" + actionResult + ", actionDate=" + actionDate + ", actionStart=" + actionStart
				+ ", actionEnd=" + actionEnd + ", actionTime=" + actionTime + ", actionRate=" + actionRate + "]";
	}
	
	
	
	
	
	
}
