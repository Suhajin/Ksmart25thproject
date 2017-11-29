<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>연수/봉사 등록</title>
</head>
<body>
	<div>
		<c:import url="/WEB-INF/views/layout/Head.jsp">
		</c:import>
	</div>
	<div>
		<header class="masthead">
		<div class="overlay">
			<div class="container">
				<h1 class="display-1 text-white">Welcome!</h1>
				<h2 class="display-4 text-white">Consulting for you.</h2>
			</div>
		</div>
		</header>
		<form align="center">
			<br> <br> <br> <br>
			<h1>전체 연수/봉사 리스트</h1>
			<div align="center">
				<table border="1" align="center">
					<thead>
						<tr>
							<th>ID</th>
							<th>회원명</th>
							<th>연수기간</th>
							<th>연수시작일</th>
							<th>연수종료일</th>
							<th>국가</th>
							<th>상세설명</th>
							<th>연수봉사 등록일</th>
							<th>수정</th>
							<th>삭제</th>
						</tr>
						<c:forEach var="training" items="${list}">

							<tr>
								<td>${training.memberId}</td>
								<td>${training.memberName}</td>
								<td>${training.trainingPeriod}</td>
								<td>${training.trainingStart}</td>
								<td>${training.trainingEnd}</td>
								<td>${training.trainingNation}</td>
								<td>${training.trainingDetail}</td>
								<td>${training.trainingDate}</td>
								<td><a href="#" class="btn_add">수정</a></td>
								<td><a href="#" class="btn_add">삭제</a></td>
							</tr>
						</c:forEach>
					</thead>
				</table>
			</div>

			<br> <br> <br> <br>
		</form>
		<div>
			<c:import url="/WEB-INF/views/layout/Hadan.jsp">
			</c:import>
		</div>
</body>
</html>
