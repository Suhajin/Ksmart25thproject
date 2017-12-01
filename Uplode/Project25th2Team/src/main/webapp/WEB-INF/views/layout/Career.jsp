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

<!--
일단 패스
 
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery/jquery-1.7.2.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery/jquery-ui-1.9.2.custom.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery/jquery.alphanumeric.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery/jquery.form.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery/jquery.placeholder.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery/jquery.tmpl.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery/jquery.blockUI.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/kimsoft/kimsoft.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/common.dev.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/common.modal.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/date.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/gnb.js"></script>
<script type="text/javascript">
 
	gUserType = "PERSONAL";
		var CQWEB_SERVICE_NAME = "kipa";
	var CQWEBID_SERVICE_NAME = "kipa";
	var CQWEB_SERVICE_URL = "https://career.sw.or.kr/CQJava";
</script>
-->

<style type="text/css" media="screen">
.printOnly {
	display: none;
}
</style>
<style type="text/css" media="print">
#wrap {
	background: url(none) repeat-x 0 0 !important;
}

#container {
	width: 764px;
	background: url(none) repeat-x 0 0 !important;
}

.noprint {
	display: none;
}
</style>
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
			<h3>기술자신고</h3>
			<p>기술자 경력을 입력하고, 증빙방법을 선택해 주세요.</p>
		</div>
		<p class="reg_step_01">
			<img src="/images/individual/register_step_01.gif"
				alt="Step 01 경력 입력" />
		</p>
		<!-- 기본정보 -->
		<div class="base_info">
			<img src="/images/common/pic_sample.gif" alt="증명사진" />
			<div class="info_area">
				<p>
					&nbsp;&nbsp;${Member.memberName}<span>(${Member.memberId})</span> <a
						href="/personal/mem/per_modify.jsp" class="btn_type01">프로필수정</a>
				</p>
				<span><strong>전화번호</strong> : ${Member.memberPhone}</span> <span><strong>핸드폰번호</strong>
					: ${Member.memberPhone}</span> <span><strong>이메일</strong> :
					${Member.memberEmail}</span> <span class="address"><strong>주소</strong>
					: ${Member.memberAddress}</span>

			</div>
		</div>
		<!--// 기본정보 -->
		<!-- NCS안내문구 -->

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
					<a href="/edu" class="btn_add">추가</a> <a href="#" class="btn_del">삭제</a>
				</div>
			</div>
			<table class="list_tbl_01 mb70" summary="경력 추가">
				<caption>경력 등록</caption>
				<colgroup>
					<!-- 체크박스 -->
					<col style="width: 2%" />
					<!-- 최종학력 -->
					<col style="width: 17%" />
					<!-- 학교명 -->
					<col style="width: 32%" />
					<!-- 전공 -->
					<col style="width: 17%" />
					<!-- 부전공 -->
					<col style="width: 17%" />
					<!-- 졸업여부 -->
					<col style="width: 15%" />
				</colgroup>
				<thead>
					<tr class="first">
						<th scope="col"><input type="checkbox"
							name="checkAll4skillCareer" id="checkAll4skillCareer"
							onclick="onCheckAll4skillCareer()" /></th>
						<th scope="col">최종학력</th>
						<th scope="col">학교명</th>
						<th scope="col">전공</th>
						<th scope="col">부전공</th>
						<th scope="col">졸업여부</th>
					</tr>
				</thead>
				<tbody id="skillCareerLayer">
					<c:forEach var="Edu" items="${listedu}">
						<tr>
							<td scope="col"><input type="checkbox" name="scholarNo"
								id="checkAll4skillCareer" onclick="onCheckAll4skillCareer()" /></td>
							<td>${Edu.eduHighestLevel}</td>
							<td>${Edu.eduName}</td>
							<td>${Edu.eduMajor}</td>
							<td>${Edu.eduMinor}</td>
							<td>${Edu.eduGraduation}</td>
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
			</div>
			<table class="list_tbl_01 mb70" summary="경력 추가">
				<caption>경력 등록</caption>
				<colgroup>
					<!-- 체크박스 -->
					<col style="width: 2%" />
					<!-- 회사명 -->
					<col style="width: 14%" />
					<!-- 회사주소 -->
					<col style="width: 14%" />
					<!-- 입사일 -->
					<col style="width: 14%" />
					<!-- 퇴사일 -->
					<col style="width: 14%" />
					<!-- 재직여부 -->
					<col style="width: 9%" />
					<!-- 직급 -->
					<col style="width: 10%" />
					<!-- 증빙여부 -->
					<col style="width: 10%" />
				</colgroup>
				<thead>
					<tr class="first">
						<th scope="col"><input type="checkbox"
							name="checkAll4skillCareer" id="checkAll4skillCareer"
							onclick="onCheckAll4skillCareer()" /></th>
						<th scope="col">회사명</th>
						<th scope="col">회사주소</th>
						<th scope="col">입사일</th>
						<th scope="col">퇴사일</th>
						<th scope="col">재직여부</th>
						<th scope="col">직급</th>
						<th scope="col">증빙방법</th>
					</tr>
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
			</div>
			<table class="list_tbl_01 mb70" summary="자격증 추가">
				<caption>자격증 등록</caption>
				<colgroup>
					<col style="width: 10%" />
					<col style="width: 65%" />
					<col style="width: 15%" />
					<col style="width: 10%" />
				</colgroup>
				<thead>
					<tr class="first">
						<th scope="col"><input type="checkbox"
							name="checkAll4scholar" id="checkAll4scholar"
							onclick="onCheckAll4scholar()" /></th>
						<th scope="col">자격명/합격일자/발급기관</th>
						<th scope="col">증빙방법</th>
						<th scope="col">진행상태</th>
					</tr>
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
			</div>
			<table class="list_tbl_01 mb70" summary="어학 추가">
				<caption>어학 등록</caption>
				<colgroup>
					<col style="width: 10%" />
					<col style="width: 65%" />
					<col style="width: 15%" />
					<col style="width: 10%" />
				</colgroup>
				<thead>
					<tr class="first">
						<th scope="col"><input type="checkbox"
							name="checkAll4skillCert" id="checkAll4skillCert"
							onclick="onCheckAll4skillCert()" /></th>
						<th scope="col">어학명/발급기관/점수</th>
						<th scope="col">증빙방법</th>
						<th scope="col">진행상태</th>
					</tr>
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
			</div>
			<table class="list_tbl_01 mb70" summary="등록 추가">
				<caption>경력 등록</caption>
				<colgroup>
					<!-- 체크박스 -->
					<col style="width: 2%" />
					<!-- 과정명 -->
					<col style="width: 26%" />
					<!-- 과정시작 -->
					<col style="width: 10%" />
					<!-- 과정종료 -->
					<col style="width: 10%" />
					<!-- 수료시간 -->
					<col style="width: 10%" />
					<!-- 학원명 -->
					<col style="width: 24%" />
					<!-- 수료번호 -->
					<col style="width: 10%" />
					<!-- 승인여부 -->
					<col style="width: 10%" />
				</colgroup>
				<thead>
					<tr class="first">
						<th scope="col"><input type="checkbox"
							name="checkAll4skillCareer" id="checkAll4skillCareer"
							onclick="onCheckAll4skillCareer()" /></th>
						<th scope="col">과정명</th>
						<th scope="col">과정시작</th>
						<th scope="col">과정종료</th>
						<th scope="col">수료시간</th>
						<th scope="col">학원명</th>
						<th scope="col">수료번호</th>
						<th scope="col">승인여부</th>
					</tr>
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