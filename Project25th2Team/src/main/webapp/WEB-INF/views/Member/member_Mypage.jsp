<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Mypage</title>
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
			<img src="/images/common/pic_sample.gif" alt="증명사진" />
			<div class="info_area">
				<p>
					&nbsp;&nbsp;${Member.memberName}<span>(${Member.memberId})</span> <a
						href="/updateMember" class="btn_type01">프로필수정</a>
				</p>
				<span><strong>전화번호</strong> : ${Member.memberPhone}</span> <span><strong>핸드폰번호</strong>
					: ${Member.memberPhone}</span> <span><strong>이메일</strong> :
					${Member.memberEmail}</span> <span class="address"> <strong>우편번호</strong>
					: ${Member.memberPostNum}
				</span> <span><strong>주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;소</strong> :
					${Member.memberAddress} ${Member.memberDetailAddress}</span>
			</div>
		</div>
		<div>
			<table style="width: 100%; height: 50px; text-align: center;">
				<tbody>
					<tr>
						<td style="background-color: #3d3d5c;"><b><a
								href="/#?memberId=${Member.memberId}" style="color: white;">프로필
									수정</a></b></td>
						<td style="background-color: #3d3d5c;"><b><a
								href="/MyCareer?memberId=${Member.memberId}"
								style="color: white;">내 경력보기</a></b></td>
						<td style="background-color: #3d3d5c;"><b><a
								href="#?memberId=${Member.memberId}" style="color: white;">등록스케줄
									보기</a></b></td>
						<td style="background-color: #3d3d5c;"><b><a
								href="/actionForm?memberId=${Member.memberId}" style="color: white;">실천
									등록하기</a></b></td>
						<td style="background-color: #3d3d5c;"><b><a
								href="#?memberId=${Member.memberId}" style="color: white;">진행상황
									보기</a></b></td>
						<td style="background-color: #3d3d5c;"><b><a
								href="/Evaluation?memberId=${Member.memberId}" style="color: white;">매니저
									평가</a></b></td>

					</tr>
				</tbody>
			</table>
		</div>
	</div>



	<br>
	<br>
	<br>

	<div>
		<c:import url="/WEB-INF/views/layout/Hadan.jsp">
		</c:import>
	</div>

</body>
</html>