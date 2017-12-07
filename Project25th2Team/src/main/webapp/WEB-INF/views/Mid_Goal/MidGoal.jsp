<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>목표설정</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/Career_common.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/Career_jquery-ui.css" />
<style type="text/css" media="screen">
	.printOnly {
		display: none;
	}
	</style>
	<style type="text/css" media="print">
	#wrap {
		background: url(none) repeat-x 0 0 !important;
	}
	
	#container {
		width: 500px;
		background: url(none) repeat-x 0 0 !important;
	}
	
	.noprint {
		display: none;
	}
</style>

</head>

<body>
	<div>
		<c:import url="/WEB-INF/views/layout/Head.jsp">
		</c:import>
	</div>
		<div class="content" id="content">
			<!-- 타이틀 영역 -->
		<div class="title_area">
			<h3>중간목표</h3>
			<h5>${Member.memberName}님의 세부목표를 상세하게 기입해주세요.</h5>
		</div>
		<br>
		<br>
		<br>
			<div class="section_top_area">
				
				<div class="sec_top_btn">
					<a href="/InsertMidGoalForm" class="btn_add">추가</a>
					<a href="#" class="btn_del">삭제</a>
				</div>
			</div>
			<table class="list_tbl_01 mb70" summary="중간목표 카테고리">
				<caption>중간목표 카테고리</caption>
				<colgroup>
					<!-- 체크박스 -->
					<col style="width: 2%" />
					<!--  중간목표명 -->
					<col style="width: 12%" />
					<!--  공부방법 -->
					<col style="width: 4%" />
					<!--  중간계획 -->
					<col style="width: 15%" />
					<!-- 중간목표 시작일 -->
					<col style="width: 6%" />
					<!-- 중간목표 종료일 -->
					<col style="width: 6%" />
					<!-- 중간목표예산 -->
					<col style="width: 5%" />
					<!-- 등록일자 -->
					<col style="width: 5%" />
				</colgroup>
				<thead>
					<tr class="first"  align="center">
						<th scope="col"><input type="checkbox"/></th>
						<th scope="col">중간목표명</th>
						<th scope="col">공부방법</th>
						<th scope="col">중간계획</th>
						<th scope="col">중간목표 시작일</th>
						<th scope="col">중간목표 종료일</th>
						<th scope="col">중간목표예산</th>
						<th scope="col">등록일자</th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach var="midGoal" items="${listMidGoal}">
						<tr>
							<td scope="col"><input type="checkbox" name="midGoalList"/></td>
							<td>${midGoal.midGoalName}</td>
							<td>${midGoal.studyMethod}</td>
							<td>${midGoal.midGoalPlan}</td>
							<td>${midGoal.midGoalStart}</td>
							<td>${midGoal.midGoalEnd}</td>
							<td>${midGoal.midGoalBudget}</td>
							<td>${midGoal.midGoalDate}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			</div>
	</body>
</html>
