<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
		<h4 align="center">${Member.memberId}(${Member.memberName})님의 MyPage 입니다.</h4>
			<table align="center" border="1">
				<tr>
					<td>memberCode</td>
					<td><input type="text" value="${Member.memberCode}" readonly="readonly"></td>
				</tr>
				<tr>
					<td>memberId</td>
					<td><input type="text" value="${Member.memberId}" readonly="readonly"></td>
				</tr>
				<tr>
					<td>memberPw</td>
					<td><input type="text" value="${Member.memberPw}" readonly="readonly"></td>
				</tr>
				<tr>
					<td>memberName</td>
					<td><input type="text" value="${Member.memberName}" readonly="readonly"></td>
				</tr>
				<tr>
					<td>memberPhone</td>
					<td><input type="text" value="${Member.memberPhone}" readonly="readonly"></td>
				</tr>
				<tr>
					<td>memberEmail</td>
					<td><input type="text" value="${Member.memberEmail}" readonly="readonly"></td>
				</tr>
				<tr>
					<td>memberAddress</td>
					<td><input type="text" value="${Member.memberAddress}" readonly="readonly"></td>
				</tr>
				<tr>
					<td>memberGrade</td>
					<td><input type="text" value="${Member.memberGrade}" readonly="readonly"></td>
				</tr>
			</table>
	</div>
	<div>
		<c:import url="/WEB-INF/views/layout/Hadan.jsp">
		</c:import>
	</div>
</body>
</html>
