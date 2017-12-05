<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>경력등록(연수/봉사)</title>
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
		<h4 align="center">연수/봉사 등록</h4>
		<form action="/addTraining" method="post" align="center">
			<input type="hidden" name="memberCode" value=${Member.memberCode}>
			<table align="center" border="1">
				<tr>
					<td>연수기간</td>
					<td><input type="text" name="trainingPeriod"></td>
				</tr>
				<tr>
					<td>연수시작일</td>
					<td><input type="date" name="trainingStart"></td>
				</tr>
				<tr>
					<td>연수종료일</td>
					<td><input type="date" name="trainingEnd"></td>
				</tr>
				<tr>
					<td>국가</td>
					<td><input type="text" name="trainingNation"></td>
				</tr>
				<tr>
					<td>상세설명</td>
					<td><input type="text" name="trainingDetail"></td>
				</tr>
				<tr>
					<td>연수봉사 등록일</td>
					<td><input type="date" name="trainingDate"></td>
				</tr>
			</table>
			<input type="submit" value="addTraining">
		</form>
		<div>
			<c:import url="/WEB-INF/views/layout/Hadan.jsp">
			</c:import>
		</div>
</body>
</html>