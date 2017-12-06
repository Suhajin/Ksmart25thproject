<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>대분류 목표 설정 페이지</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/Career_common.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/Career_jquery-ui.css" />

</head>

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
			<h3>${Member.memberName}님&nbsp;&nbsp;환영합니다!</h3>
		</div>
		<!-- 기본정보 -->
		<div class="base_info">
			<div class="info_area">
			<c:forEach var="FinalGoal" items="${listFinalGoal}">
				<p>
					&nbsp;&nbsp;${FinalGoal.memberName}<span>(${FinalGoal.memberId})</span> 
				</p>
				<span><strong>대분류 목표명</strong> : ${FinalGoal.biggestGoalName}</span> 
				<span><strong>목표명</strong> : ${FinalGoal.finalGoalName}</span> 
				<span><strong>최종목표 시작일</strong> : ${FinalGoal.finalGoalStart}</span> 
				<span><strong>최종목표 종료일</strong> : ${FinalGoal.finalGoalEnd}</span> 
				<span><strong>총 목표 일수</strong> : ${FinalGoal.finalGoalDays}</span>
				<span><strong>총 투자시간</strong> : ${FinalGoal.finalGoalTotalTime}</span>
				<span><strong>전체예산</strong> : ${FinalGoal.finalGoalTotalBudget}</span>
				<span><strong>메모</strong> : ${FinalGoal.finalGoalNote}</span>
			</c:forEach>
			</div>
			
		</div>
		<div>
			<table style="width: 100%; height: 50px; text-align: center;">
				<tbody>
					<tr>
						<td style="background-color: #3d3d5c;"><b><a
								href="/#?memberId=${Member.memberId}" style="color: white;">중간목표설정</a></b></td>
						<td style="background-color: #3d3d5c;"><b><a
								href="/MyCareer?memberId=${Member.memberId}" style="color: white;">상세목표설정</a></b></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>