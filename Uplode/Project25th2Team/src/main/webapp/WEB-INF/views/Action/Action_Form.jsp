<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>실천목표 등록</title>
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

<body>
	<div class="content" id="content">

		<!-- 타이틀 영역 -->
		<div class="title_area">
			<h3>실천목표 등록</h3>
			<p>회원님의 실천 목표 내용을 입력해 주세요.</p>
		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<!-- <p class="reg_step_01">
			<img src="/images/individual/register_step_01.gif"
				alt="Step 01 경력 입력" />
		</p>

		<form id="excelForm" name="excelForm" method="post"
			action="swc_write01_excel.jsp" target="iframe4dummy">
			 <input type="hidden" name="memberNo" value="">
		</form> -->
		<form id="writeForm" name="writeForm" method="post" action="">
			<input type="hidden" name="callback" value="" /> <input
				type="hidden" name="key" value="142995715" />
			<!-- 최종학력 등록 -->
			<div class="section_top_area">
				<h4>실천목표등록</h4>
				<!-- <a href="javascript:printCareer('workCareer')" class="btn_type02">근무경력확인서출력</a>  -->
				<!-- 우측버튼 -->
				<div class="sec_top_btn">
					<a href="/actionAdd" class="btn_add">목표등록</a>
					<a href="#" class="btn_del">실천평가</a>
				</div>
			</div>
			<table class="list_tbl_01 mb70" summary="학력 추가" >
				<caption>상세목표</caption>
				<colgroup>
					<!-- 상세목표 -->
					<col style="width: 27%" />
					<!-- 실천날짜 -->
					<col style="width: 10%" />
					<!-- 시작시간 -->
					<col style="width: 10%" />
					<!-- 종료시간 -->
					<col style="width: 10%" />
					<!-- 총시간 -->
					<col style="width: 8%" />
					<!-- 실천결과 -->
					<col style="width: 27%" />
					<!-- 실천률 -->
					<col style="width: 8%" />
				</colgroup>
				<thead>
					<tr class="first">
						<th scope="col">상세목표</th>
						<th scope="col">실천날짜</th>
						<th scope="col">시작시간</th>
						<th scope="col">종료시간</th>
						<th scope="col">총시간</th>
						<th scope="col">실천결과</th>
						<th scope="col">실천률</th>
					</tr>
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