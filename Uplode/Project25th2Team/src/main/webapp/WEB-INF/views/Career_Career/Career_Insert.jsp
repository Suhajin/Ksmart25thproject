<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>경력등록</title>
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
		<h4 align="center">경력등록</h4>
		<form align="center" action="./addCareer" method="post">
			<input type="hidden" name="memberCode" value=${Member.memberCode}>
			<table align="center" border="1">
				<tr>
					<td>회사명</td>
					<td><input type="text" name="careerName"></td>
				</tr>
				<tr>
					<td>회사주소</td>
					<td><input type="text" name="careerAddress"></td>
				</tr>
				<tr>
					<td>입사일</td>
					<td><input type="date" name="careerEntrance"></td>
				</tr>
				<tr>
					<td>퇴사일</td>
					<td><input type="date" name="careerQuit"></td>
				</tr>
				<tr>
					<td>재직여부</td>
					<td><input type="text" name="careerWorking"></td>
				</tr>
				<tr>
					<td>경력기간</td>
					<td><input type="text" name="careerPeriod"></td>
				</tr>
				<tr>
					<td>직위</td>
					<td><input type="text" name="careerPosition"></td>
				</tr>

			</table>

			<input type="submit" value="addCareer">
		</form>
	</div>
	<div>
		<c:import url="/WEB-INF/views/layout/Hadan.jsp">
		</c:import>
	</div>
</body>
</html>