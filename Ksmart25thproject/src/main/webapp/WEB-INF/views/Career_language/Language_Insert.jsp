<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>경력등록(어학)</title>
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
		<h4 align="center">어학등록</h4>
	<form action="/addLanguage" method="post" align="center">
		<table align="center" border="1">
			<tr>
				<td>languageCode</td>
				<td><input type="text" name="languageCode"></td>
			</tr>
			<tr>
				<td>memberCode</td>
				<td><input type="text" name="memberCode"></td>
			</tr>
			<tr>
				<td>lisenceListName</td>
				<td>
					<select name="lisenceListCode">
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
					</select>
				</td>
			</tr>
			<tr>
				<td>languageAcquire</td>
				<td><input type="date" name="languageAcquire"></td>
			</tr>
			<tr>
				<td>languageScore</td>
				<td><input type="text" name="languageScore"></td>
			</tr>
			<tr>
				<td>languageOrgan</td>
				<td><input type="text" name="languageOrgan"></td>
			</tr>
			<tr>	
				<td>languageFile</td>
				<td><input type="text" name="languageFile"></td>
			</tr>
			<tr>	
				<td>languageDate</td>
				<td><input type="date" name="languageDate"></td>
			</tr>
		</table>
		<input type="submit" value="addLanguage">
	</form>
	<div>
		<c:import url="/WEB-INF/views/layout/Hadan.jsp">
		</c:import>
	</div>
</body>
</html>