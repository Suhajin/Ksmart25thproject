<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ page session="false"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
table {
    width: 50%;
}

/* th {
    height: 50px;
} */
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>공지사항</title>
</head>
<body>
   <div>
      <c:import url="/WEB-INF/views/layout/Head.jsp">
      </c:import>
   </div>
   <div>
      <header class="masthead">
      <div class="overlay">
         <div class="container">
            <h1 class="display-1 text-white">Welcome!</h1>
            <h2 class="display-4 text-white">Consulting for you.</h2>
         </div>
      </div>
      </header>
      <h4 align="center">공지사항</h4>
         <form align="center">
            <table align="center" border="1">
               <tr>
                  <td>
                     MBA 과정의 입학생 모두 해외 명문대학의 복수학위 취득 가능
                     서울과학종합대학원의 MBA 과정의 모든 입학생은 국내 경영학 석사 학위와 함께 유럽, 
                     미국 등 해외 명문대학의 복수학위를 함께 취득할 수 있습니다. 
                     복수학위 협정에 따라 국내에서 수료한 학점 일부를 해외 대학에서도 인정받고, 
                     개인의 선택에 따라 해당 대학의 해외현지 교육과정을 이수할 수도 있습니다. 
                     최단 1년 반 이내에 학위 취득이 가능해 재학생은 해외 체류 기간을 단축하면서 학비도 절감하는 셈입니다.
                  </td>
               </tr>
            </table>
            <br>
         </form>
   </div>
   <div>
      <c:import url="/WEB-INF/views/layout/Hadan.jsp">
      </c:import>
   </div>
</body>
</html>