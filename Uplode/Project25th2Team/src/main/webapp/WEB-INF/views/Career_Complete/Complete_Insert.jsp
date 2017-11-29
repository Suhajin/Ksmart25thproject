<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>경력등록(수료)</title>
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
		<h4 align="center">수료등록</h4>
	<form action="/addComplete" method="post" align="center">
		<table align="center" border="1">
			<tr>
				<td>complitionCode</td>
				<td><input type="text" name="complitionCode"></td>
			</tr>
			<tr>
				<td>memberCode</td>
				<td><input type="text" name="memberCode"></td>
			</tr>
			<tr>
				<td>completeName</td>
				<td><input type="text" name="completeName"></td>
			</tr>
			<tr>
				<td>completeStart</td>
				<td><input type="date" name="completeStart"></td>
			</tr>
			<tr>
				<td>completeEnd</td>
				<td><input type="text" name="completeEnd"></td>
			</tr>
			<tr>
				<td>completeTime</td>
				<td><input type="text" name="completeTime"></td>
			</tr>
			<tr>	
				<td>completeAcademyName</td>
				<td><input type="text" name="completeAcademyName"></td>
			</tr>
			<tr>	
				<td>completeNo</td>
				<td><input type="text" name="completeNo"></td>
			</tr>
			<tr>	
				<td>completeFile</td>
				<td><input type="text" name="completeFile"></td>
			</tr>
			<tr>	
				<td>completeApproval</td>
				<td><input type="text" name="completeApproval"></td>
			</tr>
			<tr>	
				<td>completeDate</td>
				<td><input type="date" name="completeDate"></td>
			</tr>
		</table>
		<input type="submit" value="addComplete">
	</form>
	<div>
		<c:import url="/WEB-INF/views/layout/Hadan.jsp">
		</c:import>
	</div>
</body>
</html>