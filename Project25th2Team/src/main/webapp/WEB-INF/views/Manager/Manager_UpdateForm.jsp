<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>매니저 수정 화면</title>
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
		<br><br>
		<br><h4 align="center"> ${managerupdatelist.managerName} 매니저 님의 등급</h4><br>
		<form align="center" action="/UpdateManagerGrade" method="post">
			<input type="hidden" name="managerCode"
				value="${managerupdatelist.managerCode}"> <input
				type="hidden" name="memberCode"
				value="${managerupdatelist.memberCode}">
			<table align="center" border="1">
			<tr>
					<td>ID</td>
					<td><input type="text" name="managerCode" readonly="readonly"
						value="${managerupdatelist.managerCode}"></td>
				</tr>
				<tr>
					<td>ID</td>
					<td><input type="text" name="memberCode" readonly="readonly"
						value="${managerupdatelist.memberCode}"></td>
				</tr>
				<tr>
					<td>ID</td>
					<td><input type="text" name="memberId" readonly="readonly"
						value="${managerupdatelist.memberId}"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="managerName" readonly="readonly"
						value="${managerupdatelist.managerName}"></td>
				</tr>
				<tr>
					<td>매니저 직급</td>
					<td><select name="managerGradeCode" value="${managerupdatelist.managerGradeCode}">
							<option value="mg_01">총괄매니저</option>
							<option value="mg_02">담당 실장</option>
							<option value="mg_03">담당 부실장</option>
							<option value="mg_04">담당 매니저</option>
							<option value="mg_05">수습 매니저</option>
					</select></td>
				</tr>
				<tr>
					<td>담당 부서</td>
					<td><select name="managerDepartment" value="${managerupdatelist.managerDepartment}">
							<option>관리부</option>
							<option>어학부</option>
							<option>자격증부</option>
							<option>교육부</option>
							<option>기타부</option>
					</select></td>
				</tr>
			</table>
		<br><br>
			<input type="submit" value="수정">
		</form><br><br>
		<div>
			<c:import url="/WEB-INF/views/layout/Hadan.jsp">
			</c:import>
		</div>
</body>
</html>
