<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>목표설정</title>
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
	width: 50%;
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
	width: 100%;
}

th {
	row: 100px;
}
</style>
</head>
<body>
	<!------------------------------------head-------------------------------------->
	<div>
		<c:import url="/WEB-INF/views/layout/Head.jsp">
		</c:import>
	</div>
	<!------------------------------------main-------------------------------------->
	<br>
	<div class="container">
		<h3 align="center">중간목표 등록</h3>
		<br>

		<form action="/AddMidGoal" method="post">
			<c:forEach var="FinalGoal" items="${listMidGoalForm}">
				<table>

					<tr>
						<td><input type="hidden" name="finalGoalCode"
							value=${FinalGoal.finalGoalCode}></td>
					</tr>
					<tr>
						<td><input type="hidden" name="biggestGoalCode"
							value=${FinalGoal.biggestGoalCode}></td>
					</tr>
					<tr>
						<td align="center"><label for="goalTotalCode">${FinalGoal.finalGoalName}를위한
								목표</label></td>
						<c:choose>
							<c:when test="${FinalGoal.biggestGoalCode eq 'bcc_001'}">
								<td><select name="goalTotalCode">
										<option value="null">==선택하세요==</option>
										<option value="total_001">어학</option>
										<option value="total_002">자격증</option>
										<option value="total_003">교육</option>
										<option value="total_004">기타</option>
								</select></td>
							</c:when>
							<c:when test="${FinalGoal.biggestGoalCode eq 'bcc_002'}">
								<td><select name="goalTotalCode">
										<option value="null">==선택하세요==</option>
										<option value="total_005">어학</option>
										<option value="total_006">자격증</option>
										<option value="total_007">교육</option>
										<option value="total_008">기타</option>
								</select></td>
							</c:when>
							<c:when test="${FinalGoal.biggestGoalCode eq 'bcc_003'}">
								<td><select name="goalTotalCode">
										<option value="null">==선택하세요==</option>
										<option value="total_009">어학</option>
										<option value="total_010">자격증</option>
										<option value="total_011">교육</option>
										<option value="total_012">기타</option>
								</select></td>
							</c:when>
							<c:when test="${FinalGoal.biggestGoalCode eq 'bcc_004'}">
								<td><select name="goalTotalCode">
										<option value="null">==선택하세요==</option>
										<option value="total_013">어학</option>
										<option value="total_014">자격증</option>
										<option value="total_015">교육</option>
										<option value="total_016">기타</option>
								</select></td>
							</c:when>
						</c:choose>
					</tr>
					<tr>
						<td><input type="hidden" name="memberCode"
							value=${Member.memberCode}></td>
					</tr>
					<tr>
						<td><input type="hidden" name="managerCode"
							value=${Member.memberCode}></td>
					</tr>
					<tr>
						<td><input type="hidden" name="managerGradeCode"
							value=${Member.memberCode}></td>
					</tr>
					<tr>
						<td align="center"><label for="midGoalName">중간목표명</label></td>
						<td><input type="text" name="midGoalName"
							placeholder="ex)토익 990점 "></td>
					</tr>
					<tr>
						<td align="center"><label for="studyCode">공부방법</label></td>
						<td><select name="studyCode">
								<option value="null">==선택하세요==</option>
								<option value="study_01">학원</option>
								<option value="study_02">독학</option>
								<option value="study_03">인강</option>
								<option value="study_04">과외</option>
								<option value="study_05">기타</option>
						</select></td>
					</tr>
					<tr>
						<td align="center"><label for="lisenceListCode">자격증명</label></td>
						<td><input type="text" name="lisenceListCode"
							placeholder="ex)정보처리기사"></td>
					</tr>
					<tr>
						<td align="center"><label for="midGoalPlan">중간목표계획</label></td>
						<td><input type="text" name="midGoalPlan"
							placeholder="ex)하루에 RC 20문제 풀기"></td>
					</tr>
					<tr>
						<td align="center"><label for="midGoalStart">중간목표 시작일</label></td>
						<td><input type="date" name="midGoalStart"></td>
					</tr>
					<tr>
						<td align="center"><label for="midGoalEnd">중간목표 종료일</label></td>
						<td><input type="date" name="midGoalEnd"></td>
					</tr>
					<tr>
						<td align="center"><label for="midGoalBudget">중간목표 예산</label></td>
						<td align="left"><input type="text" name="midGoalBudget"></td>
					</tr>

				</table>
			</c:forEach>
			<div align="center">
				<input type="submit" value="submit"
					class="form-control btn btn-primary">
			</div>
		</form>
	</div>
	<!------------------------------------Hadan-------------------------------------->
	<div>
		<c:import url="/WEB-INF/views/layout/Hadan.jsp">
		</c:import>
	</div>
</body>
</html>
