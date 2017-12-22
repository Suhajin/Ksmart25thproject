package com.cafe24.suhajin07.Manager;

public class Manager {

	private int evaluationCode;
	private int managerCode;
	private int managerGradeCode;
	private int memberCode;
		
	private String managerName;
	private String gradeName;
	private String managerDepartment;
	private String memberName;
	private String evaluation1;
	private String evaluation2;
	private String evaluation3;
	private String evaluation4;
	private String evaluationGrade;
	private String evaluationMemo;
	public int getEvaluationCode() {
		return evaluationCode;
	}
	public void setEvaluationCode(int evaluationCode) {
		this.evaluationCode = evaluationCode;
	}
	public int getManagerCode() {
		return managerCode;
	}
	public void setManagerCode(int managerCode) {
		this.managerCode = managerCode;
	}
	public int getManagerGradeCode() {
		return managerGradeCode;
	}
	public void setManagerGradeCode(int managerGradeCode) {
		this.managerGradeCode = managerGradeCode;
	}
	public int getMemberCode() {
		return memberCode;
	}
	public void setMemberCode(int memberCode) {
		this.memberCode = memberCode;
	}
	public String getManagerName() {
		return managerName;
	}
	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}
	public String getGradeName() {
		return gradeName;
	}
	public void setGradeName(String gradeName) {
		this.gradeName = gradeName;
	}
	public String getManagerDepartment() {
		return managerDepartment;
	}
	public void setManagerDepartment(String managerDepartment) {
		this.managerDepartment = managerDepartment;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getEvaluation1() {
		return evaluation1;
	}
	public void setEvaluation1(String evaluation1) {
		this.evaluation1 = evaluation1;
	}
	public String getEvaluation2() {
		return evaluation2;
	}
	public void setEvaluation2(String evaluation2) {
		this.evaluation2 = evaluation2;
	}
	public String getEvaluation3() {
		return evaluation3;
	}
	public void setEvaluation3(String evaluation3) {
		this.evaluation3 = evaluation3;
	}
	public String getEvaluation4() {
		return evaluation4;
	}
	public void setEvaluation4(String evaluation4) {
		this.evaluation4 = evaluation4;
	}
	public String getEvaluationGrade() {
		return evaluationGrade;
	}
	public void setEvaluationGrade(String evaluationGrade) {
		this.evaluationGrade = evaluationGrade;
	}
	public String getEvaluationMemo() {
		return evaluationMemo;
	}
	public void setEvaluationMemo(String evaluationMemo) {
		this.evaluationMemo = evaluationMemo;
	}
	@Override
	public String toString() {
		return "Manager [evaluationCode=" + evaluationCode + ", managerCode=" + managerCode + ", managerGradeCode="
				+ managerGradeCode + ", memberCode=" + memberCode + ", managerName=" + managerName + ", gradeName="
				+ gradeName + ", managerDepartment=" + managerDepartment + ", memberName=" + memberName
				+ ", evaluation1=" + evaluation1 + ", evaluation2=" + evaluation2 + ", evaluation3=" + evaluation3
				+ ", evaluation4=" + evaluation4 + ", evaluationGrade=" + evaluationGrade + ", evaluationMemo="
				+ evaluationMemo + "]";
	}
	
	
	
	
 
}
