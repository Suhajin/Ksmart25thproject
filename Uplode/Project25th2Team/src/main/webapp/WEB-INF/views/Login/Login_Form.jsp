<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입</title>
<!-- 
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css" rel="stylesheet"> -->
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
<!----------------------------------------------상단메뉴시작시작시작시작--------------------------------------------------------->
	<div>
		<c:import url="/WEB-INF/views/layout/Head.jsp">
		</c:import>
	</div>
<!-----------------------------------------페이지 첫 이미지 welcome Consulting for you------------------------------------------>
	<div>
		<header class="masthead">
		<div class="overlay">
			<div class="container">
				<h1 class="display-1 text-white">Welcome!</h1>
				<h2 class="display-4 text-white">Consulting for you.</h2>
			</div>
		</div>
		</header>
	</div>
<!------------------------------------------로그인 폼 시작시작시작-------------------------------------------------------------->
<br>
<div class="container"  align="center">
    <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-success">
            <div class="panel-heading">
                <div class="panel-title">Welcome to CMS service</div>
            </div>
            <div class="panel-body">
                <form id="login-form" action=/LoginAction method="post">
                    <div>
                        <input type="text" class="form-control" name="memberId" placeholder="Id" autofocus >
                    </div>
                    <div>
                        <input type="password" class="form-control" name="memberPw" placeholder="Password">
                    </div>
                    <div>
                        <button type="submit" class="form-control btn btn-primary">Login</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!------------------------------------------하단하단하단하단하단하단하단하단하단-------------------------------------------->
	<div>
		<c:import url="/WEB-INF/views/layout/Hadan.jsp">
		</c:import>
	</div>
</body>
</html>


