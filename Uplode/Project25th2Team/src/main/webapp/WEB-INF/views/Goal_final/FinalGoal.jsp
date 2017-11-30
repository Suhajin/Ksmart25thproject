<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>목표설정</title>
<style>
input[type=text], select {
    width: 50%;
    padding: 12px 20px;
    margin: 2px 0;
	display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
	box-sizing: border-box;
} 

input[type=submit] {
    width: 50%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

/* div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
} */
</style>
</head>
<body>
<!------------------------------------head-------------------------------------->
	<div>
		<c:import url="/WEB-INF/views/layout/Head.jsp">
		</c:import>
	</div>

<!------------------------------------contents-------------------------------------->
<br>
<h3>최종목표 등록</h3>

	<div class="container"  align="center">
	  <form action="./addFinalGoal">
	    <div>
		    <label for="Fgc">최종목표 코드</label>
	    	<input type="text" id="finalGoalCode" name="finalGoalCode">
		</div>
		<div>
		    <label for="Bgc">대분류 목표코드</label>
		    <input type="text" id="biggestGoalCode" name="biggestGoalCode">
	    </div>
	    <div>
		    <label for="Mc">회원코드</label>
		  	<c:choose>
			  	<c:when test="${Member.memberCode ne null}">
					${Member.memberCode}
				</c:when>
			</c:choose>
		</div>
		<div>    
		    <label for="Manager">매니저코드</label>
		    <input type="text" id="managerCode" name="managerCode">
	    </div>
	    <div>	
	    	<label for="Mp">매니저 직책</label>
	    	<input type="text" id="managerGradeCode" name="managerGradeCode">
	    </div>
	    <div>
	    	<label for="Gn">목표명</label>
	    	<input type="text" id="lname" name="finalGoalName" placeholder="ex)2년 안에 한국전력공사 입사">
	    </div>
	    <div>
		    <label for="Gs">최종목표 시작일</label>
		    <input type="date" id="finalGoalStart" name="finalGoalStart">
	    </div>
	    <div>
	    	<label for="Ge">최종목표 종료일</label>
	    	<input type="date" id="finalGoalEnd" name="finalGoalEnd">
	    </div>
	    <div>
		    <label for="Gd">총 목표 일수</label>
		    <input type="text" id="finalGoalDays" name="finalGoalDays">
	    </div>
	    <div>
		    <label for="Gtad">일일 투자시간</label>
		    <input type="text" id="finalGoalTimeADay" name="finalGoalTimeADay">
	    </div>
	    <div>
		    <label for="Gtt">총 투자시간</label>
		    <input type="text" id="finalGoalTotalTime" name="finalGoalTotalTime">
	    </div>
	    <div>
		    <label for="Gtb">전체예산</label>
		    <input type="text" id="finalGoalTotalBudget" name="finalGoalTotalBudget">
	    </div>
	    <div>
		    <label for="Note">메모</label>
		    <input type="text" id="finalGoalNote" name="finalGoalNote">
	    </div>
	    <!-- <label for="Gid">일일 투자시간</label>
	    <input type="text" id="finalGoalInputDate" name="finalGoalInputDate">
	     -->
	    <input type="submit" value="Submit" class="form-control btn btn-primary">
	  </form>
	</div>
<!------------------------------------Hadan-------------------------------------->	
	<div>
		<c:import url="/WEB-INF/views/layout/Hadan.jsp">
		</c:import>
	</div>
</body>
</html>
