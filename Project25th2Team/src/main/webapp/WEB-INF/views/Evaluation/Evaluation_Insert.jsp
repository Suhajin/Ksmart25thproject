<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>매니저 고객 만족도 조사</title>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>

</script>
<style>
ul {
	list-style: none;
	padding-left: 0px;
}
</style>


</head>
<body onload="fn_egov_init_QustnrRespondInfo()">
	<div>
		<c:import url="/WEB-INF/views/layout/Head.jsp">
		</c:import>
	</div>
	
	<div class="container">
	<form action="/EvaluationAdd" method="post">
		<input type="hidden" name="managerCode" value=${Member.memberCode}> 
		<input type="hidden" name="memberCode" value=${Member.memberCode}> 
		<input type="hidden" name="managerGradeCode" value=${Member.memberCode}>
		
			<br>
			<!-- 본문내용 -->
			<h1 align="center">컨설팅 고객만족도 조사</h1><br><br>
				<h5 >※평가기간 <input type="date" name="evaluationStart" > ~ <input type="date" name="evaluationEnd" > </h5>
			<br>
			<div class="panel panel-default">
				<h5>Q1. 매니저의 관리는 어느정도 만족 하십니까?</h5>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item">
							<input type="radio" name="evaluation1" value="5" id="evaluation1_5" /> 
							<label for="evaluation1_5">매우만족</label>
						</li>
						<li class="list-group-item">
							<input type="radio" name="evaluation1" value="4" id="evaluation1_4" /> 
							<label for="evaluation1_4">만족</label>
						</li>
						<li class="list-group-item">
							<input type="radio" name="evaluation1" value="3" id="evaluation1_3" /> 
							<label for="evaluation1_3">보통</label>
						</li>
						<li class="list-group-item">
							<input type="radio" name="evaluation1" value="2" id="evaluation1_2" /> 
							<label for="evaluation1_2">불만족</label>
						</li>
						<li class="list-group-item">
							<input type="radio" name="evaluation1" value="1" id="evaluation1_1" /> 
							<label for="evaluation1_1">매우불만족</label>
						</li>
					</ul>
				</div>
				<h5 class="sub_title04">Q2. 매니저의 응대는 어느정도 만족하십니까?</h5>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item">
							<input type="radio" name="evaluation2" value="5" id="evaluation2_5" /> 
							<label for="evaluation2_5">매우만족</label>
						</li>
						<li class="list-group-item">
							<input type="radio" name="evaluation2" value="4" id="evaluation2_4" /> 
							<label for="evaluation2_4">만족</label>
						</li>
						<li class="list-group-item">
							<input type="radio"	name="evaluation2" value="3" id="evaluation2_3" /> 
							<label for="evaluation2_3">보통</label>
						</li>
						<li class="list-group-item">
							<input type="radio" name="evaluation2" value="2" id="evaluation2_2" /> 
							<label for="evaluation2_2">불만족</label>
							</li>
						<li class="list-group-item">
						 	<input type="radio" name="evaluation2" value="1" id="evaluation2_1" /> 
							<label for="evaluation2_1">매우불만족</label>
						</li>
					</ul>
				</div>
				<h5 class="sub_title04">Q3. 매니저의 정보 전달내용은 어느정도 만족하십니까?</h5>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item">
							<input type="radio" name="evaluation3" value="5" id="evaluation3_5" /> 
							<label for="evaluation3_5">매우만족</label>
						</li>
						<li class="list-group-item">
							<input type="radio" name="evaluation3" value="4" id="evaluation3_4" /> 
							<label for="evaluation3_4">만족</label>
						</li>
						<li class="list-group-item">
							<input type="radio" name="evaluation3" value="3" id="evaluation3_3" /> 
							<label for="evaluation3_3">보통</label>
						</li>
						<li class="list-group-item">
							<input type="radio" name="evaluation3" value="2" id="evaluation3_2" /> 
							<label for="evaluation3_2">불만족</label>
						</li>
						<li class="list-group-item">
							<input type="radio" name="evaluation3" value="1" id="evaluation3_1" />
							 <label for="evaluation3_1">매우불만족</label>
						</li>
					</ul>
				</div>
				<h5 class="sub_title04">Q4. 매니저의 정보 컨설팅 방법은 어느정도 만족하십니까?</h5>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item">
							<input type="radio" name="evaluation4" value="5" id="evaluation4_5" /> 
							<label for="evaluation4_5">매우만족</label>
						</li>
						<li class="list-group-item">
							<input type="radio" name="evaluation4" value="4" id="evaluation4_4" /> 
							<label for="evaluation4_4">만족</label>
						</li>
						<li class="list-group-item">
							<input type="radio" name="evaluation4" value="3" id="evaluation4_3" /> 
							<label for="evaluation4_3">보통</label>
						</li>
						<li class="list-group-item">
							<input type="radio" name="evaluation4" value="2" id="evaluation4_2" /> 
							<label for="evaluation4_2">불만족</label>
						</li>
						<li class="list-group-item">
							<input type="radio" name="evaluation4" value="1" id="evaluation4_1" /> 
							<label for="evaluation4_1">매우불만족</label>
						</li>
					</ul>
				</div>
				<h4 class="panel-body">※ 기타의견 & 건의사항 ※</h4>
				<div class="form-group">
					<label for="evaluationMemo"></label>
					<textarea class="form-control" rows="5"	name="evaluationMemo" ></textarea>
				</div>
			</div>
			<div>
				<input type="submit" value="완료">
			</div>
			<!-- //본문내용 -->
			</form>
		</div>	
	<c:import url="/WEB-INF/views/layout/Hadan.jsp">
	</c:import>

</body>
</html>