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
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/Career_common.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/Career_jquery-ui.css" />
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
		width: 500px;
		background: url(none) repeat-x 0 0 !important;
	}
	
	.noprint {
		display: none;
	}
</style>

</head>
<!------------------------------------head-------------------------------------->
	<div>
		<c:import url="/WEB-INF/views/layout/Head.jsp">
		</c:import>
	</div>
<!------------------------------------FinalGoal-------------------------------------->
<body>
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
		<c:import url="/WEB-INF/views/DetailGoal/DetailGoal.jsp">
		</c:import>
	</div>
<!------------------------------------------------------------------------------------->
</body>
</html>
