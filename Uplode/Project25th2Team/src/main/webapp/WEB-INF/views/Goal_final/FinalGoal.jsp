<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>목표설정</title>
<style>
	input[type=text], select {
	    width: 100%;
	    padding: 12px 20px;
	    margin: 2px 0;
		display: inline-block;
	    border: 1px solid #ccc;
	    border-radius: 10px;
		box-sizing: border-box;
	} 
	
	input[type=submit] {
	    width: 50%;
	    color: white;
	    padding: 14px 20px;
	    margin: 8px 0;
	    border: none;
	    border-radius: 4px;
	    cursor: pointer;
	}
	
	form {
	    border-radius: 5px;
	    background-color: #f2f2f2;
	    padding: 10px;
	    margin : 30px;
	}
	p {
	    text-align: center;
	}
	table {
		width: 100%;
	}
	th{
		row:100px;
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
<div class="container">
	<h3 align="center">최종목표 등록</h3>
<br>
	
	 <form action="/addFinalGoal" method="post">
	    <table>
	    
	    <tr>
	    	<td><input type="hidden" id="finalGoalCode" name="finalGoalCode" value=${Member.memberCode}></td>
		</tr>
		<tr>
		    <td><input type="hidden" id="biggestGoalCode" name="biggestGoalCode" value=${Member.memberCode}></td>
	    </tr>
		<tr>
		  	<td><input type="hidden" id="memberCode" name="memberCode" value=${Member.memberCode}></td>	
		</tr>
		<tr>   
		    <td><input type="hidden" id="managerCode" name="managerCode" value=${Member.memberCode}></td>
	    </tr>
		<tr>	
	    	<td><input type="hidden" id="managerGradeCode" name="managerGradeCode" value=${Member.memberCode}></td>
	    </tr>
		<tr>
	    	<td align="center"><label for="Gn">목표명</label></td>
	    	<td align="left"><input type="text" id="Gname" name="finalGoalName" placeholder="ex)2년 안에 한국전력공사 입사"></td>
	    </tr>
		<tr>
		    <td align="center"><label for="Gs">최종목표 시작일</label></td>
		    <td align="left"><input type="date" id="Start" name="finalGoalStart"></td>
	    </tr>
		<tr>
	    	<td align="center"><label for="Ge">최종목표 종료일</label></td>
	    	<td align="left"><input type="date" id="End" name="finalGoalEnd"></td>
	    </tr>
		<tr>
		    <td align="center"><label for="Gd">총 목표 일수</label></td>
		    <td align="left"><input type="text" id="finalGoalDays" name="finalGoalDays"></td>
	    </tr>
		<tr>
		    <td align="center"><label for="Gtad">일일 투자시간</label></td>
		    <td align="left"><input type="text" id="finalGoalTimeADay" name="finalGoalTimeADay"></td>
	    </tr>
		<tr>
		    <td align="center"><label for="Gtt">총 투자시간</label></td>
		    <td align="left"><input type="text" id="finalGoalTotalTime" name="finalGoalTotalTime"></td>
	    </tr>
		<tr>
		    <td align="center"><label for="Gtb">전체예산</label></td>
		    <td align="left"><input type="text" id="finalGoalTotalBudget" name="finalGoalTotalBudget"></td>
	    </tr>
		<tr>
		    <td align="center"><label for="Note">메모</label></td>
		    <td align="left"><input type="text" id="finalGoalNote" name="finalGoalNote"></td>
	    </tr>
	    <tr> 
	    <td align="center"><label for="Gid">일일 투자시간</label></td>
	    <td align="left"><input type="text" id="finalGoalInputDate" name="finalGoalInputDate"></td>
	    </tr>

	   </table>
	   	
	   	<div align="center">   
	    <input type="submit" value="submit" class="form-control btn btn-primary" >
	  	</div>
	  </form>
	</div>
<!------------------------------------Hadan-------------------------------------->	
	<div>
		<c:import url="/WEB-INF/views/layout/Hadan.jsp">
		</c:import>
	</div>
</body>
</html>
