<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
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
							<th>회원명</th>
							<th>회사명</th>
							<th>회사주소</th>
							<th>입사일</th>
							<th>퇴사일</th>
							<th>재직여부</th>
							<th>경력기간</th>
							<th>직급</th>
							<th>재직확인</th>
							<th>수정</th>
							<th>삭제</th>
						</tr>
						<c:forEach var="career" items="${list}">
							<tr>
								<td>${career.memberId}</td>
								<td>${career.memberName}</td>
								<td>${career.careerName}</td>
								<td>${career.careerAddress}</td>
								<td>${career.careerEntrance}</td>
								<td>${career.careerQuit}</td>
								<td>${career.careerWorking}</td>
								<td>${career.careerPeriod}</td>
								<td>${career.careerPosition}</td>
								<td>${career.careerApproval}</td>
								<td><a href="/CareerUpdateOne?careerCode=${career.careerCode}" class="btn_add">수정</a></td>
								<td><a href="/CareerDelete?careerCode=${career.careerCode}" class="btn_add">삭제</a></td>
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
