<!DOCTYPE html>
<%@page import="org.springframework.web.context.annotation.SessionScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>


<!-- Bootstrap core CSS -->
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">

<!-- Custom styles for this template -->
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/css/one-page-wonder.css">

<!-- Bootstrap core JavaScript -->


<script
   src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
<script
   src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<script>
   
   $(document).ready(function(){      
      $('.nav-link').click(function(){
         var menuTarget = $(this).parent().find('ul.dropdown-menu');   
         if(menuTarget.length > 0){            
            $('ul.dropdown-menu').hide();
            menuTarget.show();
         }
      });
   });
   
</script>

   <!-- Navigation -->
   <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
         <a class="navbar-brand" href="/home">Home</a>
         <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarResponsive" aria-controls="navbarResponsive"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">               
               <c:choose>
                  <c:when test="${Member.memberGrade eq 'member'}">
                     <li class="nav-item active"><a class="nav-link" href="/home">Home
                     <span class="sr-only">(current)</span>
                     </a></li>
                     <li class="nav-item"><a class="nav-link" href="/Information">회사안내</a></li>
                     <li class="nav-item"><a class="nav-link" href="/Notice">공지사항</a></li>
                     <li class="nav-item"><a class="nav-link" href="/Goal">목표설정</a></li>
                     <li class="nav-item"><a class="nav-link" href="/Scheduler">스케줄등록</a></li>
                     <li class="nav-item"><a class="nav-link"
                        href="/MyPage">마이페이지</a></li>
                     <li class="nav-item"><a class="nav-link" href="/Logout">로그아웃</a></li>


                  </c:when>
                  <c:when test="${Member.memberGrade eq 'manager'}">
                     <li class="nav-item active"><a class="nav-link" href="/home">Home<span
                           class="sr-only">(current)</span>
                     </a></li>
                     <li class="nav-item"><a class="nav-link" href="/Information">회사안내</a></li>
                     <li class="nav-item"><a class="nav-link" href="/Notice">공지사항</a></li>
                     <li class="nav-item"><a class="nav-link" href="#">회원관리</a></li>
                     <li class="nav-item"><a class="nav-link" href="#">스케줄관리</a></li>
                     <li class="dropdown"><a class="nav-link"
                        data-toggle="dropdown" href="#">개인관리 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                           <li><a href="#">개인정보</a></li>
                           <li><a href="#">실적내역</a></li>
                           <li><a href="#">상벌내역</a></li>
                           <li><a href="#">급여내역</a></li>
                        </ul></li>
                     <li class="nav-item"><a class="nav-link" href="/Logout">로그아웃</a></li>
                  </c:when>
                  <c:when test="${Member.memberGrade eq 'master'}">
                     <li class="nav-item active"><a class="nav-link" href="/home">Home<span
                           class="sr-only">(current)</span>
                     </a></li>
                     <li class="nav-item"><a class="nav-link" href="/Information">회사안내</a></li>
                     <li class="nav-item"><a class="nav-link" href="/Notice">공지사항</a></li>
                     <li class="dropdown">
                        <a class="nav-link" data-toggle="dropdown" href="#">매니저 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                           <li><a href="#">매니저등록</a></li>
                           <li><a href="/ManagerList">매니저관리</a></li>
                           <li><a href="#">매니저실적관리</a></li>
                           <li><a href="#">급여관리</a></li>
                        </ul></li>
                     <li class="dropdown">
                        <a class="nav-link" data-toggle="dropdown">회원관리 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                           <li><a href="/MemberList">회원리스트</a></li>
                           <li><a href="/MemberCareerList">회원경력리스트</a></li>
                           <li><a href="#">회원컨설리스트</a></li>
                        </ul></li>
                     <li class="nav-item"><a class="nav-link" href="/Logout">로그아웃</a></li>
                  </c:when>
                  <c:when test="${Member.memberGrade eq 'Allmaster'}">
                     <li class="nav-item active"><a class="nav-link" href="/home">Home<span
                           class="sr-only">(current)</span>
                     </a></li>
                     <li class="nav-item"><a class="nav-link" href="/Information">회사안내</a></li>
                     <li class="nav-item"><a class="nav-link" href="/Notice">공지사항</a></li>
                     <li class="nav-item"><a class="nav-link" href="/Goal">목표설정</a></li>
                     <li class="nav-item"><a class="nav-link" href="/Scheduler">스케줄등록</a></li>
                     <li class="nav-item"><a class="nav-link"
                        href="/MyPage">마이페이지</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">회원관리</a></li>
                     <li class="nav-item"><a class="nav-link" href="#">스케줄관리</a></li>
                     <li class="dropdown"><a class="nav-link"
                        data-toggle="dropdown" href="#">개인관리 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                           <li><a href="#">개인정보</a></li>
                           <li><a href="#">실적내역</a></li>
                           <li><a href="#">상벌내역</a></li>
                           <li><a href="#">급여내역</a></li>
                        </ul></li>
                     <li class="dropdown">
                        <a class="nav-link" data-toggle="dropdown" href="#">매니저 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                           <li><a href="#">매니저등록</a></li>
                           <li><a href="/ManagerList">매니저관리</a></li>
                           <li><a href="#">매니저실적관리</a></li>
                           <li><a href="#">급여관리</a></li>
                        </ul></li>
                     <li class="dropdown">
                        <a class="nav-link" data-toggle="dropdown">회원관리 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                           <li><a href="/MemberList">회원리스트</a></li>
                           <li><a href="/MemberCareerList">회원경력리스트</a></li>
                           <li><a href="#">회원컨설리스트</a></li>
                        </ul></li>
                     <li class="nav-item"><a class="nav-link" href="/Logout">로그아웃</a></li>
                  </c:when>
                  
                  <c:otherwise>
                     <li class="nav-item"><a class="nav-link" href="/home">Home</a></li>
                     <li class="nav-item"><a class="nav-link" href="/Information">회사안내</a></li>
                     <li class="nav-item"><a class="nav-link" href="/Notice">공지사항</a></li>
                     <li class="nav-item"><a class="nav-link" href="/member">회원가입</a></li>
                     <li class="nav-item"><a class="nav-link" href="/Login">로그인</a></li>
                  </c:otherwise>
               </c:choose>
            </ul>
      </div>
      </div>
   </nav>

   
   