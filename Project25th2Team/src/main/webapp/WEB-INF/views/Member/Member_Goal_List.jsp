<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>회원목표리스트</title>
<head>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/Career_common.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/Career_jquery-ui.css" />


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
	<h1>전체 회원 리스트</h1>
	<br>
	<br>

	<!--탭 메뉴 영역 -->
	<ul class="tabs">
		<li><a href="#tab1">최종 목표 List</a></li>
		<li><a href="#tab2">중간 목표 List</a></li>
		<li><a href="#tab3">상세 목표 List</a></li>
	</ul>

	<!--탭 콘텐츠 영역 -->
	<div id="tab1" class="tab_content">
		<!--Content-->
		<br><br><br>
		<h3>회원별 최종 목표 설정</h3>
		<div align="center">
			<table border="1" style="text-align: center;">
					<thead>
						<tr>
							<th>회원 성명</th>
							<th>담당매니저</th>
							<th>목표명</th>
							<th>목표시작일</th>
							<th>목표종료일</th>
							<th>목표 투자일</th>
							<th>목표 투자시간</th>
							<th>총 투자시간</th>
							<th>예산</th>
							<th>기타 메모</th>
							<th>수정</th>
							<th>삭제</th>
						</tr>
						<c:forEach var="GoalList" items="${GoalList}">
							<tr>
								<td>${GoalList.memberName}</td>
								<td>${GoalList.managerName}</td>
								<td>${GoalList.finalGoalName}</td>
								<td>${GoalList.finalGoalStart}</td>
								<td>${GoalList.finalGoalEnd}</td>
								<td>${GoalList.finalGoalDays}</td>
								<td>${GoalList.finalGoalTimeADay}</td>
								<td>${GoalList.finalGoalTotalTime}</td>
								<td>${GoalList.finalGoalTotalBudget}</td>
								<td>${GoalList.finalGoalNote}</td>
								<td><a
									href="/FinalGoalUpdate?finalGoalCode=${GoalList.finalGoalCode}"
									class="btn btn-warning">수정</a></td>
								<td><a
									href="/FinalGoalDelete?finalGoalCode=${GoalList.finalGoalCode}"
									class="btn btn-danger">삭제</a></td>
							</tr>
						</c:forEach>
					</thead>
				</table>
		</div>
	</div>

	<div id="tab2" class="tab_content">
		<!--Content-->
		<br><br><br>
		<h3>회원별 중간 목표 설정</h3>
		<div align="center">
		<table border="1" style="text-align: center;" size="100%">
					<thead>
						<tr>
							<th>회원<br> 성명</th>
							<th>담당<br>매니저</th>
							<th>최종<br>목표</th>
							<th>목표<br>분류</th>
							<th>자격증명</th>
							<th>공부<br>방법</th>
							<th>중간<br> 상세목표</th>
							<th>중간<br> 목표계획</th>
							<th>시작일</th>
							<th>종료일</th>
							<th>예산</th>
							<th>수정</th>
							<th>삭제</th>
						</tr>
						<c:forEach var="midGoalList" items="${midGoalList}">
							<tr>
								<td>${midGoalList.memberName}</td>
								<td>${midGoalList.managerName}</td>
								<td>${midGoalList.biggestGoalName}</td>
								<td>${midGoalList.midGoalId}</td>
								<td>${midGoalList.lisenceName}</td>
								<td>${midGoalList.studyMethod}</td>
								<td>${midGoalList.midGoalName}</td>
								<td>${midGoalList.midGoalPlan}</td>
								<td>${midGoalList.midGoalStart}</td>
								<td>${midGoalList.midGoalEnd}</td>
								<td>${midGoalList.midGoalBudget}</td>
								<td><a
									href="/MidGoalUpdate?midGoalCode=${midGoalList.midGoalCode}"
									class="btn btn-warning">수정</a></td>
								<td><a
									href="/MidGoalDelete?midGoalCode=${midGoalList.midGoalCode}"
									class="btn btn-danger">삭제</a></td>
							</tr>
						</c:forEach>
					</thead>
				</table>

		</div>
	</div>
	
	
	
	<div id="tab3" class="tab_content">
		<!--Content-->
		<br><br><br>
		<h3>회원별 상세 목표 설정</h3>
		<div align="center">
		<table border="1" style="text-align: center;" size="100%">
				<thead>
					<tr>
						<th>이름</th>
						<th>매니저</th>
						<th>중간목표</th>
						<th>상세목표</th>
						<th>목표일자</th>
						<th>시작시간</th>
						<th>종료시간</th>
						<th>총 시간</th>
						<th>예산</th>
						<th>비고</th>
						<th>수정</th>
						<th>삭제</th>

					</tr>
					<c:forEach var="detailgaolList" items="${detailgaolList}">
						<tr>
							<td>${detailgaolList.memberName}</td>
							<td>${detailgaolList.managerName}</td>
							<td>${detailgaolList.midGoalName}</td>
							<td>${detailgaolList.detailGoalList}</td>
							<td>${detailgaolList.detailGoalDate}</td>
							<td>${detailgaolList.detailGoalStart}</td>
							<td>${detailgaolList.detailGoalEnd}</td>
							<td>${detailgaolList.detailGoalTotal}</td>
							<td>${detailgaolList.detailGoalBudget}</td>
							<td>${detailgaolList.detailGoalExplain}</td>
							<td><a
								href="/detailUpgrade?detailgaolList=${detailgaolList.detailGoalCode}"
								class="btn btn-warning">수정</a></td>
							<td><a href="/detailDelete?detailgaolList=${detailgaolList.detailGoalCode}"
								class="btn btn-danger">삭제</a></td>
						</tr>
					</c:forEach>
				</thead>
			</table>
			
		</div>

	</div>

	<br>
	<br>
	<br>
	<div>
		<c:import url="/WEB-INF/views/layout/Hadan.jsp">
		</c:import>
	</div>
</body>
</html>