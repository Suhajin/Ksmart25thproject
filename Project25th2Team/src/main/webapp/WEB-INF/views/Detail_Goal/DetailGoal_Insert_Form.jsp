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
	<h3 align="center">세부목표 등록</h3>
<br>
	
	 <form action="/AddDetailGoal" method="post">
	    <table>
	   
		<tr>
		  	<td><input type="hidden" name="midGoalCode" value=${detailGoal.midGoalCode}></td>	
		</tr>
		<tr>   
		    <td><input type="hidden" name="memberCode" value=${detailGoal.memberCode}></td>
	    </tr>
		<tr>	
	    	<td><input type="hidden" name="biggestGoalCode" value=${detailGoal.biggestGoalCode}></td>
	    </tr>
	    <tr>	
	    	<td><input type="hidden" name="goalTotalCode" value=${detailGoal.goalTotalCode}></td>
	    </tr>
	    <tr>	
	    	<td><input type="hidden" name="managerCode" value=${detailGoal.managerCode}></td>
	    </tr>
	    <tr>	
	    	<td><input type="hidden" name="studyCode" value=${detailGoal.studyCode}></td>
	    </tr>
	    <tr>	
	    	<td><input type="hidden" name="managerGradeCode" value=${detailGoal.managerGradeCode}></td>
	    </tr>
	    <tr>	
	    	<td><input type="hidden" name="lisenceListCode" value=${detailGoal.lisenceListCode}></td>
	    </tr>
	    <tr>
	    	<td align="center"><label for="detailGoalList">세부목표 리스트</label></td>
	    	<td><input type="text" name="detailGoalList" placeholder="ex)영어단어30개 외우기 "></td>
	    </tr>
	    <tr>
		    <td align="center"><label for="detailGoalDate">세부목표 시작일</label></td>
		    <td><input type="date" name="detailGoalDate" ></td>
	    </tr>
	    <tr>
		    <td align="center"><label for="detailGoalStart">세부목표 시작시간</label></td>
		    <td><input type="time" name="detailGoalStart" ></td>
	    </tr>
	     <tr>
		    <td align="center"><label for="detailGoalEnd">세부목표 종료시간</label></td>
		    <td><input type="time" name="detailGoalEnd" ></td>
	    </tr>
	    <tr>
		    <td align="center"><label for="detailGoalTotal">세부목표 총 시간</label></td>
		    <td><input type="text" name="detailGoalTotal" ></td>
	    </tr>
	    <tr>
	    	<td align="center"><label for="detailGoalBudget">세부목표 예산</label></td>
	    	<td><input type="text" name="detailGoalBudget" placeholder="ex)5000원 "></td>
	    </tr>
	    <tr>
	    	<td align="center"><label for="detailGoalExplain">세부목표 설명</label></td>
	    	<td><input type="text" name="detailGoalExplain" placeholder="ex)영어단어 10개씩 3번 외우기"></td>
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
