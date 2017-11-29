<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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

	<header class="masthead">
		<div class="overlay">
			<div class="container">
				<h1 class="display-1 text-white">Welcome!</h1>
				<h2 class="display-4 text-white">Consulting for you.</h2>
			</div>
		</div>
	</header>
	<section>
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-6 order-2">
					<div class="p-5">
						<img class="img-fluid rounded-circle"
							src="${pageContext.request.contextPath}/resources/image/Consulting_01.jpg"
							alt="">
					</div>
				</div>
				<div class="col-md-6 order-1">
					<div class="p-5">
						<h2 class="display-4">당신의 컨설팅</h2>
						<p>경력,자격증,어학 을 비롯하여 당신의 미래를 위한 전문가가 당신을 적극적으로 도와드립니다.</p>
						<c:choose>
							<c:when test="${Member.memberGrade ne null}">
								<h3>${Member.memberName}(${Member.memberGrade})님환영합니다.</h3>
							</c:when>
							<c:otherwise>
								<h4><strong>환영합니다.</strong></h4>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Bootstrap core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>

</html>