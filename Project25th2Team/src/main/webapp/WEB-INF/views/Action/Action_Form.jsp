<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>실천목표 등록</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/Career_common.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/Career_jquery_ui.css" />

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style type="text/css" media="screen">
.printOnly {
	display: none; .
	content {float: center;
	width: 1000px;
	margin: auto
}
}
</style>
<style type="text/css" media="print">
#wrap {
	background: url(none) repeat-x 0 0 !important;
}

#container {
	width: 1000px;
	background: url(none) repeat-x 0 0 !important;
}

.noprint {
	display: none;
}
</style>
</head>

<div>
	<c:import url="/WEB-INF/views/layout/Head.jsp">
	</c:import>
</div>
<br>

<body>
	<div class="content" id="content">

		<!-- 타이틀 영역 -->
		<div class="title_area">
			<h3>실천률 등록 확인</h3>
			<p>회원님의 상세목표에 대한 실천률을 입력해주세요.</p>
		</div>
		<br> <br> <br>

		<form>
			<input type="hidden" name="detailGoalCode" value=${Member.memberCode}>
			<input type="hidden" name="memberCode" value=${Member.memberCode}>
			<input type="hidden" name="midGoalCode" value=${Member.memberCode}>
			<input type="hidden" name="biggestGoalCode" value=${Member.memberCode}>
			<input type="hidden" name="goalTotalCode" value=${Member.memberCode}>
		</form>
		<br> <br>

		<form id="writeForm" name="writeForm" method="post" action="">
			<input type="hidden" name="callback" value="" /> <input
				type="hidden" name="key" value="142995715" />
			<!-- 최종학력 등록 -->
			<div class="section_top_area">

			</div>
			<br>
			<table class="list_tbl_01 mb70" summary="학력 추가">
				<caption>상세목표</caption>
				<colgroup>
					<!-- 상세목표 -->
					<col style="width: 25%" />
					<!-- 실천날짜 -->
					<col style="width: 8%" />
					<!-- 시작시간 -->
					<col style="width: 8%" />
					<!-- 종료시간 -->
					<col style="width: 8%" />
					<!-- 총시간 -->
					<col style="width: 4%" />
					<!-- 실천결과 -->
					<col style="width: 25%" />
					<!-- 실천률 -->
					<col style="width: 15%" />
					<!-- 평가 -->
					<col style="width: 7%" />
				</colgroup>
				<thead>
					<tr class="first" style="text-align: center">
						<th scope="col">상세목표</th>
						<th scope="col">실천날짜</th>
						<th scope="col">시작시간</th>
						<th scope="col">종료시간</th>
						<th scope="col">총시간</th>
						<th scope="col">실천결과</th>
						<th scope="col">실천률</th>
						<th scope="col">평가</th>
					</tr>
				</thead>
				<tbody id="workCareerLayer">
					<c:forEach var="action" items="${actionList}">
						<tr>
							<td>${action.detailGoalList}</td>
							<td>${action.actionDate}</td>
							<td>${action.actionStart}</td>
							<td>${action.actionEnd}</td>
							<td>${action.actionTime}</td>
							<td>${action.actionResult}</td>
							<td><div class="progress">
									<div class="progress-bar" role="progressbar" aria-valuenow="60"
										aria-valuemin="0" aria-valuemax="100" style="width:${action.actionRate}&#37;">
										${action.actionRate}&#37;</div></td>
							<%-- <td>${action.actionRate}&#37;</td> --%>
							<td><a
								href="/actionUpdateForm?actionCode=${action.actionCode}"
								class="btn_del">평가</a></td>

						<!-- <div class="progress">
  							<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
   							 60%
 							 </div>
							</div> -->
							</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>
	</div>
	<br>
	<br>
	<br>

	<div>
		<c:import url="/WEB-INF/views/layout/Hadan.jsp">
		</c:import>
	</div>

</body>
</html>