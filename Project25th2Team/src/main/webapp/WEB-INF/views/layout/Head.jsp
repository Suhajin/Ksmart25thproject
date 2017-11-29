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
			<a class="navbar-brand" href="/">Home</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">

					<c:choose>

						<c:when test="${Member.memberGrade eq 'member'}">
							<li class="nav-item active"><a class="nav-link" href="/">Home<span
									class="sr-only">(current)</span>
							</a></li>
							<li class="nav-item"><a class="nav-link" href="/Information">회사안내</a></li>
							<li class="nav-item"><a class="nav-link" href="/Notice">공지사항</a></li>
							<li class="nav-item"><a class="nav-link" href="/Scheduler">스케줄러등록</a></li>
<<<<<<< HEAD
							<li class="nav-item"><a class="nav-link" href="/Insert?memberId=${Member.memberId}">등록</a></li>
							<li class="nav-item"><a class="nav-link" href="/Goal?memberId=${Member.memberId}">목표설정</a></li>

=======
							<li class="nav-item"><a class="nav-link"
								href="/Insert?memberId=${Member.memberId}">마이페이지</a></li>
							<li class="nav-item"><a class="nav-link" href="/Logout">로그아웃</a></li>

>>>>>>> refs/remotes/origin/master
						</c:when>
						<c:when test="${Member.memberGrade eq 'manager'}">
							<li class="nav-item active"><a class="nav-link" href="/">Home<span
									class="sr-only">(current)</span>
							</a></li>
							<li class="nav-item"><a class="nav-link" href="/Information">회사안내</a></li>
							<li class="nav-item"><a class="nav-link" href="/Notice">공지사항</a></li>
							<li class="nav-item"><a class="nav-link" href="#">회원관리</a></li>
							<li class="nav-item"><a class="nav-link" href="#">스케줄관리</a></li>
							<li class="dropdown"><a class="nav-link"
								data-toggle="dropdown" href="#">개인관리 <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">개인정보</a></li>
									<li><a href="#">실적내역</a></li>
									<li><a href="#">상벌역</a></li>
									<li><a href="#">급여내역</a></li>
								</ul></li>
							<li class="nav-item"><a class="nav-link" href="/Logout">로그아웃</a></li>
						</c:when>
						<c:when test="${Member.memberGrade eq 'master'}">
							<li class="nav-item active"><a class="nav-link" href="/">Home<span
									class="sr-only">(current)</span>
							</a></li>
							<li class="nav-item"><a class="nav-link" href="/Information">회사안내</a></li>
							<li class="nav-item"><a class="nav-link" href="/Notice">공지사항</a></li>
							<li class="dropdown"><a class="nav-link"
								data-toggle="dropdown" href="#">매니저 <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">매니저등록</a></li>
									<li><a href="#">매니저관리</a></li>
									<li><a href="#">매니저실적관리</a></li>
									<li><a href="#">급여관리</a></li>
								</ul></li>
							<li class="dropdown"><a class="nav-link"
								data-toggle="dropdown" href="#">회원관리 <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">회원리스트</a></li>
									<li><a href="#">회원경력리스트</a></li>
									<li><a href="#">회원컨설리스트</a></li>
								</ul></li>
							<li class="nav-item"><a class="nav-link" href="/Logout">로그아웃</a></li>
<<<<<<< HEAD
							<li class="nav-item"><a class="nav-link" href="/manager">매니저등록</a></li>
							<li class="nav-item"><a class="nav-link" href="#">매니저관리</a></li>
=======
>>>>>>> refs/remotes/origin/master
						</c:when>
						<c:otherwise>
							<li class="nav-item"><a class="nav-link" href="/">Home</a></li>
							<li class="nav-item"><a class="nav-link" href="/Information">회사안내</a></li>
							<li class="nav-item"><a class="nav-link" href="/Notice">공지사항</a></li>
							<li class="nav-item"><a class="nav-link" href="/member">회원가입</a></li>
							<li class="nav-item"><a class="nav-link" href="/login">로그인</a></li>
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



