

home.jsp


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
   <title>Home</title>
     
   <!-- css -->
</head>
<body>

<c:import url="/WEB-INF/views/layout/Head.jsp">
	<c:param name="testName" value="홍길동"></c:param>
</c:import>

<h1>
   Project 25Th 2Team  세은다시
</h1>
<h2>
   Team Member : 전은경 진세은 조은희 서미나 한소연
</h2>

<P>  The time on the server is ${serverTime}. </P>

<!-- 스크립트  -->
</body>
</html>


