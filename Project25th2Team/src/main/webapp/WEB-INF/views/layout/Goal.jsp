<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/Career_common.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/Career_jquery-ui.css" />
<title>목표설정</title>
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
			<h3>목표설정</h3>
			<p>목표를 설정해주세요.</p>
		</div><!-- 
		<p class="reg_step_01">
			<img src="/images/individual/register_step_01.gif"
				alt="Step 01 경력 입력" />
		</p> -->
		<!-- 기본정보 -->
		<div class="base_info">
			<!-- <img src="/images/common/pic_sample.gif" alt="증명사진" /> -->
			<div class="info_area">
				<p>
					&nbsp;&nbsp;${Member.memberName}<span>(${Member.memberId})</span> 
					<a href="/Update">프로필수정</a>
				</p>
				<span><strong>전화번호</strong> : ${Member.memberPhone}</span> 
				<span><strong>핸드폰번호</strong> : ${Member.memberPhone}</span> 
				<span><strong>이메일</strong> : ${Member.memberEmail}</span> 
				<span class="address"><strong>우편주소</strong> : ${Member.memberPostNum}</span>
				<span class="address"><strong>주소</strong> : ${Member.memberAddress}</span>
				<span class="address"><strong>상세주소</strong> : ${Member.memberDetailAddress}</span>
			</div>
		</div>
	<!--// 기본정보 -->

		<form id="excelForm" name="excelForm" method="post"
			action="swc_write01_excel.jsp" target="iframe4dummy">
			<input type="hidden" name="memberNo" value="">
		</form>
		<form id="writeForm" name="writeForm" method="post" action="">
			<input type="hidden" name="callback" value="" /> <input
				type="hidden" name="key" value="142995715" />
			<!-- 대분류 목표 등록 -->
			<div class="section_top_area">
				<h4>대분류 목표 등록</h4>
				<!-- 우측버튼 -->
				<div class="sec_top_btn">
					<a href="/biggestGoal" class="btn_add">추가</a> <a href="#" class="btn_del">삭제</a>
				</div>
			</div>
			<table class="list_tbl_01 mb70" summary="대분류목표">
				<caption>대분류 목표 등록</caption>
				<colgroup>
					<col style="width: 10%" />
					<col style="width: 40%" />
					<col style="width: 40%" />
					<col style="width: 10%" />
				</colgroup>
				<thead>
					<tr class="first">
						<th scope="col"><input type="checkbox"
							name="checkAll4workCareer" id="checkAll4workCareer"
							onclick="onCheckAll4workCareer()" /></th>
						<th scope="col">대분류 목표</th>
						<th scope="col">대분류목표 카테고리</th>
						<th scope="col">진행상태</th>
					</tr>
				</thead>
				<tbody id="workCareerLayer">
				</tbody>
			</table>
			<!-- 최종 목표설정 -->
			<div class="section_top_area">
				<h4>최종 목표설정</h4>
				<!-- 우측버튼 -->
				<div class="sec_top_btn">
					<a href="/CareerInsert" class="btn_add">추가</a> <a
						href="/CareerList" class="btn_del">전체 리스트</a>
				</div>
			</div>
			<table class="list_tbl_01 mb70" summary="최종 목표설정">
				<caption>최종 목표설정</caption>
				<colgroup>
					<!-- 체크박스 -->
					<col style="width: 2%" />
					<!-- 목표명 -->
					<col style="width: 10%" />
					<!-- 목표시작일 -->
					<col style="width: 10%" />
					<!-- 목표종료일 -->
					<col style="width: 10%" />
					<!-- 목표시간투자일수 -->
					<col style="width: 9%" />
					<!-- 하루투자시간 -->
					<col style="width: 9%" />
					<!-- 총투자시간 -->
					<col style="width: 9%" />
					<!-- 시스템등록일자 -->
					<col style="width: 10%" />
					<!-- 작성자 -->
					<col style="width: 9%" />
					<!-- 확인자 -->
					<col style="width: 9%" />
					<!-- 확인일자 -->
					<col style="width: 10%" />
					<!-- 비고 -->
					<col style="width: 10%" />
				</colgroup>
				<thead>
					<tr class="first">
						<th scope="col"><input type="checkbox"
							name="checkAll4skillCareer" id="checkAll4skillCareer"
							onclick="onCheckAll4skillCareer()" /></th>
						<th scope="col">목표명</th>
						<th scope="col">목표시작일</th>
						<th scope="col">목표종료일</th>
						<th scope="col">목표시간투자일수</th>
						<th scope="col">하루투자시간</th>
						<th scope="col">총투자시간</th>
						<th scope="col">시스템등록일자</th>
						<th scope="col">작성자</th>
						<th scope="col">확인자</th>
						<th scope="col">확인일자</th>
						<th scope="col">비고</th>
					</tr>
				</thead>
				<tbody id="skillCareerLayer">
				<c:forEach var="career" items="${listmember}">
					<tr>
						<td scope="col"><input type="checkbox"
							name="scholarNo" id="checkAll4skillCareer"
							onclick="onCheckAll4skillCareer()" /></td>
						<td>${career.careerName}</td>
						<td>${career.careerAddress}</td>
						<td>${career.careerEntrance}</td>
						<td>${career.careerQuit}</td>
						<td>${career.careerWorking} </td>
						<td>${career.careerPosition} </td>
						<td>${career.careerApproval} </td>
						<td>${career.careerApproval} </td>
						<td>${career.careerApproval} </td>
						<td>${career.careerApproval} </td>
						<td>${career.careerApproval} </td>
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