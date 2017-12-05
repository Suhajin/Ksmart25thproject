<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>회원리스트</title>
<head>
<title>Document</title>

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
		<li><a href="#tab1">학력List</a></li>
		<li><a href="#tab2">경력List</a></li>
		<li><a href="#tab3">자격증List</a></li>
		<li><a href="#tab4">어학List</a></li>
		<li><a href="#tab5">수료List</a></li>
		<li><a href="#tab6">연수/봉사List</a></li>
	</ul>

	<!--탭 콘텐츠 영역 -->
	<div id="tab1" class="tab_content">
		<!--Content-->
		<h1>Edu</h1>
		<div align="center">
			<table border="1" align="center">
				<thead>
					<tr>
						<th>ID</th>
						<th>최종학력</th>
						<th>학교명</th>
						<th>전공</th>
						<th>부전공</th>
						<th>복수전공</th>
						<th>졸업여부</th>
						<th>전적대(편)</th>
						<th>전적전공(편)</th>
						<th>수정</th>
						<th>삭제</th>
					</tr>
					<c:forEach var="edu" items="${eduAllList}">
						<tr>
							<td>${edu.memberId}</td>
							<td>${edu.eduHighestLevel}</td>
							<td>${edu.eduName}</td>
							<td>${edu.eduMajor}</td>
							<td>${edu.eduMinor}</td>
							<td>${edu.eduDual}</td>
							<td>${edu.eduGraduation}</td>
							<td>${edu.eduBefore}</td>
							<td>${edu.eduBeforeMajor}</td>
							<td><a href="/eduUpdateForm?eduCode=${edu.eduCode}"
								class="btn_add">수정</a></td>
							<td><a href="/eduDelete?eduCode=${edu.eduCode}"
								class="btn_add">삭제</a></td>
						</tr>
					</c:forEach>
				</thead>
			</table>
		</div>
	</div>
	<div id="tab2" class="tab_content">
		<!--Content-->
		<h1>Career</h1>
		<div align="center">
			<table border="1" align="center">
				<thead>
					<tr>
						<th>ID</th>
						<th>회원명</th>
						<th>회사명</th>
						<th>회사주소</th>
						<th>입사일</th>
						<th>퇴사일</th>
						<th>재직여부</th>
						<th>경력기간</th>
						<th>직급</th>
						<th>재직확인</th>
						<th>수정</th>
						<th>삭제</th>
					</tr>
					<c:forEach var="career" items="${CareerList}">
						<tr>
							<td>${career.memberId}</td>
							<td>${career.memberName}</td>
							<td>${career.careerName}</td>
							<td>${career.careerAddress}</td>
							<td>${career.careerEntrance}</td>
							<td>${career.careerQuit}</td>
							<td>${career.careerWorking}</td>
							<td>${career.careerPeriod}</td>
							<td>${career.careerPosition}</td>
							<td>${career.careerApproval}</td>
							<td><a
								href="/CareerUpdateOne?careerCode=${career.careerCode}"
								class="btn_add">수정</a></td>
							<td><a href="/CareerDelete?careerCode=${career.careerCode}"
								class="btn_add">삭제</a></td>
						</tr>
					</c:forEach>
				</thead>
			</table>
		</div>
	</div>
	<div id="tab3" class="tab_content">
		<!--Content-->
		<h1>License</h1>
		<div align="center">
			<table border="1" align="center">
				<thead>
					<tr>
						<th>ID</th>
						<th>회원명</th>
						<th>자격증명</th>
						<th>취득일</th>
						<th>취득번호</th>
						<th>발급처</th>
						<th>첨부파일</th>
						<th>승인여부</th>
						<th>자격증 등록일</th>
						<th>수정</th>
						<th>삭제</th>
					</tr>
					<c:forEach var="license" items="${LicenseList}">

						<tr>
							<td>${license.memberId}</td>
							<td>${license.memberName}</td>
							<td>${license.lisenceListCode}</td>
							<td>${license.licenseAcquire}</td>
							<td>${license.licenseNumber}</td>
							<td>${license.licenseOrgan}</td>
							<td>${license.licenseFile}</td>
							<td>${license.licenseApproval}</td>
							<td>${license.licenseDate}</td>
							<td><a
								href="/LicenseUpdateOne?licenseCode=${license.licenseCode}"
								class="btn_add">수정</a></td>
							<td><a
								href="/LicenseDelete?licenseCode=${license.licenseCode}"
								class="btn_add">삭제</a></td>
						</tr>
					</c:forEach>
				</thead>
			</table>
		</div>

	</div>

	<div id="tab4" class="tab_content">
		<!--Content-->
		<h1>Language</h1>
		<div align="center">
			<table border="1" align="center">
				<thead>
					<tr>
						<th>ID</th>
						<th>회원명</th>
						<th>어학자격증명</th>
						<th>취득일</th>
						<th>점수</th>
						<th>발급처</th>
						<th>첨부파일</th>
						<th>승인여부</th>
						<th>어학 등록일</th>
						<th>수정</th>
						<th>삭제</th>
					</tr>
					<c:forEach var="language" items="${LanguageList}">

						<tr>
							<td>${language.memberId}</td>
							<td>${language.memberName}</td>
							<td>${language.lisenceListCode}</td>
							<td>${language.languageAcquire}</td>
							<td>${language.languageScore}</td>
							<td>${language.languageOrgan}</td>
							<td>${language.languageFile}</td>
							<td>${language.languageApproval}</td>
							<td>${language.languageDate}</td>
							<td><a href="#" class="btn_add">수정</a></td>
							<td><a href="#" class="btn_add">삭제</a></td>
						</tr>
					</c:forEach>
				</thead>
			</table>
		</div>
	</div>

	<div id="tab5" class="tab_content">
		<!--Content-->
		<h1>Completelist</h1>
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
					<c:forEach var="complete" items="${completelist}">

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
	</div>

	<div id="tab6" class="tab_content">
		<!--Content-->
		<h1>Training</h1>
		<div align="center">
			<table border="1" align="center">
				<thead>
					<tr>
						<th>ID</th>
						<th>회원명</th>
						<th>연수기간</th>
						<th>연수시작일</th>
						<th>연수종료일</th>
						<th>국가</th>
						<th>상세설명</th>
						<th>연수봉사 등록일</th>
						<th>수정</th>
						<th>삭제</th>
					</tr>
					<c:forEach var="training" items="${Trainingdao}">

						<tr>
							<td>${training.memberId}</td>
							<td>${training.memberName}</td>
							<td>${training.trainingPeriod}</td>
							<td>${training.trainingStart}</td>
							<td>${training.trainingEnd}</td>
							<td>${training.trainingNation}</td>
							<td>${training.trainingDetail}</td>
							<td>${training.trainingDate}</td>
							<td><a href="#" class="btn_add">수정</a></td>
							<td><a href="#" class="btn_add">삭제</a></td>
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
