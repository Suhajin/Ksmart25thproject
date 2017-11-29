<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수료정보 조회</title>
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
			<h1>전체 수료 리스트</h1>
			<div align="center">
				<table border="1" align="center">
					<thead>
						<tr>
							<th>ID</th>
							<th>회원명</th>
							<th>과정명</th>
							<th>과정시작</th>
							<th>과정종료</th>
							<th>수료시간</th>
							<th>학원명</th>
							<th>수료번호</th>
							<th>첨부파일</th>
							<th>승인여부</th>
							<th>수료 등록일</th>
							<th>수정</th>
							<th>삭제</th>
						</tr>
						<c:forEach var="Complete" items="${list}">

							<tr>
								<td>${complete.memberId}</td>
								<td>${complete.memberName}</td>
								<td>${complete.completeName}</td>
								<td>${complete.completeStart}</td>
								<td>${complete.completeEnd}</td>
								<td>${complete.completeTime}</td>
								<td>${complete.completeAcademyName}</td>
								<td>${complete.completeNo}</td>
								<td>${complete.completeFile}</td>
								<td>${complete.completeApproval}</td>
								<td>${complete.completeDate}</td>
								<td><a href="#" class="btn_add">수정</a></td>
								<td><a href="#" class="btn_add">삭제</a></td>
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
