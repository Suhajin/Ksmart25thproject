<!DOCTYPE html>
<%@page import="org.springframework.web.context.annotation.SessionScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>One Page Wonder - Start Bootstrap Template</title>

<!-- Bootstrap core CSS -->

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">



<!-- Custom styles for this template -->

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/one-page-wonder.css">

</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="#">Start Bootstrap</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">

					<c:choose>
						
						<c:when test="${Member.memberGrade eq 'member'}">
							<li class="nav-item active"><a class="nav-link" href="#">Home<span
									class="sr-only">(current)</span>
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#">회사안내</a></li>
							<li class="nav-item"><a class="nav-link" href="#">공지사항</a></li>
							<li class="nav-item"><a class="nav-link" href="/Logout">로그아웃</a></li>
							<li class="nav-item"><a class="nav-link" href="/Insert">등록</a></li>
						</c:when>
						<c:when test="${Member.memberGrade eq 'manager'}">
							<li class="nav-item active"><a class="nav-link" href="#">Home<span
									class="sr-only">(current)</span>
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#">회사안내</a></li>
							<li class="nav-item"><a class="nav-link" href="#">공지사항</a></li>
							<li class="nav-item"><a class="nav-link" href="/Logout">로그아웃</a></li>
							<li class="nav-item"><a class="nav-link" href="/Insert">등록</a></li>
						</c:when>
						<c:when test="${Member.memberGrade eq 'master'}">
							<li class="nav-item active"><a class="nav-link" href="#">Home<span
									class="sr-only">(current)</span>
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#">회사안내</a></li>
							<li class="nav-item"><a class="nav-link" href="#">공지사항</a></li>
							<li class="nav-item"><a class="nav-link" href="/Logout">로그아웃</a></li>
							<li class="nav-item"><a class="nav-link" href="/Insert">등록</a></li>
						</c:when>
						<c:otherwise>
							<li class="nav-item active"><a class="nav-link" href="#">Home<span
									class="sr-only">(current)</span></a></li>
							<li class="nav-item"><a class="nav-link" href="#">회사안내</a></li>
							<li class="nav-item"><a class="nav-link" href="#">공지사항</a></li>
							<li class="nav-item"><a class="nav-link" href="/Login">로그인</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="/Member">회원가입</a>
						</c:otherwise>
					</c:choose>

				</ul>
			</div>
		</div>
	</nav>



	<!-- Bootstrap core JavaScript -->

	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


</body>

</html>



