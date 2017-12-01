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

<<<<<<< HEAD






		<!-- 경력등록 -->
		<div class="section_top_area">
			<h4>경력 등록</h4>
			<!-- 우측버튼 -->
			<div class="sec_top_btn">
				<a href="/CareerInsert" class="btn_add">추가</a>
=======
		<form id="excelForm" name="excelForm" method="post"
			action="swc_write01_excel.jsp" target="iframe4dummy">
			<!--  <input type="hidden" name="memberNo" value=""> -->
		</form>
		<form id="writeForm" name="writeForm" method="post" action="">
			<input type="hidden" name="callback" value="" /> <input
				type="hidden" name="key" value="142995715" />
			<!-- 최종학력 등록 -->
			<div class="section_top_area">
				<h4>최종학력 등록</h4>
				<!-- <a href="javascript:printCareer('workCareer')" class="btn_type02">근무경력확인서출력</a>  -->
				<!-- 우측버튼 -->
				<div class="sec_top_btn">
					<a href="/edu" class="btn_add">추가</a> <a href="/eduList"
						class="btn_del">전체리스트</a>
				</div>
>>>>>>> refs/remotes/origin/master
			</div>
<<<<<<< HEAD
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
=======
			<table class="list_tbl_01 mb70" summary="학력 추가">
				<caption>최종학력</caption>
				<colgroup>
					<!-- 체크박스 -->
					<col style="width: 2%" />
					<!-- 최종학력 -->
					<col style="width: 16%" />
					<!-- 학교명 -->
					<col style="width: 20%" />
					<!-- 전공 -->
					<col style="width: 16%" />
					<!-- 부전공 -->
					<col style="width: 16%" />
					<!-- 복수전공 -->
					<col style="width: 16%" />
					<!-- 졸업여부 -->
					<col style="width: 12%" />
				</colgroup>
				<thead>
					<tr class="first">
						<th scope="col"><input type="checkbox"
							name="checkAll4workCareer" id="checkAll4workCareer"
							onclick="onCheckAll4workCareer()" /></th>
						<th scope="col">최종학력</th>
						<th scope="col">학교명</th>
						<th scope="col">전공</th>
						<th scope="col">부전공</th>
						<th scope="col">복수전공</th>
						<th scope="col">졸업여부</th>
>>>>>>> refs/remotes/origin/master
					</tr>
<<<<<<< HEAD
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
=======
				</thead>
				<tbody id="workCareerLayer">
					<c:forEach var="edu" items="${listedu}">
						<tr>
							<td scope="col"><input type="checkbox" name="scholarNo"
								id="checkAll4skillCareer" onclick="onCheckAll4skillCareer()" /></td>
							<td>${edu.eduHighestLevel}</td>
							<td>${edu.eduName}</td>
							<td>${edu.eduMajor}</td>
							<td>${edu.eduMinor}</td>
							<td>${edu.eduDual}</td>
							<td>${edu.eduGraduation}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<!--// 근무경력 -->
			<!-- 경력등록 -->
			<div class="section_top_area">
				<h4>경력 등록</h4>
				<a href="javascript:printCareer('workCareer')" class="btn_type02">근무경력확인서출력</a>
				<!-- 우측버튼 -->
				<div class="sec_top_btn">
					<a href="/CareerInsert" class="btn_add">추가</a> <a
						href="/CareerList" class="btn_del">전체 리스트</a>
				</div>
>>>>>>> refs/remotes/origin/master
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
<<<<<<< HEAD
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
=======
				</thead>
				<tbody id="skillCareerLayer">
					<c:forEach var="career" items="${listmember}">
						<tr>
							<td scope="col"><input type="checkbox" name="scholarNo"
								id="checkAll4skillCareer" onclick="onCheckAll4skillCareer()" /></td>
							<td>${career.careerName}</td>
							<td>${career.careerAddress}</td>
							<td>${career.careerEntrance}</td>
							<td>${career.careerQuit}</td>
							<td>${career.careerWorking}</td>
							<td>${career.careerPosition}</td>
							<td>${career.careerApproval}</td>
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
					<a href="/LicenseList"	class="btn_del">전체리스트</a>
				</div>
