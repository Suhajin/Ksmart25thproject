<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.sql.Connection"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>목표설정</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<link rel="stylesheet" type="text/css" 	href="<%=request.getContextPath()%>/resources/css/Career_common.css" />
<link rel="stylesheet" type="text/css" 	href="<%=request.getContextPath()%>/resources/css/Career_jquery-ui.css" />


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

			<div class="section_top_area">
				<h4>중간목표 카테고리</h4>
			
				<div class="sec_top_btn">
					<a href="/InsertMidGoalForm" class="btn_add">추가</a>
					<a href="#" class="btn_del">삭제</a>
				</div>
			</div>
			<table class="list_tbl_01 mb70" summary="대분류목표 카테고리">
				<caption>대분류 목표 카테고리</caption>
				<colgroup>
					<!-- 체크박스 -->
					<col style="width: 2%" />
					<!-- 아이디 -->
					<col style="width: 17%" />
					<!-- 이름 -->
					<col style="width: 32%" />
					<!-- 대분류 목표명 -->
					<col style="width: 17%" />
					<!-- 중분류 목표명 -->
					<col style="width: 17%" />
				</colgroup>
				<thead>
					<tr class="first">
						<th scope="col"><input type="checkbox"
							name="checkAll4skillCareer" id="checkAll4skillCareer"
							onclick="onCheckAll4skillCareer()" /></th>
						<th scope="col">아이디</th>
						<th scope="col">이름</th>
						<th scope="col">대분류목표명</th>
						<th scope="col">중분류목표명</th>
					</tr>
				</thead>
				<tbody id="skillCareerLayer">
					<c:forEach var="Goal" items="${listedu}">
						<tr>
							<td scope="col"><input type="checkbox" name="scholarNo"
								id="checkAll4skillCareer" onclick="onCheckAll4skillCareer()" /></td>
							<td>${Edu.eduHighestLevel}</td>
							<td>${Edu.eduName}</td>
							<td>${Edu.eduMajor}</td>
							<td>${Edu.eduMinor}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</body>
</html>
