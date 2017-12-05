<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>경력등록</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/Career_common.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/Career_jquery-ui.css" />


</head>

<div>
	<c:import url="/WEB-INF/views/layout/Head.jsp">
	</c:import>
</div>
<br>
<br>
<br>
<body>
	<div class="content" id="content">

		<!-- 타이틀 영역 -->
		<div class="title_area">
			<h3>경력내역</h3>
			<p>${Member.memberName}님의경력(이력)List</p>
		</div>
		<br> <br> <br> <br>


		<!-- 최종학력 등록 -->
		<div class="section_top_area">
			<h4>최종학력 등록</h4>
			<!-- 우측버튼 -->
			<div class="sec_top_btn">
				<a href="/edu" class="btn_add">추가</a>
			</div>
		</div>
		<table class="list_tbl_01 mb70" summary="학력 추가">
			<caption>최종학력</caption>
			<colgroup>
				<!-- 최종학력 -->
				<col style="width: 15%" />
				<!-- 학교명 -->
				<col style="width: 30%" />
				<!-- 전공 -->
				<col style="width: 15%" />
				<!-- 부전공 -->
				<col style="width: 15%" />
				<!-- 졸업여부 -->
				<col style="width: 15%" />
				<!-- 삭제 -->
				<col style="width: 10%" />
			</colgroup>
			<thead>
				<tr class="first" style="text-align: center;">
					<th scope="col">최종학력</th>
					<th scope="col">학교명</th>
					<th scope="col">전공</th>
					<th scope="col">부전공</th>
					<th scope="col">졸업여부</th>
					<th scope="col">삭제</th>
				</tr>
			</thead>
			<tbody id="EduList">
				<c:forEach var="Edu" items="${listedu}">
					<tr>
						<td>${Edu.eduHighestLevel}</td>
						<td>${Edu.eduName}</td>
						<td>${Edu.eduMajor}</td>
						<td>${Edu.eduMinor}</td>
						<td>${Edu.eduGraduation}</td>
						<td><a href="/EduDelete?eduCode=${Edu.eduCode}"
							class="btn_del">삭제</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>







		<!-- 경력등록 -->
		<div class="section_top_area">
			<h4>경력 등록</h4>
			<!-- 우측버튼 -->
			<div class="sec_top_btn">
				<a href="/CareerInsert" class="btn_add">추가</a>
			</div>
		</div>
		<table class="list_tbl_01 mb70" summary="경력 추가">
			<caption>경력 등록</caption>
			<colgroup>
				<!-- 회사명 -->
				<col style="width: 15%" />
				<!-- 회사주소 -->
				<col style="width: 15%" />
				<!-- 입사일 -->
				<col style="width: 15%" />
				<!-- 퇴사일 -->
				<col style="width: 15%" />
				<!-- 재직여부 -->
				<col style="width: 10%" />
				<!-- 직급 -->
				<col style="width: 10%" />
				<!-- 증빙여부 -->
				<col style="width: 10%" />
				<!-- 삭제 -->
				<col style="width: 10%" />
			</colgroup>
			<thead>
				<tr class="first" style="text-align: center;">
					<th scope="col">회사명</th>
					<th scope="col">회사주소</th>
					<th scope="col">입사일</th>
					<th scope="col">퇴사일</th>
					<th scope="col">재직여부</th>
					<th scope="col">직급</th>
					<th scope="col">증빙방법</th>
					<th scope="col">삭제</th>
				</tr>
			</thead>
			<tbody id="careerList">
				<c:forEach var="career" items="${listmember}">
					<tr>
						<td>${career.careerName}</td>
						<td>${career.careerAddress}</td>
						<td>${career.careerEntrance}</td>
						<td>${career.careerQuit}</td>
						<td>${career.careerWorking}</td>
						<td>${career.careerPosition}</td>
						<td>${career.careerApproval}</td>
						<td><a href="/CareerDelete?careerCode=${career.careerCode}"
							class="btn_del">삭제</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<!--// 경력 등록 -->
		<!-- 자격증 등록 -->
		<div class="section_top_area">
			<h4>자격증 등록</h4>
			<!-- 우측버튼 -->
			<div class="sec_top_btn">
				<a href="/License" class="btn_add">추가</a>
			</div>
		</div>
		<table class="list_tbl_01 mb70" summary="자격증 추가">
			<caption>자격증 등록</caption>
			<colgroup>
				<!-- 자격증명 -->
				<col style="width: 30%" />
				<!-- 자격증등급 -->
				<col style="width: 15%" />
				<!-- 취득일 -->
				<col style="width: 15%" />
				<!-- 취득번호 -->
				<col style="width: 10%" />
				<!-- 발급처 -->
				<col style="width: 10%" />
				<!-- 증빙여부 -->
				<col style="width: 10%" />
				<!-- 삭제 -->
				<col style="width: 10%" />
			</colgroup>
			<thead>
				<tr class="first" style="text-align: center;">
					<th scope="col">자격증명</th>
					<th scope="col">등급</th>
					<th scope="col">취득일</th>
					<th scope="col">취득번호</th>
					<th scope="col">발급처</th>
					<th scope="col">승인여부</th>
					<th scope="col">삭제</th>
				</tr>
			</thead>
			<tbody id="licenseList">
				<c:forEach var="license" items="${listlicense}">
					<tr>
						<td>${license.lisenceName}</td>
						<td>${license.lisenceLevelName}</td>
						<td>${license.licenseAcquire}</td>
						<td>${license.licenseNumber}</td>
						<td>${license.licenseOrgan}</td>
						<td>${license.licenseApproval}</td>
						<td><a
							href="/LicenseDelete?licenseCode=${license.licenseCode}"
							class="btn_del">삭제</a></td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
		<!--// 자격증 등록 -->

		<!-- 어학 등록 -->
		<div class="section_top_area">
			<h4>어학 등록</h4>
			<!-- 우측버튼 -->
			<div class="sec_top_btn">
				<a href="javascript:addCareer('#')" class="btn_add">추가</a>
			</div>
		</div>
		<table class="list_tbl_01 mb70" summary="어학 추가">
			<caption>어학 등록</caption>
			<colgroup>
				<!-- 자격증명 -->
				<col style="width: 30%" />
				<!-- 취득일 -->
				<col style="width: 15%" />
				<!-- 점수 -->
				<col style="width: 10%" />
				<!-- 발급처 -->
				<col style="width: 25%" />
				<!-- 승인여부 -->
				<col style="width: 10%" />
				<!-- 삭제 -->
				<col style="width: 10%" />
			</colgroup>
			<thead>
				<tr class="first" style="text-align: center;">
					<th scope="col">자격증명</th>
					<th scope="col">취득일</th>
					<th scope="col">점수</th>
					<th scope="col">발급처</th>
					<th scope="col">승인여부</th>
					<th scope="col">삭제</th>
				</tr>
			<tbody id="languageList">
				<c:forEach var="language" items="${listlanguage}">
					<tr>
						<td>${language.lisenceName}</td>
						<td>${language.languageAcquire}</td>
						<td>${language.languageScore}</td>
						<td>${language.languageOrgan}</td>
						<td>${language.languageApproval}</td>
						<td><a
							href="/languageDelete?languageCode=${language.languageCode}"
							class="btn_del">삭제</a></td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
		<!--// 어학 자격증 -->




		<!-- 수료교육 등록 -->

		<div class="section_top_area">
			<h4>수료교육 등록</h4>
			<!-- 우측버튼 -->
			<div class="sec_top_btn">
				<a href="javascript:addCareer('#')" class="btn_add">추가</a>
			</div>
		</div>
		<table class="list_tbl_01 mb70" summary="어학 추가">
			<caption>어학 등록</caption>
			<colgroup>
				<!-- 과정명 -->
				<col style="width: 20%" />
				<!-- 과정시작 -->
				<col style="width: 11%" />
				<!-- 과정종료 -->
				<col style="width: 11%" />
				<!-- 수료시간 -->
				<col style="width: 8%" />
				<!-- 학원명 -->
				<col style="width: 20%" />
				<!-- 수료번호 -->
				<col style="width: 10%" />
				<!-- 승인여부 -->
				<col style="width: 10%" />
				<!-- 삭제 -->
				<col style="width: 10%" />

			</colgroup>
			<thead>
				<tr class="first" style="text-align: center;">
					<th scope="col">과정명</th>
					<th scope="col">과정시작</th>
					<th scope="col">과정종료</th>
					<th scope="col">수료시간</th>
					<th scope="col">학원명</th>
					<th scope="col">수료번호</th>
					<th scope="col">승인여부</th>
					<th scope="col">삭제</th>
				</tr>
			<tbody id="languageList">
				<c:forEach var="complete" items="${listcomplete}">
					<tr>
						<td>${complete.completeName}</td>
						<td>${complete.completeStart}</td>
						<td>${complete.completeEnd}</td>
						<td>${complete.completeTime}</td>
						<td>${complete.completeAcademyName}</td>
						<td>${complete.completeNo}</td>
						<td>${complete.completeApproval}</td>
						<td><a
							href="/completeDelete?complitionCode=${complete.complitionCode}"
							class="btn_del">삭제</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>


		<!-- 연수/봉사 -->
		<div class="section_top_area">
			<h4>연수/봉사 등록</h4>
			<!-- 우측버튼 -->
			<div class="sec_top_btn">
				<a href="javascript:addCareer('#')" class="btn_add">추가</a>
			</div>
		</div>
		<table class="list_tbl_01 mb70" summary="연수봉사 추가">
			<caption>연수/봉사 등록</caption>
			<colgroup>
				<!-- 국가 -->
				<col style="width: 23%" />
				<!-- 연수시작일 -->
				<col style="width: 11%" />
				<!-- 연수종료일 -->
				<col style="width: 11%" />
				<!-- 연수기간 -->
				<col style="width: 10%" />
				<!-- 상세설명 -->
				<col style="width: 35%" />
				<!-- 삭제 -->
				<col style="width: 10%" />
			</colgroup>
			<thead>
				<tr class="first">
					<th scope="col">국가</th>
					<th scope="col">연수시작일</th>
					<th scope="col">연수종료일</th>
					<th scope="col">연수기간</th>
					<th scope="col">상세설명</th>
					<th scope="col">삭제</th>
				</tr>
			</thead>
			<tbody id="trainingList">
				<c:forEach var="training" items="${listtraining}">
					<tr>
						<td>${training.trainingNation}</td>
						<td>${training.trainingStart}</td>
						<td>${training.trainingEnd}</td>
						<td>${training.trainingPeriod}</td>
						<td>${training.trainingDetail}</td>
						<td><a
							href="/trainingDelete?trainingCode=${training.trainingCode}"
							class="btn_del">삭제</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
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