>>>>>>> refs/remotes/origin/master
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
<<<<<<< HEAD
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
=======
				</thead>
				<tbody id="scholarLayer">
				<c:forEach var="career" items="${listmember}">
						<tr>
							<td scope="col"><input type="checkbox" name="scholarNo"
								id="checkAll4skillCareer" onclick="onCheckAll4skillCareer()" /></td>
							<td>${career.careerName}</td>
							<td>${career.careerAddress}</td>
							<td>${career.careerEntrance}</td>
							<td>${career.careerQuit}</td>
							<td>${career.careerWorking}</td>
							<td>${career.careerPosition}</td>
							<td>${career.careerApproval}</td>
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
					<a href="/Language" class="btn_add">추가</a> <a
						href="/LanguageList" class="btn_del">전체리스트</a>
				</div>
>>>>>>> refs/remotes/origin/master
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
<<<<<<< HEAD
				</c:forEach>
			</tbody>
		</table>


		<!-- 연수/봉사 -->
		<div class="section_top_area">
			<h4>연수/봉사 등록</h4>
			<!-- 우측버튼 -->
			<div class="sec_top_btn">
				<a href="javascript:addCareer('#')" class="btn_add">추가</a>
=======
				</thead>
				<tbody id="skillCertLayer">
				</tbody>
			</table>
			<!--// 어학 자격증 -->
			<!-- 수료교육 -->
			<div class="section_top_area">
				<h4>수료교육 등록</h4>
				<!-- 우측버튼 -->
				<div class="sec_top_btn">
					<a href="/Complete" class="btn_add">추가</a> <a
						href="/CompleteList" class="btn_del">전체리스트</a>
				</div>
>>>>>>> refs/remotes/origin/master
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
<<<<<<< HEAD
				</c:forEach>
			</tbody>
		</table>
=======
				</thead>
				<tbody id="skillCareerLayer">
					<c:forEach var="complete" items="${listcomplete}">
						<tr>
							<td scope="col"><input type="checkbox" name="scholarNo"
								id="checkAll4skillCareer" onclick="onCheckAll4skillCareer()" /></td>
							<td>${complete.completeName}</td>
							<td>${complete.completeStart}</td>
							<td>${complete.completeEnd}</td>
							<td>${complete.completeTime}</td>
							<td>${complete.completeAcademyName}</td>
							<td>${complete.completeNo}</td>
							<td>${complete.completeApproval}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<!--// 수료교육 등록 -->
			<!-- 연수/봉사 -->
			<div class="section_top_area">
				<h4>연수/봉사 등록</h4>
				<!-- 우측버튼 -->
				<div class="sec_top_btn">
					<a href="/Training" class="btn_add">추가</a> <a
						href="/TrainingList" class="btn_del">전체리스트</a>
				</div>
			</div>
			<table class="list_tbl_01 mb70" summary="연수봉사 추가">
				<caption>연수/봉사 등록</caption>
				<colgroup>
					<col style="width: 10%" />
					<col style="width: 65%" />
					<col style="width: 15%" />
					<col style="width: 10%" />
				</colgroup>
				<thead>
					<tr class="first">
					
						<th scope="col"><input type="checkbox" name="checkAll4prize"
							id="checkAll4prize" onclick="onCheckAll4prize()" /></th>
						<th scope="col">국가명/기간명/상세활동</th>
						<th scope="col">증빙방법</th>
						<th scope="col">진행상태</th>
					</tr>
				</thead>
				<tbody id="prizeLayer">
				</tbody>
			</table>
			<!--// 연수/봉사 -->
		</form>
>>>>>>> refs/remotes/origin/master
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