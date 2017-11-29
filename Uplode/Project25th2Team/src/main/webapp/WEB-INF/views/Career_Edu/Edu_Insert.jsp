<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
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
		<h4 align="center">최종학력등록</h4>
	<form action="/addEdu" method="post" align="center">
		<table align="center" border="1">
			<tr>
				<td>eduCode</td>
				<td><input type="text" name="eduCode"></td>
			</tr>
			<tr>
				<td>memberCode</td>
				<td><input type="text" name="memberCode"></td>
			</tr>
			<tr>
				<td>eduHighestLevel</td>
				<td>
					<select name="eduHighestLevel">
						<option>선택</option>
						<option>중학교</option>
						<option>고등학교</option>
						<option>전문대학</option>
						<option>대학교</option>
						<option>대학원</option>
						<option>학사</option>
						<option>석사</option>
						<option>박사</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>eduName</td>
				<td><input type="text" name="eduName"></td>
			</tr>
			<tr>
				<td>eduMajor</td>
				<td><input type="text" name="eduMajor"></td>
			</tr>
			<tr>
				<td>eduMinor</td>
				<td><input type="text" name="eduMinor"></td>
			</tr>
			<tr>	
				<td>eduDual</td>
				<td><input type="text" name="eduDual"></td>
			</tr>
			<tr>
				<td>eduGraduation</td>
				<td>
					<select name="eduGraduation">
						<option>선택</option>
						<option>졸업</option>
						<option>재학</option>
						<option>자퇴</option>
					</select>
				</td>
			</tr>
			<tr>	
				<td>eduEntrance</td>
				<td><input type="date" name="eduEntrance"></td>
			</tr>
			<tr>	
				<td>eduFinish</td>
				<td><input type="date" name="eduFinish"></td>
			</tr>
			<tr>
				<td>eduBefore</td>
				<td><input type="text" name="eduBefore"></td>
			</tr>
			<tr>
				<td>eduBeforeMajor</td>
				<td><input type="text" name="eduBeforeMajor"></td>
			</tr>
		</table>
		<input type="submit" value="addEdu">
	</form>
	<div>
		<c:import url="/WEB-INF/views/layout/Hadan.jsp">
		</c:import>
	</div>
</body>
</html>