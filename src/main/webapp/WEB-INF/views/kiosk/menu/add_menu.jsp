<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Yahari Add Menu</title>
<script type="text/javascript" src="../../../resources/js/add_menu.js" defer></script>
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
   	
   	input, select {
		border: 1px solid #000;
	}
   	
   	
</style>
</head>
<body>

<div id="wrap">
	<h2>메뉴 추가</h2>
	<form:form modelAttribute="menuCommand" name="addMenuForm">
		<label for="menuType">메뉴 종류</label> : 
		<form:select path="menuType">
			<form:options items="${menuTypeList}" itemLabel="menuType" itemValue="menuValue"/>
		</form:select> <br>
		<label for="name">메뉴 이름</label> : <form:input path="name"/> <br>
		<label for="price">메뉴 가격</label> : <form:input path="price"/> <br>
		<label for="imageName">사진 이름</label> : <form:input path="imageName"/>
	</form:form>
	<br><br>
	<button>메뉴 추가</button>
	<br><br><br><br>
	<a href='<c:url value="/kiosk/admin_page"/>' style="color:red;"> 관리자모드로 </a>

</div>

</body>
</html>