<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>매니저 고객 만족도 조사</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
	//초기화
	function fn_egov_init_QustnrRespondInfo() {
	}
	//목록으로 가기
	function fn_egov_list_QustnrRespondInfo() {
		location.href = "Member/Member_Mypage";
	}
	//저장처리화면
	function fn_egov_save_QustnrRespondInfo() {
		var varFrom = document.qustnrRespondInfoManage;

		//설문정보 Validtation

		if ((!fn_egov_selectBoxChecking("evaluation1"))) {
			alert('1번 설문문항을 작성해 주세요!');
			document.getElementsByName("evaluation1")[0].focus();
			return;
		}

		if ((!fn_egov_selectBoxChecking("evaluation2"))) {
			alert('2번 설문문항을 작성해 주세요!');
			document.getElementsByName("evaluation2")[0].focus();
			return;
		}

		if ((!fn_egov_selectBoxChecking("evaluation3"))) {
			alert('3번 설문문항을 작성해 주세요!');
			document.getElementsByName("evaluation3")[0].focus();
			return;
		}

		if ((!fn_egov_selectBoxChecking("evaluation4"))) {
			alert('4번 설문문항을 작성해 주세요!');
			document.getElementsByName("evaluation4")[0].focus();
			return;
		}

		if (confirm("저장하시겠습니까?")) {

			varFrom.action = "Member/Member_Mypage";
			varFrom.submit();
		}
	}
	//라디오박스 : 몇개선택했는데 체크해주는함수
	function fn_egov_checkbox_amout_max(sbName) {
		var FLength = document.getElementsByName(sbName).length;

		var reuslt = false;
		var reusltCount = 0;
		for (var i = 0; i < FLength; i++) {
			if (document.getElementsByName(sbName)[i].checked == true) {
				reusltCount++;
			}
		}

		return reusltCount;

	}
	//라디오박스 : 최대선택건수 체크
	function fn_egov_checkbox_amout(sbName, sbCount, sbObj) {

		var FLength = document.getElementsByName(sbName).length;

		var reuslt = false;
		var reusltCount = 0;
		for (var i = 0; i < FLength; i++) {
			if (document.getElementsByName(sbName)[i].checked == true) {
				reusltCount++;
			}
		}

		if (reusltCount > sbCount) {
			alert("최대선택건수 [" + sbCount + "]건을  초과하였습니다!");
			sbObj.checked = false;
			return;
		}
	}

	//select 박스 선택했는 찾는 함수

	function fn_egov_selectBoxChecking(sbName) {

		var FLength = document.getElementsByName(sbName).length;

		var reuslt = false;
		for (var i = 0; i < FLength; i++) {
			if (document.getElementsByName(sbName)[i].checked == true) {
				reuslt = true;
			}
		}

		return reuslt;
	}
	//select박스 값 컨트롤 함수
	function fn_egov_SelectBoxValue(sbName) {
		var FValue = "";
		for (var i = 0; i < document.getElementById(sbName).length; i++) {
			if (document.getElementById(sbName).options[i].selected == true) {

				FValue = document.getElementById(sbName).options[i].value;
			}
		}

		return FValue;
	}
	//radio박스 체크 박스
	function fn_egov_RadioBoxValue(sbName) {
		var FLength = document.getElementsByName(sbName).length;
		var FValue = "";
		for (var i = 0; i < FLength; i++) {
			if (document.getElementsByName(sbName)[i].checked == true) {
				FValue = document.getElementsByName(sbName)[i].value;
			}
		}

		return FValue;
	}
