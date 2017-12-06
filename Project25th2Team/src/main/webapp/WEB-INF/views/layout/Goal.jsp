<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>목표설정</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<style>
	.title {
			 margin: 100px 0;
		}
</style>
</head>
<body>
<!------------------------------------head-------------------------------------->
	<div>
		<c:import url="/WEB-INF/views/layout/Head.jsp">
		</c:import>
	</div>	
<!------------------------------------타이틀 영역---------------------------------->
	<div class="title">
		<center><h3>${Member.memberName}님 목표를 설정해주세요!</h3></center>
	</div>
<!------------------------------------FinalGoal-------------------------------------->
	<div>
		<c:import url="/WEB-INF/views/Goal_final/FinalGoal.jsp">
		</c:import>
	</div>
<!------------------------------------MidGoal-------------------------------------->
	<div>
		<c:import url="/WEB-INF/views/Goal_Mid/MidGoal.jsp">
		</c:import>
	</div>
<!------------------------------------DetailGoal-------------------------------------->
	<div>
		<c:import url="/WEB-INF/views/Detail_Goal/DetailGoal.jsp">
		</c:import>
	</div>
<!------------------------------------------------------------------------------------->
</body>
</html>
