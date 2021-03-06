<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자격증등록</title>
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
			<h1>전체 보유 자격증 리스트</h1>
			<div align="center">
				<table border="1" align="center">
					<thead>
						<tr>
							<th>ID</th>
							<th>회원명</th>
							<th>자격증명 </th>
							<th>취득일 </th>
							<th>취득번호 </th>
							<th>발급처 </th>
							<th>첨부파일 </th>
							<th>승인여부 </th>
							<th>자격증 등록일</th>
							<th>수정</th>
							<th>삭제</th>
						</tr>
						<c:forEach var="license" items="${Licenselist}">
							
							<tr>
								<td>${license.memberId}</td>
								<td>${license.memberName}</td>
								<td>${license.lisenceName}</td>
								<td>${license.licenseAcquire}</td>
								<td>${license.licenseNumber}</td>
								<td>${license.licenseOrgan}</td>
								<td>${license.licenseFile}</td>
								<td>${license.licenseApproval}</td>
								<td>${license.licenseDate}</td> 
								<td><a href="/LicenseUpdateOne?licenseCode=${license.licenseCode}" class="btn_add">수정</a></td>
								<td><a href="/LicenseDelete?licenseCode=${license.licenseCode}" class="btn_add">삭제</a></td>
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
