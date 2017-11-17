<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>One Page Wonder - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">
	
    

    <!-- Custom styles for this template -->
    
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/one-page-wonder.css">

  </head>

  <body>
  
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">Start Bootstrap</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">회사안내</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">공지사항</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">로그인</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">회원가입</a>
            </li>
            
            <li class="dropdown">
          <a class="nav-link" data-toggle="dropdown" href="#">등록
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">최종학력</a></li>
            <li><a href="#">경력등록</a></li>
            <li><a href="#">등록(자격증)</a></li> 
            <li><a href="#">등록(어학)</a></li>
            <li><a href="#">등록(수료)</a></li>
            <li><a href="#">등록(해외/봉사)</a></li>
          </ul>
        </li>
          </ul>
        </div>
      </div>
    </nav>
  
  
    <!-- Bootstrap core JavaScript -->
    
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    

  </body>

</html>