<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>경력등록(학력)</title>
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
		<h4 align="center">목표등록</h4>
		<form action="/addAction" method="post" align="center">
			<table align="center" border="1">
				<tr>
					<td>상세목표</td>
					<td><input type="text" name="detailGoalList"></td>
				</tr>
				<tr>
					<td>실천날짜</td>
					<td><input type="date" name="actionDate"></td>
				</tr>
				<!-- <tr>
					<td>시작시간</td>
					<td><input type="time" name="actionStart"></td>
				</tr>
				<tr>
					<td>종료시간</td>
					<td><input type="time" name="actionEnd"></td>
				</tr>
				<tr>
					<td>총시간</td>
					<td><input type="text" name="actionTime"></td>
				</tr>
				<tr>
					<td>실천결과</td>
					<td><input type="text" name="actionResult"></td>
				</tr>
				<tr>
					<td>실천률</td>
					<td><input type="text" name="actionRate"></td>
				</tr> -->
			</table>
			<input type="submit" value="등록">
		</form>
		<div>
			<c:import url="/WEB-INF/views/layout/Hadan.jsp">
			</c:import>
		</div>
</body>
</html>