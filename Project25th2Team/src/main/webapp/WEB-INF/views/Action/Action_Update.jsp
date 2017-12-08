<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>평가등록수정</title>

<style>
input[type=text], select {
	width: 100%;
	padding: 12px 20px;
	margin: 2px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 10px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 20%;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

form {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 10px;
	margin: 30px;
}

p {
	text-align: center;
}

table {
	width: 50%;
}

th {
	row: 100px;
}

td { text-align:center;
	 font-weight:bold;
}
</style>
</head>
<body>
	<!-- head -->
	<div>
		<c:import url="/WEB-INF/views/layout/Head.jsp">
		</c:import>
	</div>
	<!-- main -->
	<br>
	<br>
	<br>
	<div>
		<h3 align="center">실천률평가등록</h3>
		<br>
		
		<form action="/updateAction" method="post">
			<input type="hidden" name="actionCode" value="${actionUpdateForm.actionCode}">
			<table align="center" border="1">
				<tr>
					<td>상세목표</td>
					<td><input type="text" name="detailGoalList"
						readonly="readonly" value="${actionUpdateForm.detailGoalList}"></td>
				</tr>
				<tr>
					<td>실천날짜</td>
					<td><input type="date" name="actionDate" 
						value="${actionUpdateForm.actionDate}"></td>
				</tr>
				<tr>
					<td>시작시간</td>
					<td><input type="time" name="actionStart"
						value="${actionUpdateForm.actionStart}"></td>
				</tr>
				<tr>
					<td>종료시간</td>
					<td><input type="time" name="actionEnd"
						value="${actionUpdateForm.actionEnd}"></td>
				</tr>
				<tr>
					<td>총시간</td>
					<td><input type="text" name="actionTime"
						value="${actionUpdateForm.actionTime}"></td>
				</tr>
				<tr>
					<td>실천결과</td>
					<td><input type="text" name="actionResult"
						value="${actionUpdateForm.actionResult}"></td>
				</tr>
				<%-- <tr>
					<td>실천률</td>
					<td><input type="text" name="actionRate"
						value="${actionUpdateForm.actionRate}&#37;"></td>
				</tr> --%>
				<tr>
					<td>실천률</td>
					<td>
						<select name="actionRate">
							<option value="0">====== 선택하세요 ======</option>
							<option value="20">실천률 20% 완료</option>
							<option value="40">실천률 40% 완료</option>
							<option value="60">실천률 60% 완료</option>
							<option value="80">실천률 80% 완료</option>
							<option value="100">실천률 100% 완료</option>
						</select>
					</td>
				</tr>
			</table>
			<center><input type="submit" value="수정" class="form-control btn btn-primary"><center>
		</form>
	
		<div>
			<c:import url="/WEB-INF/views/layout/Hadan.jsp">
			</c:import>
		</div>
</body>
</html>