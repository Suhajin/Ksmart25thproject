<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>���θ�ǥ����</title>
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
	<h3 align="center">���θ�ǥ ���</h3>
<br>
	
	 <form action="/AddDetailGoal" method="post">
	    <table>
	   
		<tr>
		  	<td><input type="hidden" name="midGoalCode" value=${Member.memberCode}></td>	
		</tr>
		<tr>   
		    <td><input type="hidden" name="memberCode" value=${Member.memberCode}></td>
	    </tr>
		<tr>	
	    	<td><input type="hidden" name="biggestGoalCode" value=${Member.memberCode}></td>
	    </tr>
	    <tr>	
	    	<td><input type="hidden" name="goalTotalCode" value=${Member.memberCode}></td>
	    </tr>
	    <tr>	
	    	<td><input type="hidden" name="managerCode" value=${Member.memberCode}></td>
	    </tr>
	    <tr>	
	    	<td><input type="hidden" name="studyCode" value=${Member.memberCode}></td>
	    </tr>
	    <tr>	
	    	<td><input type="hidden" name="managerGradeCode" value=${Member.memberCode}></td>
	    </tr>
	    <tr>	
	    	<td><input type="hidden" name="lisenceListCode" value=${Member.memberCode}></td>
	    </tr>
	    <tr>
	    	<td align="center"><label for="detailGoalList">���θ�ǥ ����Ʈ</label></td>
	    	<td><input type="text" name="detailGoalList" placeholder="ex)����ܾ�30�� �ܿ�� "></td>
	    </tr>
	    <tr>
		    <td align="center"><label for="detailGoalDate">���θ�ǥ ������</label></td>
		    <td><input type="date" name="detailGoalDate" ></td>
	    </tr>
	    <tr>
		    <td align="center"><label for="detailGoalStart">���θ�ǥ ���۽ð�</label></td>
		    <td><input type="time" name="detailGoalStart" ></td>
	    </tr>
	     <tr>
		    <td align="center"><label for="detailGoalEnd">���θ�ǥ ����ð�</label></td>
		    <td><input type="time" name="detailGoalEnd" ></td>
	    </tr>
	    <tr>
		    <td align="center"><label for="detailGoalTotal">���θ�ǥ �� �ð�</label></td>
		    <td><input type="text" name="detailGoalTotal" ></td>
	    </tr>
	    <tr>
	    	<td align="center"><label for="detailGoalBudget">���θ�ǥ ����</label></td>
	    	<td><input type="text" name="detailGoalBudget" placeholder="ex)5000�� "></td>
	    </tr>
	    <tr>
	    	<td align="center"><label for="detailGoalExplain">���θ�ǥ ����</label></td>
	    	<td><input type="text" name="detailGoalExplain" placeholder="ex)����ܾ� 10���� 3�� �ܿ��"></td>
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
	<!-- <script>
		$(document).ready(function(){
			$('#form').submit(function() { 
				var detailGoalExplain = document.getElementById("detailGoalExplain");
				var a = detailGoalExplain.options[detailGoalExplain.selectedIndex].value;
				if(a == ''){
					alert("���ι���� �����ϼ���"); 
					return false;
				}
			});
		});
	</script> -->
</body>
</html>