//-->
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
	<form action="/EvaluationAdd" method="post" name="EvaluationAdd">
		<input type="hidden" name="memberCode"
			value=${Evaluation.evaluationCode}> <input type="hidden"
			name="memberCode" value=${Evaluation.managerCode}> <input
			type="hidden" name="memberCode" value=${Evaluation.memberCode}>
		<input type="hidden" name="memberCode"
			value=${Evaluation.managerGradeCode}>
		<div class="container">
			<br>
			<!-- 본문내용 -->
			<h1>컨설팅 고객만족도 조사</h1>
			<br> <br>
			<br>
			<div class="panel panel-default">
				<h5>Q1. 매니저의 관리는 어느정도 만족 하십니까?</h5>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item"><input type="radio"
							name="evaluation1" value="5" id="evaluation1_5" /> <label
							for="evaluation1_5">매우만족</label></li>
						<li class="list-group-item"><input type="radio"
							name="evaluation1" value="4" id="evaluation1_4" /> <label
							for="evaluation1_4">만족</label></li>
						<li class="list-group-item"><input type="radio"
							name="evaluation1" value="3" id="evaluation1_3" /> <label
							for="evaluation1_3">보통</label></li>
						<li class="list-group-item"><input type="radio"
							name="evaluation1" value="2" id="evaluation1_2" /> <label
							for="evaluation1_2">불만족</label></li>
						<li class="list-group-item"><input type="radio"
							name="evaluation1" value="1" id="evaluation1_1" /> <label
							for="evaluation1_1">매우불만족</label></li>
					</ul>
				</div>
				<br>
				<br>
				<h5 class="sub_title04">Q2. 매니저의 응대는 어느정도 만족하십니까?</h5>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item"><input type="radio"
							name="evaluation2" value="5" id="evaluation2_5" /> <label
							for="evaluation2_5">매우만족</label></li>
						<li class="list-group-item"><input type="radio"
							name="evaluation2" value="4" id="evaluation2_4" /> <label
							for="evaluation2_4">만족</label></li>
						<li class="list-group-item"><input type="radio"
							name="evaluation2" value="3" id="evaluation2_3" /> <label
							for="evaluation2_3">보통</label></li>
						<li class="list-group-item"><input type="radio"
							name="evaluation2" value="2" id="evaluation2_2" /> <label
							for="evaluation2_2">불만족</label></li>
						<li class="list-group-item"><input type="radio"
							name="evaluation2" value="1" id="evaluation2_1" /> <label
							for="evaluation2_1">매우불만족</label></li>
					</ul>
				</div>
				<br>
				<br>
				<h5 class="sub_title04">Q3. 매니저의 정보 전달내용은 어느정도 만족하십니까?</h5>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item"><input type="radio"
							name="evaluation3" value="5" id="evaluation3_5" /> <label
							for="evaluation3_5">매우만족</label></li>
						<li class="list-group-item"><input type="radio"
							name="evaluation3" value="4" id="evaluation3_4" /> <label
							for="evaluation3_4">만족</label></li>
						<li class="list-group-item"><input type="radio"
							name="evaluation3" value="3" id="evaluation3_3" /> <label
							for="evaluation3_3">보통</label></li>
						<li class="list-group-item"><input type="radio"
							name="evaluation3" value="2" id="evaluation3_2" /> <label
							for="evaluation3_2">불만족</label></li>
						<li class="list-group-item"><input type="radio"
							name="evaluation3" value="1" id="evaluation3_1" /> <label
							for="evaluation3_1">매우불만족</label></li>
					</ul>
				</div>
				<br>
				<br>
				<h5 class="sub_title04">Q4. 매니저의 정보 컨설팅 방법은 어느정도 만족하십니까?</h5>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item"><input type="radio"
							name="evaluation4" value="5" id="evaluation4_5" /> <label
							for="evaluation4_5">매우만족</label></li>
						<li class="list-group-item"><input type="radio"
							name="evaluation4" value="4" id="evaluation4_4" /> <label
							for="evaluation4_4">만족</label></li>
						<li class="list-group-item"><input type="radio"
							name="evaluation4" value="3" id="evaluation4_3" /> <label
							for="evaluation4_3">보통</label></li>
						<li class="list-group-item"><input type="radio"
							name="evaluation4" value="2" id="evaluation4_2" /> <label
							for="evaluation4_2">불만족</label></li>
						<li class="list-group-item"><input type="radio"
							name="evaluation4" value="1" id="evaluation4_1" /> <label
							for="evaluation4_1">매우불만족</label></li>
					</ul>
				</div>

				<h3 class="panel-body">************* 기타의견 & 건의사항
					******************</h3>

				<div class="panel-body">
					<label for="evaluationMemo" class="blind"></label>
					<textarea name="evaluationMemo" rows="8" cols=70
						id="evaluationMemo"></textarea>
				</div>
				<br> <br>
			</div>

			<div>
				<a  type="button" href="#"
					onclick="fn_egov_save_QustnrRespondInfo(document.forms[0]); return false;"
					class="btn btn-default">설문완료</a>
			</div>
			<!-- //본문내용 -->
		</div>

		<input name="qestnrId" id="qestnrId" type="hidden"
			value="QMANAGE_000000000001" /> <input name="cmd" type="hidden"
			value="save" />
	</form>
	<c:import url="/WEB-INF/views/layout/Hadan.jsp">
	</c:import>

</body>
</html>