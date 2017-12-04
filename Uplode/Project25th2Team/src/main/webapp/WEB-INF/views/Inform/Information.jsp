<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<title>회사안내</title>
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=_DSaIYyBFpd1k3CfaSDe&submodules=geocoder"></script>
<!-- Bootstrap core CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">

<!-- Custom styles for this template -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/one-page-wonder.css">

</head>
<body>

	<div>
		<c:import url="/WEB-INF/views/layout/Head.jsp">
		</c:import>
	</div>
	<!-- <div>
		<header class="masthead">
		<div class="overlay">
			<div class="container">
				<h1 class="display-1 text-white">Welcome!</h1>
				<h2 class="display-4 text-white">Consulting for you.</h2>
			</div>
		</div>
		</header>
	</div> -->
	<div>
		<c:import url="/WEB-INF/views/layout/mid.jsp">
		</c:import>
	</div>

	<!--------------------------------지도시작------------------------------------------>
	<h4 align="center">Information of CMS company</h4>
	<center>
		<div id="map" style="width: 80%; height: 400px;"></div>
		<script>
				var map = new naver.maps.Map('map', {
				    center: new naver.maps.LatLng(35.8406421, 127.1291779),
				    zoom: 12
				});
			
				var marker = new naver.maps.Marker({
				    position: new naver.maps.LatLng(35.8406421, 127.1291779),
				    map: map
				});
			</script>
	</center>
	<br>
	<!----------------------------하단------------------------------------------>
	<div>
		<c:import url="/WEB-INF/views/layout/Hadan.jsp">
		</c:import>
	</div>
</body>
</html>