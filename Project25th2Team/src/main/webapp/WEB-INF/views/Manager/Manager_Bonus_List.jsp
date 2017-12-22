<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/Career_common.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/Career_jquery-ui.css" />
<title>매니저 인센티브 내역</title>
</head>
<style type="text/css">
body {
	font-family: "Malgun Gothic";
	font-size: 0.8em;
}
/*TAB CSS*/
ul.tabs {
	align: center;
	margin: 0;
	padding: 0;
	float: left;
	list-style: none;
	height: 32px; /*--Set height of tabs--*/
	border-bottom: 1px solid #999;
	border-left: 1px solid #999;
	width: 100%;
	margin: 0;
}

ul.tabs li {
	align: center;
	float: left;
	margin: 0;
	padding: 0;
	height: 31px;
	/*--Subtract 1px from the height of the unordered list--*/
	line-height: 31px; /*--Vertically aligns the text within the tab--*/
	border: 1px solid #999;
	border-left: none;
	margin-bottom: -1px; /*--Pull the list item down 1px--*/
	overflow: hidden;
	position: relative;
	background: #e0e0e0;
}

ul.tabs li a {
	align: center;
	text-decoration: none;
	color: #000;
	display: block;
	font-size: 1.2em;
	padding: 0 20px;
	/*--Gives the bevel look with a 1px white border inside the list item--*/
	border: 1px solid #fff;
	outline: none;
}

ul.tabs li a:hover {
	background: #ccc;
}

html ul.tabs li.active, html ul.tabs li.active a:hover {
	/*--Makes sure that the active tab does not listen to the hover properties--*/
	background: #fff;
	/*--Makes the active tab look like it's connected with its content--*/
	border-bottom: 1px solid #fff;
}

/*Tab Conent CSS*/
.tab_container {
	align: center;
	border: 1px solid #999;
	border-top: none;
	overflow: hidden;
	clear: both;
	float: left;
	width: 70%;
	background: #fff;
}

.tab_content {
	align: center;
	padding: 10px;
	font-size: 1.2em;
}
</style>



<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		//When page loads...
		$(".tab_content").hide(); //Hide all content
		$("ul.tabs li:first").addClass("active").show(); //Activate first tab
		$(".tab_content:first").show(); //Show first tab content

		//On Click Event
		$("ul.tabs li").click(function() {

			$("ul.tabs li").removeClass("active"); //Remove any "active" class
			$(this).addClass("active"); //Add "active" class to selected tab
			$(".tab_content").hide(); //Hide all tab content

			var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
			$(activeTab).fadeIn(); //Fade in the active ID content
			return false;
		});

	});
</script>
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
	</div>
	</header>
	<br>
	<br>
	<h2>매니저 평가 리스트</h2><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="/ManagerInsentiveInsert"	class="btn btn-info">매니저 실적 등록</a>
	<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 관리자 권한으로만 확인할 수 있음 
	<br>
	<br>
	<br>

	<!--탭 메뉴 영역 -->
	<ul class="tabs">
		<li><a href="#tab1">고객평가List</a></li>
		<li><a href="#tab2">월간 관리List</a></li>
		<li><a href="#tab3">인센티브 List</a></li>
	</ul>

	<!--탭 콘텐츠 영역 -->
	<div id="tab1" class="tab_content">
		<br> <br>
		<h1>고객평가 List</h1>

		<!--Content-->
		<div align="center">
			<br> <br>
			<table class="list_tbl_01 mb70" border="1" align="center">
				<thead>
					<tr>
						<th>매니저명</th>
						<th>직급</th>
						<th>담당부서</th>
						<th>담당회원명</th>
						<th>평가1</th>
						<th>평가2</th>
						<th>평가3</th>
						<th>평가4</th>
						<th>총점</th>
						<th>기타메모</th>
					</tr>
					<c:forEach var="ManagerEvaluationList" items="${ManagerEvaluationList}">
						<tr>
							<td>${ManagerEvaluationList.managerName}</td>
							<td>${ManagerEvaluationList.gradeName}</td>
							<td>${ManagerEvaluationList.managerDepartment}</td>
							<td>${ManagerEvaluationList.memberName}</td>
							<td>${ManagerEvaluationList.evaluation1}</td>
							<td>${ManagerEvaluationList.evaluation2}</td>
							<td>${ManagerEvaluationList.evaluation3}</td>
							<td>${ManagerEvaluationList.evaluation4}</td>
							<td>${ManagerEvaluationList.evaluationGrade}</td>
							<td>${ManagerEvaluationList.evaluationMemo}</td>
						</tr>
					</c:forEach>
				</thead>
			</table>
		</div>
	</div>

	<div id="tab2" class="tab_content">
		<br> <br>
		<h1>월간 관리List</h1>
		<br> <br>
		< 월간 관리 List 화면 구현 >

		<!--Content-->
		<!-- 
		<div align="center">
			<table class="list_tbl_01 mb70" border="1" align="center">
				<thead>
					<tr>
						<th>등급</th>
						<th>담당부서</th>
						<th>회원 성명</th>
						<th>회원 연락처</th>
						<th>회원 Email</th>
						<th>은행명</th>
						<th>계좌번호</th>
						<th>수정</th>
						<th>삭제</th>
					</tr>
					<c:forEach var="manager" items="${ma1List}">
						<tr>
							<td>${manager.gradeName}</td>
							<td>${manager.managerDepartment}</td>
							<td>${manager.memberName}</td>
							<td>${manager.memberPhone}</td>
							<td>${manager.memberEmail}</td>
							<td>${manager.bankName}</td>
							<td>${manager.bankNum}</td>
							<td><a
								href="/ManagerUpdate?managerCode=${manager.managerCode}"
								class="btn_add">수정</a></td>
							<td><a
								href="/ManagerDelete?memberCode=${manager.memberCode}"
								class="btn_del">삭제</a></td>
						</tr>
					</c:forEach>
				</thead>
			</table>
		</div>

 -->
 </div>
 
 <br><br>
 
	<div id="tab3" class="tab_content">
		<br> <br>
		<h1>인센티브 List</h1>
		<br> <br>
		< 인센티브 List 내역 ><br>
		<!--Content-->
		<!-- 
		<div align="center">
			<table class="list_tbl_01 mb70" border="1" align="center">
				<thead>
					<tr>
						<th>등급</th>
						<th>담당부서</th>
						<th>회원 성명</th>
						<th>회원 연락처</th>
						<th>회원 Email</th>
						<th>은행명</th>
						<th>계좌번호</th>
						<th>수정</th>
						<th>삭제</th>
					</tr>
					<c:forEach var="manager" items="${ma2List}">
						<tr>
							<td>${manager.gradeName}</td>
							<td>${manager.managerDepartment}</td>
							<td>${manager.memberName}</td>
							<td>${manager.memberPhone}</td>
							<td>${manager.memberEmail}</td>
							<td>${manager.bankName}</td>
							<td>${manager.bankNum}</td>
							<td><a
								href="/ManagerUpdate?managerCode=${manager.managerCode}"
								class="btn_add">수정</a></td>
							<td><a
								href="/ManagerDelete?memberCode=${manager.memberCode}"
								class="btn_del">삭제</a></td>
						</tr>
					</c:forEach>
				</thead>
			</table>
		</div>

 -->
	</div>
	

	<br>
	<br>
	<br>
	<br>
	<div>
		<c:import url="/WEB-INF/views/layout/Hadan.jsp">
		</c:import>
	</div>
</body>
</html>
