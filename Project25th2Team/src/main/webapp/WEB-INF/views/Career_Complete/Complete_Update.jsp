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
		<form align="center" action="/UpdateComplete" method="post">
			<input type="hidden" name="complitionCode" value="${complete.complitionCode}">
			<table align="center" border="1">
				<tr>
					<td>회원코드</td>
					<td><input type="text" name="memberCode" readonly="readonly"
						value="${complete.memberCode}"></td>
				</tr>
				<tr>
					<td>과정명</td>
					<td><input type="text" name="completeName"
						value="${complete.completeName}"></td>
				</tr>
				<tr>
					<td>과정시작일</td>
					<td><input type="text" name="completeStart"
						value="${complete.completeStart}"></td>
				</tr>
				<tr>
					<td>과정종료일</td>
					<td><input type="date" name="completeEnd"
						value="${complete.completeEnd}"></td>
				</tr>
				<tr>
					<td>수료기간</td>
					<td><input type="text" name="completeTime"
						value="${complete.completeTime}"></td>
				</tr>
				<tr>
					<td>학원명</td>
					<td><input type="text" name="completeAcademyName"
						value="${complete.completeAcademyName}"></td>
				</tr>
				<tr>
					<td>수료번호</td>
					<td><input type="text" name="completeNo"
						value="${complete.completeNo}"></td>
				</tr>
				<tr>
					<td>첨부파일</td>
					<td><input type="text" name="completeFile"
						value="${complete.completeFile}"></td>
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
