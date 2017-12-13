<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>경력수정(언어)</title>
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
		<h4 align="center">언어경력수정</h4>
		<form action="/updateLanguage" method="post" align="center">
			<input type="hidden" name="languageCode"
				value="${languageUpdate.languageCode}">
			<table align="center" border="1">
				<tr>
					<td>회원코드</td>
					<td><input type="text" name ="memberCode" value="${languageUpdate.memberCode}" readonly="readonly"></td>
				</tr>
				<tr>
					<td>어학자격증명</td>
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
					<td><input type="date" name="languageAcquire"
						value="${languageUpdate.languageAcquire}"></td>
				</tr>
				<tr>
					<td>점수</td>
					<td><input type="text" name="languageScore"
						value="${languageUpdate.languageScore}"></td>
				</tr>
				<tr>
					<td>발급처</td>
					<td><input type="text" name="languageOrgan"
						value="${languageUpdate.languageOrgan}"></td>
				</tr>
				<tr>
					<td>첨부파일</td>
					<td><input type="text" name="languageFile"
						value="${languageUpdate.languageFile}"></td>
				</tr>
				</tr>
			</table>
			<input type="submit" value="수정">
		</form>
		<div>
			<c:import url="/WEB-INF/views/layout/Hadan.jsp">
			</c:import>
		</div>
</body>
</html>