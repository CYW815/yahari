<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Yahari Customer Success</title>
<style type="text/css">
	*{box-sizing: border-box;}
    body {margin: 0; padding: 0;}
   	a{text-decoration: none; color:#000;
   		display: inline;}
	#main{
		display: flex;
		justify-content: center;
		align-items: center;
		flex-direction: column;
		padding-top:80px;
		}
	#img{
		width: 755px;
		height: 301px;
		background-image: url("../../../../resources/images/banner/customer_login.jpg");
	}
		
	#main h1{color:green;}
	
	#main p {
		font-size:20px;
	}

</style>
</head>
<body>
	<div id="main">
	<div id="img"></div>
		<h1>회원가입 완료</h1>
		<br>
		<p>이름 : ${customer.name}</p>
		<p>비밀번호 : ${customer.passwd }</p>
		<p>연락처 : ${customer.phone }</p>
		<p>캐쉬 잔액 : ${customer.balance }</p>
		<p>포인트 잔액 : ${customer.point }</p>
		<br>
		<button><a href="http://localhost:8080/kiosk/hereOrNot">키오스크 화면</a></button>
	</div>
</body>
</html>