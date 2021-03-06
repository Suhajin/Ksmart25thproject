<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
input[type=text], select {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

table {
	width: 40%;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>
	<div>
		<c:import url="/WEB-INF/views/layout/Head.jsp">
		</c:import>
	</div>
	<div>
		<header class="masthead">
		<div>
		<c:import url="/WEB-INF/views/layout/mid.jsp">
		</c:import>
	</div>
		</header>
		<br> <br>
		<h4 align="center">안녕하세요 매니저 등록을 해주세요!</h4>
		<br> <br>
		<form align="center" action="/addmanager" method="post">
			<table align="center" border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="memberId"
						placeholder="회원가입을 위한 Id를 입력하세요"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="text" name="memberPw"
						placeholder="회원가입을 위한 Pw를 입력하세요"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="memberName"
						placeholder="회원가입을 위한 Name를 입력하세요"></td>
				</tr>
				<tr>
					<td>담당부서</td>
					<td><select name="managerDepartment">
							<option>기타부</option>
							<option>관리부</option>
							<option>어학부</option>
							<option>자격증부</option>
							<option>교육부</option>
					</select></td>
				</tr>
								<tr>
					<td>매니저 등급</td>
					<td><select name="managerGradeCode">
							<option name="managerGradeCode" value="mg_05">수습 매니저</option>
							<option name="managerGradeCode" value="mg_04">담당 매니저</option>
							<option name="managerGradeCode" value="mg_03">담당 부실장</option>
							<option name="managerGradeCode" value="mg_02">담당 실장</option>
							<option name="managerGradeCode" value="mg_01">총괄매니저</option>
					</select></td>
				</tr>
				<tr>
					<td>휴대폰</td>
					<td><input type="text" name="memberPhone"
						placeholder="회원가입을 위한 Phone를 입력하세요"></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="memberEmail"
						placeholder="회원가입을 위한 Email를 입력하세요"></td>
				</tr>
				<tr>
					<td>회원 주소</td>
					<td><input type="text" id="sample3_postcode"
						name="memberPostNum" placeholder="우편번호"> <input
						type="button" onclick="sample3_execDaumPostcode()" value="우편번호 찾기"><br>
						<div id="wrap"
							style="display: none; border: 1px solid; width: 500px; height: 300px; margin: 5px 0; position: relative">
							<img
								src="//t1.daumcdn.net/localimg/localimages/07/postcode/320/close.png"
								id="btnFoldWrap"
								style="cursor: pointer; position: absolute; right: 0px; top: -1px; z-index: 1"
								onclick="foldDaumPostcode()" alt="접기 버튼">
						</div>
						<div>
							<input type="text" id="sample3_address" class="d_form large"
								name="memberAddress" placeholder="주소">
						</div>
						<div>
							<input type="text" id="sample3_address" class="d_form large"
								name="memberDetailAddress" placeholder="상세주소">
						</div> <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
						<script>
							// 우편번호 찾기 찾기 화면을 넣을 element
							var element_wrap = document.getElementById('wrap');
							function foldDaumPostcode() {
								// iframe을 넣은 element를 안보이게 한다.
								element_wrap.style.display = 'none';
							}
							function sample3_execDaumPostcode() {
								// 현재 scroll 위치를 저장해놓는다.
								var currentScroll = Math.max(
										document.body.scrollTop,
										document.documentElement.scrollTop);
								new daum.Postcode(
										{
											oncomplete : function(data) {
												// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
												// 각 주소의 노출 규칙에 따라 주소를 조합한다.
												// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
												var fullAddr = data.address; // 최종 주소 변수
												var extraAddr = ''; // 조합형 주소 변수
												// 기본 주소가 도로명 타입일때 조합한다.
												if (data.addressType === 'R') {
													//법정동명이 있을 경우 추가한다.
													if (data.bname !== '') {
														extraAddr += data.bname;
													}
													// 건물명이 있을 경우 추가한다.
													if (data.buildingName !== '') {
														extraAddr += (extraAddr !== '' ? ', '
																+ data.buildingName
																: data.buildingName);
													}
													// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
													fullAddr += (extraAddr !== '' ? ' ('
															+ extraAddr + ')'
															: '');
												}
												// 우편번호와 주소 정보를 해당 필드에 넣는다.
												document
														.getElementById('sample3_postcode').value = data.zonecode; //5자리 새우편번호 사용
												document
														.getElementById('sample3_address').value = fullAddr;
												// iframe을 넣은 element를 안보이게 한다.
												// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
												element_wrap.style.display = 'none';
												// 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
												document.body.scrollTop = currentScroll;
											},
											// 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
											onresize : function(size) {
												element_wrap.style.height = size.height
														+ 'px';
											},
											width : '100%',
											height : '100%'
										}).embed(element_wrap);
								// iframe을 넣은 element를 보이게 한다.
								element_wrap.style.display = 'block';
							}
						</script></td>
			</table>
			<input type="hidden" name="memberGrade" value="manager"
				readonly="readonly"> <br> <br> <input
				type="submit" value="회원가입">
		</form>
	</div>
	<br>
	<br>
	<div>
		<c:import url="/WEB-INF/views/layout/Hadan.jsp">
		</c:import>
	</div>
</body>
</html>