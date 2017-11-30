<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자격증수정</title>
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
		<h4 align="center">자격증수정</h4>
		<form align="center" action="/UpdateLicense" method="post">
			<input type="hidden" name="licenseCode" value="${listone.licenseCode}">
			<input type="hidden" name="licenseApproval"
				value="${listone.licenseApproval}"> <input type="hidden"
				name="licenseDate" value="${listone.licenseDate}">
			<table align="center" border="1">
				<tr>
					<td>ID</td>
					<td><input type="text" name="memberCode" readonly="readonly"
						value="${listone.memberCode}"></td>
				</tr>
				<tr>
					<td>자격증명</td>
					<td><input type="text" name="lisenceListCode"
						value="${listone.lisenceListCode}"></td>
				</tr>
				<tr>
					<td>취득일</td>
					<td><input type="date" name="licenseAcquire"
						value="${listone.licenseAcquire}"></td>
				</tr>
				<tr>
					<td>취득번호</td>
					<td><input type="text" name="licenseNumber"
						value="${listone.licenseNumber}"></td>
				</tr>
				<tr>
					<td>발급처</td>
					<td><input type="text" name="licenseOrgan"
						value="${listone.licenseOrgan}"></td>
				</tr>
				<tr>
					<td>첨부파일</td>
					<td><input type="text" name="licenseFile"
						value="${listone.licenseFile}"></td>
				</tr>

			</table>

			<input type="submit" value="수정">
		</form>
	</div>
	<div>
		<c:import url="/WEB-INF/views/layout/Hadan.jsp">
		</c:import>
	</div>
</body>
</html>
