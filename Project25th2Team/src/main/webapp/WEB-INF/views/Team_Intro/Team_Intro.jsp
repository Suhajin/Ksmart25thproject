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
			<br> <br> <br>


			<div class="col-sm-9">

				<h2>프로젝트 주제</h2>
				<hr>
				NCS기반을 활용한 컨설팅시스템<br> <br> <br>
				<h3>프로젝트 목적</h3>
				<hr>
				사용자들의 구직, 승진, 이직을 더욱 계획적이고 체계적으로 하는데 도움을 주기 위한 NCS기반 컨설팅시스템<br>
				<br> <br>
				<h3>기대효과</h3>
				<hr>
				1. 직장인들의 효율적인 시간관리 및 경력관리의 편의성 증진<br> 2. 지속적인 목표 이행에따른 성공적인 결과<br>
				3. 매니저의 지속적인 목표대비 실천률 관리를 통한 긍정적인 피드백<br> <br>
				<h3>주요기능</h3>
				<hr>
				<b>1. 회원등록 및 회원정보관리</b><br> - 회원을 등록하고 관리하는 기능 <br><br> <b>2.
					회원 경력관리</b><br> - 회원의 경력사항을 등록하고 관리하는 기능<br><br> <b>3. 회원
					목표관리 </b><br> - 회원의 목표를 세분화하여 관리하는 기능 <br><br> <b>4. 실천률 관리</b><br>
				- 회원의 목표대비 실천률을 자가평가하는 기능<br><br> <b>5. 목표대비 실천률 관리</b> <br> -
				자가평가된 회원의 실천률을 토대로 매니저가 회원의 실천률을 관리하는 기능<br><br> <b>6. 스케줄 관리</b><br>
				- 회원의 목표에 따른 스케줄을 관리하는 기능<br><br> <b> 7. 매니저 평가 </b><br> - 회원이
				담당 매니저를 평가하는 기능<br> <br> <br>
				<button type="button" class="btn btn-info" data-toggle="collapse"
					data-target="#demo">개발환경 확인하기</button>
				<br> <br>
				<div id="demo" class="collapse">
					<br> <br> <br> <font color="blue">OS : </font>Windows7
					<br> <br> <font color="blue">웹브라우저 : </font> Crome <br>
					<br> <font color="blue">WAS : </font>apache-tomcat-8.0.xx <br>
					<br> <font color="blue">DB : </font>MySQL <br> <br>
					<font color="blue">DB관리툴 : </font>HeidiSQL <br> <br> <font
						color="blue">버전관리 : </font>GitHub <br> <br> <font
						color="blue">언어 : </font>java1.8 <br> <br> <font
						color="blue">프레임워크 : </font> <br> <br>
					Spring-tool-suite-3.8.4,, Springframework-4.3.12, Spring-webmvc
					4.3.12, Maven, Maven-eclipse-plugin 2.9,<br> <br>
					Maven-compiler-plugin 2.5.1, Mybatis 3.4.5, Mybatis-spring 1.3.1,
					Bootstrap <br> <br> <font color="blue">API : </font> <br>
					<br> Jackson-databind 2.9.1, Mysql-connector-java 5.1.44.
					Log4jdbc-remix 0.2.7. Spring-jdbc 4.3.11, Commons-dbcp 1.4,
					Aspectjrt 1.6.10,<br> <br> Log4j 1.2.15, Jstl 1.2 Junit
					4.7, , Exec-maven-plugin 1.2.1, Aspectj 1.6.10 , Slf4j 1.6.6 <br>
					<br>
				</div>
			</div>
		</div>
</body>
</html>