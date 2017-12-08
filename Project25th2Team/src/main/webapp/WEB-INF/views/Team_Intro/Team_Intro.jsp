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
<title>팀소개</title>
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
				<br>
				<br>
				<h2>팀 프로젝트 소개</h2>
				<br>
				<br>
				<br>
				<br>
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
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>


			<div class="col-sm-9">

				<h2>프로젝트 주제</h2>
				<hr>
				직장인을 위한 컨설팅<br><br><br>
				<h3>프로젝트 목적</h3>
				<hr>
				취업,진급,이직 등 회사에 필요한 언어,학습,자격증을 비롯하여 한사람을 위한 컨설팅<br><br><br><br>
				<button type="button" class="btn btn-info" data-toggle="collapse"
					data-target="#demo">개발환경 확인하기</button><br><br>
				<div id="demo" class="collapse">
					<br><br><br>
					<font color="blue">OS : </font>Windows7 <br><br>
					<font color="blue">웹브라우저 : </font> Crome <br> <br>
					<font color="blue">WAS : </font>apache-tomcat-8.0.xx <br><br> 
					<font color="blue">DB : </font>MySQL <br><br>
					<font color="blue">DB관리툴 : </font>HeidiSQL <br><br> 
					<font color="blue">버전관리 : </font>GitHub <br><br>
					<font color="blue">언어 : </font>java1.8 <br><br>
					<font color="blue">프레임워크 : </font> <br><br>
					Spring-tool-suite-3.8.4, Springframework-4.5.9, Spring-webMVC
					4.3.9, Maven, mybatis 3.3.1, mybatis-spring 1.2.2, bootstrap <br><br> 
					<font color="blue">API : </font> <br><br>
					jackson.core 2.8.8, commons-dbcp 1.4, Spring-jdbc 4.3.8,
					MySQL-connector-java 5.1.39, maven-compiler-plugin 3.1, <br><br>
					maven-eclipse-plugin 2.9, javax.inject 1, log4j 1.2.15, commons-io
					2.0.1, commons-fileupload 1.2.2 <br>
					<br>
				</div>
			</div>
		</div>
</body>
</html>