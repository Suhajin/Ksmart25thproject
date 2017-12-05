<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!------------------------------------head-------------------------------------->
	<div>
		<c:import url="/WEB-INF/views/layout/Head.jsp">
		</c:import>
	</div>
	<!------------------------------------mid-------------------------------------->
	<div>
		<c:import url="/WEB-INF/views/layout/mid.jsp">
		</c:import>
	</div>
	<!------------------------------------contents-------------------------------------->
	<br>
	<div>
		<form>
			<br> <br> <br> <br>
			<h1 align="center">최종목표 리스트</h1>
			<div align="center">
				<table border="1" align="center">
					<thead>
						<tr>
							<th>목표명</th>
							<th>최종목표 시작일</th>
							<th>최종목표 종료일</th>
							<th>총 목표 일수</th>
							<th>일일 투자시간</th>
							<th>총 투자시간</th>
							<th>전체예산</th>
							<th>메모</th>
							<th>등록일자</th>
						</tr>
						<c:forEach var="finalGoal" items="${FinalGoal}">
							<tr>
								<td>${finalGoal.finalGoalName}</td>
								<td>${finalGoal.finalGoalStart}</td>
								<td>${finalGoal.finalGoalEnd}</td>
								<td>${finalGoal.finalGoalDays}</td>
								<td>${finalGoal.finalGoalTimeADay}</td>
								<td>${finalGoal.finalGoalTotalTime}</td>
								<td>${finalGoal.finalGoalTotalBudget}</td>
								<td>${finalGoal.finalGoalNote}</td>
								<td>${finalGoal.finalGoalInputDate}</td>
							</tr>
						</c:forEach>
					</thead>
				</table>
			</div>
			<br> <br> <br> <br>
		</form>
	</div>
	<!------------------------------------Hadan-------------------------------------->
	<div>
		<c:import url="/WEB-INF/views/layout/Hadan.jsp">
		</c:import>
	</div>
</body>
</html>