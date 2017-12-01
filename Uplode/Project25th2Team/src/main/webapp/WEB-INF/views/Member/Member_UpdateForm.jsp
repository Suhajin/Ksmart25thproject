<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.Connection"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>회원정보수정</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
    body {
        background: #f8f8f8;
        padding: 60px 0;
    }
    
    #login-form > div {
        margin: 15px 0;
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
<div class="container"  align="center">
    <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-success">
            <div class="panel-heading">
                <div class="panel-title"><h3>${Member.memberName}님&nbsp;&nbsp;회원정보수정</h3></div>
            </div>
            <div class="panel-body">
                <form id="memberupdate-form" action=/updateMemberAction method="post">
                	<div>
                		<input type="hidden" name="memberCode" value="${Member.memberCode}">
                	</div>
                    <div>
                    	<strong>ID</strong> 
                        <input type="text" class="form-control" name="memberId" value="${Member.memberId}" placeholder="${Member.memberId}" readonly="readonly">
                    </div>
                    <div>
                		<input type="hidden" name="memberPw" value="${Member.memberPw}">
                	</div>
                    <div>
                   		<strong>이름</strong> 
                        <input type="text" class="form-control" name="memberName" value="${Member.memberName}" placeholder="${Member.memberName}" readonly="readonly">
                    </div>
                     <div>
                   		<strong>전화번호</strong> 
                        <input type="text" class="form-control" name="memberPhone" placeholder="${Member.memberPhone}" autofocus>
                    </div>
                     <div>
                   		<strong>이메일</strong> 
                        <input type="text" class="form-control" class="form-control" name="memberEmail" placeholder="${Member.memberEmail}">
                    </div>
                     <div>
                   		<strong>우편주소</strong> 
                        <input type="text" id="sample3_postcode" class="form-control" name="memberPostNum" placeholder="${Member.memberPostNum}">
                        <input type="button" onclick="sample3_execDaumPostcode()" value="우편번호 찾기"><br>
						<div id="wrap"
							style="display: none; border: 1px solid; width: 500px; height: 300px; margin: 5px 0; position: relative">
							<img
								src="//t1.daumcdn.net/localimg/localimages/07/postcode/320/close.png"
								id="btnFoldWrap"
								style="cursor: pointer; position: absolute; right: 0px; top: -1px; z-index: 1"
								onclick="foldDaumPostcode()" alt="접기 버튼">
						</div>
                    </div>
                     <div>
                   		<strong>주소</strong> 
                        <input type="text" id="sample3_address" class="form-control" name="memberAddress" placeholder="${Member.memberAddress}">
                    </div>
                     <div>
                   		<strong>상세주소</strong> 
                        <input type="text" id="sample3_address" class="form-control" name="memberDetailAddress" placeholder="${Member.memberDetailAddress}">
                    </div>
                    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
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
						</script>
					<div>
                		<input type="hidden" name="memberGrade" value="${Member.memberGrade}">
                	</div>	
						<br>
                    <div>
                        <button type="submit" class="form-control btn btn-primary" class="form-control">수정완료</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!------------------------------------hadan-------------------------------------->
	<div>
		<c:import url="/WEB-INF/views/layout/Hadan.jsp">
		</c:import>
	</div>

</body>
</html>
