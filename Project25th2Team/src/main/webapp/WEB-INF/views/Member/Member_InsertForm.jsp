<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
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
		<h4 align="center">안녕하세요 회원가입을 해주세요!</h4>
		<form align="center" action="./addMember" method="post">
			<table align="center" border="1">
				<tr>
					<td>memberCode</td>
					<td><input type="text" name="memberCode"></td>
				</tr>
				<tr>
					<td>memberId</td>
					<td><input type="text" name="memberId"></td>
				</tr>
				<tr>
					<td>memberPw</td>
					<td><input type="text" name="memberPw"></td>
				</tr>
				<tr>
					<td>memberName</td>
					<td><input type="text" name="memberName"></td>
				</tr>
				<tr>
					<td>memberPhone</td>
					<td><input type="text" name="memberPhone"></td>
				</tr>
				<tr>
					<td>memberEmail</td>
					<td><input type="text" name="memberEmail"></td>
				</tr>
				<tr>
					<td>memberAddress</td>
					<td><input type="text" name="memberAddress"></td>
				</tr>
			</table>

			<input type="submit" value="addMember">
		</form>
	</div>
	<div>
		<c:import url="/WEB-INF/views/layout/Hadan.jsp">
		</c:import>
	</div>
</body>
</html>
