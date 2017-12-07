package com.cafe24.suhajin07.Evaluation;

public class Evaluation {
	private int evaluationCode;
	private int managerCode;
	private int memberCode;
	private String managerGradeCode;	
	private String evaluationStart;
	private String evaluationEnd;
	private String evaluation1;
	private String evaluation2;
	private String evaluation3;
	private String evaluation4;
	private String evaluationDay;
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
	public int getMemberCode() {
		return memberCode;
	}
	public void setMemberCode(int memberCode) {
		this.memberCode = memberCode;
	}
	public String getManagerGradeCode() {
		return managerGradeCode;
	}
	public void setManagerGradeCode(String managerGradeCode) {
		this.managerGradeCode = managerGradeCode;
	}
	public String getEvaluationStart() {
		return evaluationStart;
	}
	public void setEvaluationStart(String evaluationStart) {
		this.evaluationStart = evaluationStart;
	}
	public String getEvaluationEnd() {
		return evaluationEnd;
	}
	public void setEvaluationEnd(String evaluationEnd) {
		this.evaluationEnd = evaluationEnd;
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
	public String getEvaluationDay() {
		return evaluationDay;
	}
	public void setEvaluationDay(String evaluationDay) {
		this.evaluationDay = evaluationDay;
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
		return "Evaluation [evaluationCode=" + evaluationCode + ", managerCode=" + managerCode + ", memberCode="
				+ memberCode + ", managerGradeCode=" + managerGradeCode + ", evaluationStart=" + evaluationStart
				+ ", evaluationEnd=" + evaluationEnd + ", evaluation1=" + evaluation1 + ", evaluation2=" + evaluation2
				+ ", evaluation3=" + evaluation3 + ", evaluation4=" + evaluation4 + ", evaluationDay=" + evaluationDay
				+ ", evaluationGrade=" + evaluationGrade + ", evaluationMemo=" + evaluationMemo + "]";
	}
	
	
	
	
}
