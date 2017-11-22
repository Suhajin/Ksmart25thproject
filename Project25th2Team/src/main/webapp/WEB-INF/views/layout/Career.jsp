<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
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
					&#51204;&#51008;&#44221;<span>1983.08.28</span><a
						href="/personal/mem/per_modify.jsp" class="btn_type01">프로필수정</a>
				</p>
				<span><strong>전화번호</strong> : 010-2684-6719</span> <span><strong>핸드폰번호</strong>
					: 010-2684-6719</span> <span><strong>이메일</strong> :
					jullu07@naver.com</span> <span class="address"><strong>주소</strong>
					: (54898) &#51204;&#46972;&#48513;&#46020; &#51204;&#51452;&#49884;
					&#45909;&#51652;&#44396; &#44592;&#47536;&#45824;&#47196; 442
					&#44032;&#46041; 502&#54840; (&#44552;&#50516;&#46041;,
					&#44552;&#50516;&#49464;&#50896;&#50500;&#54028;&#53944;)</span> <span
					class="office"> <strong>현근무처</strong> : <a
					href="javascript:updateCurrWorkStatus()"
					class="btn_type01 w90 ml10">재직여부변경</a>
				</span>
			</div>
		</div>
		<!--// 기본정보 -->
		<!-- NCS안내문구 -->

		<form id="excelForm" name="excelForm" method="post"
			action="swc_write01_excel.jsp" target="iframe4dummy">
			<input type="hidden" name="memberNo" value="">
		</form>
		<form id="writeForm" name="writeForm" method="post" action="">
			<input type="hidden" name="callback" value="" /> <input type="hidden"
				name="key" value="142995715" />
			<!-- 최종학력 등록 -->
			<div class="section_top_area">
				<h4>최종학력 등록</h4>
				<!-- <a href="javascript:printCareer('workCareer')" class="btn_type02">근무경력확인서출력</a>  -->
				<!-- 우측버튼 -->
				<div class="sec_top_btn">
					<a href="#" class="btn_add">추가</a> <a href="#" class="btn_del">삭제</a>
				</div>
			</div>
			<table class="list_tbl_01 mb70" summary="학력 추가">
				<caption>최종학력</caption>
				<colgroup>
					<col style="width: 10%" />
					<col style="width: 65%" />
					<col style="width: 15%" />
					<col style="width: 10%" />
				</colgroup>
				<thead>
					<tr class="first">
						<th scope="col"><input type="checkbox"
							name="checkAll4workCareer" id="checkAll4workCareer"
							onclick="onCheckAll4workCareer()" /></th>
						<th scope="col">학교명/학과(전공)/학위</th>
						<th scope="col">증빙방법</th>
						<th scope="col">진행상태</th>
					</tr>
				</thead>
				<tbody id="workCareerLayer">
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
					<col style="width: 10%" />
					<col style="width: 65%" />
					<col style="width: 15%" />
					<col style="width: 10%" />
				</colgroup>
				<thead>
					<tr class="first">
						<th scope="col"><input type="checkbox"
							name="checkAll4skillCareer" id="checkAll4skillCareer"
							onclick="onCheckAll4skillCareer()" /></th>
						<th scope="col">회사명/근무기간/담당업무</th>
						<th scope="col">증빙방법</th>
						<th scope="col">진행상태</th>
					</tr>
				</thead>
				<tbody id="skillCareerLayer">
				</tbody>
			</table>
			<!--// 경력 등록 -->
			<!-- 자격증 등록 -->
			<div class="section_top_area">
				<h4>자격증 등록</h4>
				<!-- 우측버튼 -->
				<div class="sec_top_btn">
					<a href="javascript:addCareer('#')" class="btn_add">추가</a> <a
						href="javascript:removeCareer('#')" class="btn_del">삭제</a>
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
				</tbody>
			</table>
			<!--// 자격증 등록 -->
			<!-- 어학 등록 -->
			<div class="section_top_area">
				<h4>어학 등록</h4>
				<!-- 우측버튼 -->
				<div class="sec_top_btn">
					<a href="javascript:addCareer('#')" class="btn_add">추가</a> <a
						href="javascript:removeCareer('#')" class="btn_del">삭제</a>
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
					<a href="javascript:addCareer('#')" class="btn_add">추가</a> <a
						href="javascript:removeCareer('#')" class="btn_del">삭제</a>
				</div>
			</div>
			<table class="list_tbl_01 mb70" summary="수료교육 추가">
				<caption>수료교육 등록</caption>
				<colgroup>
					<col style="width: 10%" />
					<col style="width: 65%" />
					<col style="width: 15%" />
					<col style="width: 10%" />
				</colgroup>
				<thead>
					<tr class="first">
						<th scope="col"><input type="checkbox"
							name="checkAll4education" id="checkAll4education"
							onclick="onCheckAll4education()" /></th>
						<th scope="col">교육과정명/교육기간/교육기관명</th>
						<th scope="col">증빙방법</th>
						<th scope="col">진행상태</th>
					</tr>
				</thead>
				<tbody id="educationLayer">
				</tbody>
			</table>
			<!--// 수료교육 등록 -->
			<!-- 연수/봉사 -->
			<div class="section_top_area">
				<h4>연수/봉사 등록</h4>
				<!-- 우측버튼 -->
				<div class="sec_top_btn">
					<a href="javascript:addCareer('#')" class="btn_add">추가</a> <a
						href="javascript:removeCareer('#')" class="btn_del">삭제</a>
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
</body>
</html>