<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>경력등록(자격증)</title>
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
		<h4 align="center">자격증등록</h4>
		<form action="/addLicense" method="post" align="center">
			<input type="hidden" name="memberCode" value=${Member.memberCode}>
			<table align="center" border="1">
				<tr>
					<td>자격증명</td>
					<td><select name="lisenceListCode">
							<option>HSK1급</option>
							<option>HSK2급</option>
							<option>HSK3급</option>
							<option>HSK4급</option>
							<option>HSK5급</option>
							<option>HSK6급</option>
							<option>JLPT1급</option>
							<option>JLPT2급</option>
							<option>JLPT3급</option>
							<option>JLPT4급</option>
							<option>JLPT5급</option>
							<option>JTP</option>
							<option>SJPT</option>
							<option>Speaking</option>
							<option>Speaking&Writing</option>
							<option>ToeFL_IBT</option>
							<option>TSC</option>
							<option>Writing</option>
					</select></td>
				</tr>
				<tr>
					<td>취득일</td>
					<td><input type="date" name="licenseAcquire"></td>
				</tr>
				<tr>
					<td>취득번호</td>
					<td><input type="text" name="licenseNumber"></td>
				</tr>
				<tr>
					<td>발급처</td>
					<td><input type="text" name="licenseOrgan"></td>
				</tr>
				<tr>
					<td>첨부파일</td>
					<td><input type="text" name="licenseFile"></td>
				</tr>

			</table>
			<input type="submit" value="addLicense">
		</form>
		<div>
			<c:import url="/WEB-INF/views/layout/Hadan.jsp">
			</c:import>
		</div>
</body>
</html>