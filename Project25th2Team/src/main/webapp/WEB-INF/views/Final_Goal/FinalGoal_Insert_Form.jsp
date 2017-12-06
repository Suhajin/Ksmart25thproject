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
	<h3 align ="center">${Member.memberName}님의&nbsp;최종목표설정을&nbsp;등록해주세요!</h3>
<br>
	
	 <form action="/AddFinalGoal" method="post">
	    <table>
	    
			<tr>
				<td align="center"><label for="finalGoalStart">대분류 목표</label></td>
				<td>
				<select name="biggestGoalCode">
				       <option value="null">==선택하세요==</option>
				       <option value="bcc_001">취업</option>
				       <option value="bcc_002">승진</option>
				       <option value="bcc_003">이직</option>
				       <option value="bcc_004">기타</option>
				</select>
				</td>
		    </tr>
			<tr>
			  	<td><input type="hidden" name="memberCode" value=${Member.memberCode}></td>	
			</tr>
			<tr>   
			    <td><input type="hidden" name="managerCode" value=${Member.memberCode}></td>
		    </tr>
		    <tr>   
			    <td><input type="hidden" name="managerGradeCode" value=${Member.memberCode}></td>
		    </tr>
			<tr>
		    	<td align="center"><label for="finalGoalName">목표명</label></td>
		    	<td><input type="text" name="finalGoalName" placeholder="ex)2년 안에 한국전력공사 입사"></td>
		    </tr>
			<tr>
			    <td align="center"><label for="finalGoalStart">최종목표 시작일</label></td>
			    <td><input type="date" name="finalGoalStart" ></td>
		    </tr>
			<tr>
		    	<td align="center"><label for="finalGoalEnd">최종목표 종료일</label></td>
		    	<td><input type="date" name="finalGoalEnd"></td>
		    </tr>
			<tr>
			    <td align="center"><label for="finalGoalDays">총 목표 일수</label></td>
			    <td align="left"><input type="text" name="finalGoalDays"></td>
		    </tr>
			<tr>
			    <td align="center"><label for="Gtad">일일 투자시간</label></td>
			    <td align="left"><input type="text" name="finalGoalTimeADay"></td>
		    </tr>
			<tr>
			    <td align="center"><label for="finalGoalTotalTime">총 투자시간</label></td>
			    <td><input type="text" name="finalGoalTotalTime"></td>
		    </tr>
			<tr>
			    <td align="center"><label for="finalGoalTotalBudget">전체예산</label></td>
			    <td><input type="text" name="finalGoalTotalBudget"></td>
		    </tr>
			<tr>
			    <td align="center"><label for="finalGoalNote">메모</label></td>
			    <td><input type="text" name="finalGoalNote"></td>
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
