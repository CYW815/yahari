<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Yahari Login</title>
<script type="text/javascript" src="../../../resources/js/login.js" defer></script>
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
	

	#main h2{
		color: navy;
	}

	#img{
		width: 449px;
		height: 254px;
		background-image: url("../../../../resources/images/banner/welcome.jpg");
		background-size: 100% 100%;
		margin: 0 auto;
	}
	
	.phone{
		width:70px;
	}
	
	input, select {
		border: 1px solid #000;
	}

</style>

</head>
<body>

<div id="wrap">

	<div id="main">
	<div id="img"></div>
	<h2>やはりラーメン 회원 로그인</h2>
	
		<form:form modelAttribute="customerCommand" name="loginForm">
			<label for="phone2">&nbsp;&nbsp; 연락처 : </label>
			<form:select path="phone1">
				<form:options items="${PhoneNumberList}"/>
			</form:select> - <form:input path="phone2" class="phone"/> - <form:input path="phone3" class="phone"/> <br>
			<br>
			<label for="passwd">비밀번호 : </label>
			<form:input path="passwd" class="phone"/>
			<br><br>
		</form:form>
		<button>로그인</button>
		<br><br>
	<a href='<c:url value="/kiosk/hereOrNot"/>' style="color:red;"> 메인으로 </a>
	</div>

</div>

</body>
</html>