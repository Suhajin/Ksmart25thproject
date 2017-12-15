<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>목표설정</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<link rel="stylesheet" type="text/css"
   href="<%=request.getContextPath()%>/resources/css/Career_common.css" />
<link rel="stylesheet" type="text/css"
   href="<%=request.getContextPath()%>/resources/css/Career_jquery-ui.css" />
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
      width: 500px;
      background: url(none) repeat-x 0 0 !important;
   }
   
   .noprint {
      display: none;
   }
</style>

</head>

<body>
	<div>
		<c:import url="/WEB-INF/views/layout/Head.jsp">
		</c:import>
	</div>
		<div class="content" id="content">
	
			<div class="section_top_area">
				<br>
				<br>
				<span>
					<a href="/Goal" class="btn_add">대분류목표설정</a>
				</span>
				<br>
				<br>
				<h4>${Member.memberName}님의 중간 목표 설정</h4>
			
				<div class="sec_top_btn">
					<a href="/InsertMidGoalForm?memberId=${Member.memberId}" class="btn_add">추가</a>
					<a href="javascript:void(0)" class="btn_del midGoalModifyProcessButton">수정</a>
					<a href="javascript:void(0)" class="btn_del midGoalDelectProcessButton">삭제</a>
				</div>
			</div>
			<table class="list_tbl_01 mb70" summary="중간목표 카테고리">
			
				<caption>중간목표 카테고리</caption>
				<colgroup>
					<!-- 체크박스 -->
					<col style="width: 2%" />
					<!--  최종목표 -->
					<col style="width: 7%" />
					<!--  중간목표 -->
					<col style="width: 7%" />
					<!--  중간목표명 -->
					<col style="width: 15%" />
					<!--  공부방법 -->
					<col style="width: 7%" />
					<!--  자격증명 -->
					<col style="width: 10%" />
					<!--  중간계획 -->
					<col style="width: 15%" />
					<!-- 중간목표 시작일 -->
					<col style="width: 10%" />
					<!-- 중간목표 종료일 -->
					<col style="width: 10%" />
					<!-- 중간목표예산 -->
					<col style="width: 10%" />
					<!-- 등록일자 -->
					<col style="width: 10%" />
				</colgroup>
				<thead>
				
					<tr class="first"  align="center">
						<th scope="col"></th>
						<th scope="col">최종목표</th>
						<th scope="col">중간목표</th>
						<th scope="col">중간목표명</th>
						<th scope="col">공부방법</th>
						<th scope="col">자격증명</th>
						<th scope="col">중간계획</th>
						<th scope="col">중간목표<br>시작일</th>
						<th scope="col">중간목표<br>종료일</th>
						<th scope="col">중간목표<br>예산</th>
						<th scope="col">등록일자</th>
					</tr>
				</thead>
				
				<tbody>
				<c:forEach var="midGoal" items="${listMidGoal}">
						<tr>
							<td>
								<input type="checkbox" name="check" class="midGoalCheckTarget"
								 value="${midGoal.midGoalName}"
								 <c:if test="${empty midGoal.midGoalName}">
									 disabled="disabled"
								 </c:if>
								 />
							</td>
							<td>${midGoal.biggestGoalName}</td>
							<td>${midGoal.midGoalId}</td>
							<td>${midGoal.midGoalName}</td>
							<td>${midGoal.studyMethod}</td>
							<td>${midGoal.lisenceListCode}</td>
							<td>${midGoal.midGoalPlan}</td>
							<td>${midGoal.midGoalStart}</td>
							<td>${midGoal.midGoalEnd}</td>
							<td>${midGoal.midGoalBudget}</td>
							<td>${midGoal.midGoalDate}</td>
						</tr>
					</c:forEach>
				</tbody>
				
			</table>
		</div>
		<script>

			$(document).ready(function(){
				
				var midGoalCheckTargetObj = $('.midGoalCheckTarget');		
				midGoalCheckTargetObj.click(function(){
					midGoalCheckTargetObj.prop('checked',false);
					$(this).prop('checked',true);
				});
				
				$('.midGoalModifyProcessButton').click(function(){			
					var midGoal = $('.midGoalCheckTarget:checked').val();						
					if(midGoal != '' && midGoal != undefined){
						location.href='/UpdateMidGoal?midGoalName='+midGoal;
					}else{
						alert('대상을 선택해주세요.');
						return false;
					}
				});
				
				$('.midGoalDelectProcessButton').click(function(){			
					var midGoal = $('.midGoalCheckTarget:checked').val();						
					if(midGoal != '' && midGoal != undefined){
						location.href='/DeleteMidGoal?midGoalName='+midGoal;
					}else{
						alert('대상을 선택해주세요.');
						return false;
					}
				});
			});
		 	
		</script>
	</body>
</html>
