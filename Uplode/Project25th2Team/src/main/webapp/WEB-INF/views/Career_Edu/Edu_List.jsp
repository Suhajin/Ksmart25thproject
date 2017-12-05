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
		<form align="center">
			<br> <br> <br> <br>
			<h1>전체 경력 리스트</h1>
			<div align="center">
				<table border="1" align="center">
					<thead>
						<tr>
							<th>ID</th>
							<th>최종학력</th>
							<th>학교명</th>
							<th>전공</th>
							<th>부전공</th>
							<th>복수전공</th>
							<th>졸업여부</th>
							<th>전적대(편)</th>
							<th>전적전공(편)</th>
							<th>수정</th>
							<th>삭제</th>
						</tr>
						<c:forEach var="edu" items="${eduAllList}">
							<tr>
								<td>${edu.memberId}</td>
								<td>${edu.eduHighestLevel}</td>
								<td>${edu.eduName}</td>
								<td>${edu.eduMajor}</td>
								<td>${edu.eduMinor}</td>
								<td>${edu.eduDual}</td>
								<td>${edu.eduGraduation}</td>
								<td>${edu.eduBefore}</td>
								<td>${edu.eduBeforeMajor}</td>
								<td><a href="/eduUpdateForm?eduCode=${edu.eduCode}"
									class="btn_add">수정</a></td>
								<td><a href="/eduDelete?eduCode=${edu.eduCode}"
									class="btn_add">삭제</a></td>
							</tr>
						</c:forEach>
					</thead>
				</table>
			</div>

			<br> <br> <br> <br>
		</form>
		<div>
			<c:import url="/WEB-INF/views/layout/Hadan.jsp">
			</c:import>
		</div>
</body>
</html>