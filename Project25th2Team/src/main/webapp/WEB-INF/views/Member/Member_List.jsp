<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원리스트</title>
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
		</div>
		<form align="center">
			<br> <br> <br> <br>
			<h1>전체 회원 리스트</h1>

			<div align="center">
				<table border="1" align="center">
					<thead>
						<tr>
							<th>회원ID</th>
							<th>회원 성명</th>
							<th>회원 연락처</th>
							<th>회원 Email</th>
							<th>회원 우편번호</th>
							<th>회원 주소</th>
							<th>회원 상세주소</th>
							<th>가입일</th>
							<th>수정</th>
							<th>삭제</th>
						</tr>
						<c:forEach var="member" items="${memberlist}">
							<tr>
								<td>${member.memberId}</td>
								<td>${member.memberName}</td>
								<td>${member.memberPhone}</td>
								<td>${member.memberEmail}</td>
								<td>${member.memberPostNum}</td>
								<td>${member.memberAddress}</td>
								<td>${member.memberDetailAddress}</td>
								<td>${member.memberDate}</td>
								<td><a href="/MemberUpdate?memberCode=${member.memberCode}" class="btn_add">수정</a></td>
								<td><a href="/#?memberCode=" class="btn_del">삭제</a></td>
							</tr>
						</c:forEach>
					</thead>
				</table>
			<br> <br> <br> <br>
		</form>
		<div>
			<c:import url="/WEB-INF/views/layout/Hadan.jsp">
			</c:import>
		</div>
</body>
</html>
