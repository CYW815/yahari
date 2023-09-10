<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Yahari Add Customer</title>
<script type="text/javascript" src="../../../resources/js/add_customer.js" defer></script>
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
		color: navy;
	
	}

	
	#img{
		width: 499px;
		height: 185px;
		background-image: url("../../../../resources/images/banner/addtop-blue.jpg");
		background-size: 100% 100%;
	}
	
	.form{
		width:70px;
	}
	
	.form2{
		width:100px;
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
		<h1>やはりラーメン 회원가입</h1><br>
		
		<form:form modelAttribute="customerCommand" name="addCustomer">
			<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이 름 : </label>
			<form:input path="name" class="form2"/> <br><br>
			
			<label>비밀번호 : </label>
			<form:input path="passwd" class="form2"/> <br><br>
			
			<label>전화번호 : </label>
			<form:select path="phone1">
			<form:options items="${PhoneNumberList}"/>
			</form:select> - <form:input path="phone2" class="form"/> - <form:input path="phone3" class="form"/>	
		</form:form>
		<br><br>
		<button>가입하기</button>
		<br><br>
	<a href='<c:url value="/kiosk/hereOrNot"/>' style="color:red;"> 메인으로 </a>
	</div>
</div>
</body>
</html>