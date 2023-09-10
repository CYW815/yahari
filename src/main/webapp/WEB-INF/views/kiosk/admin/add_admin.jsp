<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Yahari Add Admin</title>
<script type="text/javascript" src="../../../resources/js/add_admin.js" defer></script>
<style type="text/css">
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
   	
   	
	#main{
		display: flex;
		justify-content: center;
		align-items: center;
		flex-direction: column;
		padding-top:150px;
	}
	#main h1{
		color: orangered;
	
	}

	
	#img{
		width: 499px;
		height: 185px;
		background-image: url("../../../../resources/images/banner/addtop-red.jpg");
	}
	
	.form{
		width:100px;
	}
	
	.form2{
		width:50px;
	}
	
	.form3{
		width:60px;
	}

</style>
</head>
<body>	
<div id="wrap">
	<div id="main">
	<div id="img"></div>
		<h1>관리자 계정추가</h1><br>
		
	<form:form modelAttribute="adminCommand" name="addAdminForm">
		<label for="adminPasswd" id="admintext">관리자 비밀번호 : </label>
		<form:input path="adminPasswd" class="form3"/> <br><br>
		
		<label for="adminAccountNum1">관리자 계좌번호 : </label>
		<form:input path="adminAccountNum1" class="form"/> -
		<form:input path="adminAccountNum2" class="form2"/> -
		<form:input path="adminAccountNum3" class="form"/>
	</form:form><br><br>
	<button>관리자 생성</button>
	<br>
	<a href='<c:url value="/kiosk/hereOrNot"/>'> 메인으로 </a>
	</div>
</div>
</body>
</html>