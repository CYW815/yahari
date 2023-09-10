<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Yahari Add Menu Success</title>
</head>
<style>
	<%-- 폰트 --%> 
	@import url('https://fonts.googleapis.com/css2?family=Poor+Story&display=swap');
	*{font-family: 'Poor Story', cursive;}

	<%-- 초기화 --%> 
	*{box-sizing: border-box;}
	body {margin: 0; padding: 0;}
	a{text-decoration: none; color:#000;}

	<%-- wrap --%> 
	#wrap {
   		border: 2px solid #ffe0e0;
   		width: 750px; height: 100vh;
   		text-align: center;
   		position: absolute;
   		left: 50%;
   		transform: translateX(-50%);
   		padding-top: 50px;
   	}
   	
   	#welcome {
   		width: 610px; height: 250px;
   		background-image: url("../../../resources/images/banner/welcome3.jpg"););
   		background-size:cover;
   		margin: 50px auto;
   	}
</style>
<body>
<div id="wrap">
	<div id="welcome"></div>
	<h2>메뉴 추가가 완료되었습니다</h2>
	<br><br><br><br>
	<a href='<c:url value="/kiosk/add_menu"/>' style="color:red;"> 메뉴추가로 </a>
</div>

</body>
</html>