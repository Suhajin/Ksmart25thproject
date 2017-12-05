<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.sql.Connection"%>
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

<!-- <style type="text/css" media="screen">
	
	#table {
		width: 1000px;
	}
	</style> -->
	<style type="text/css" media="print">
	#wrap {
		background: url(none) repeat-x 0 0 !important;
	}
	
	#container {
		width: 900px;
		background: url(none) repeat-x 0 0 !important;
	}

</style>
</head>
<body>
	<div class="content" id="content">
	
			<div class="section_top_area">
				<h4>대분류 목표 카테고리</h4>
			
				<div class="sec_top_btn">
					<a href="/InsertGoalForm" class="btn_add">추가</a>
					<a href="#" class="btn_del">삭제</a>
				</div>
			</div>
			<table class="list_tbl_01 mb70" id="table" summary="대분류 목표 카테고리">
				<caption>대분류 목표 카테고리</caption>
				<colgroup>
					<!-- 체크박스 -->
					<col style="width: 2%" />
					<!-- 아이디 -->
					<col style="width: 10%" />
					<!-- 이름 -->
					<col style="width: 10%" />
					<!-- 대분류 목표명 -->
					<col style="width: 10%" />
					<!--  목표명 -->
					<col style="width: 10%" />
					<!-- 최종목표 시작일 -->
					<col style="width: 13%" />
					<!-- 최종목표 종료일 -->
					<col style="width: 13%" />
					<!-- 총 목표 일수 -->
					<col style="width: 10%" />
					<!-- 총 투자시간 -->
					<col style="width: 10%" />
					<!-- 전체예산 -->
					<col style="width: 10%" />
					<!-- 메모 -->
					<col style="width: 10%" />
				</colgroup>
				<thead>
					<tr class="first" align = "center">
						<th scope="col"><input type="checkbox"
							name="checkAll4skillCareer" id="checkAll4skillCareer"
							onclick="onCheckAll4skillCareer()" /></th>
						<th scope="col">아이디</th>
						<th scope="col">이름</th>
						<th scope="col">대분류 목표명</th>
						<th scope="col">목표명</th>
						<th scope="col">최종목표 시작일</th>
						<th scope="col">최종목표 종료일</th>
						<th scope="col">총 목표 일수</th>
						<th scope="col">총 투자시간</th>
						<th scope="col">전체예산</th>
						<th scope="col">메모</th>
					</tr>
				</thead>
				<tbody id="skillCareerLayer">
					<c:forEach var="FinalGoal" items="${listFinalGoal}">
						<tr>
							<td scope="col"><input type="checkbox" name="scholarNo"
								id="checkAll4skillCareer" onclick="onCheckAll4skillCareer()" /></td>
							<td>${FinalGoal.memberId}</td>
							<td>${FinalGoal.memberName}</td>
							<td>${FinalGoal.biggestGoalName}</td>
							<td>${FinalGoal.finalGoalName}</td>
							<td>${FinalGoal.finalGoalStart}</td>
							<td>${FinalGoal.finalGoalEnd}</td>
							<td>${FinalGoal.finalGoalDays}</td>
							<td>${FinalGoal.finalGoalTotalTime}</td>
							<td>${FinalGoal.finalGoalTotalBudget}</td>
							<td>${FinalGoal.finalGoalNote}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</body>
</html>
