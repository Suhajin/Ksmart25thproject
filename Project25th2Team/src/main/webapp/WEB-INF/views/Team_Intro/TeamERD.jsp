<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>ERD소개</title>
<style>
/* Set height of the grid so .sidenav can be 100% (adjust if needed) */
.row.content {
	height: 1500px
}

/* Set gray background color and 100% height */
.sidenav {
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row content">
			<div class="col-sm-3 sidenav">
				<br> <br>
				<h2>팀 프로젝트 소개</h2>
				<br> <br> <br> <br>
				<ul class="nav nav-pills nav-stacked">
					<li><a href="/ProjectInporm">프로젝트 정보</a></li>
					<br>
					<li><a href="/TeamMember">팀원소개</a></li>
					<br>
					<li><a href="/TeamERD">ERD</a></li>
					<br>
					<li><a href="https://github.com/Suhajin/Ksmart25thproject"
						target="_blank">Team GitHub</a></li>
					<br>
					<li><a href="/home">프로젝트 화면</a></li>
					<br>
				</ul>
				<br>
			</div>
			<br> <br> <br> <br> <br> <br>
			<div class="col-sm-9"> 
			<h1> ERD </h1>
			<br>
			<h6>클릭하면 크게 보실 수 있습니다.</h6>
			<br>

				<h2>ERD 논리</h2>
				<a
					href="${pageContext.request.contextPath}/resources/image/ERD_Non.jpg"
					target=_blank><img
					src="${pageContext.request.contextPath}/resources/image/ERD_Non.jpg"
					style="max-width: 70%; height: auto;"></a> <br> <br>
				<h2>ERD 물리</h2>
				<a
					href="${pageContext.request.contextPath}/resources/image/ERD_Mul.jpg"
					target=_blank> <img
					src="${pageContext.request.contextPath}/resources/image/ERD_Mul.jpg"
					style="max-width: 70%; height: auto;"></a></div>
								<br><br><br><br>

			</div>
</body>
</html>