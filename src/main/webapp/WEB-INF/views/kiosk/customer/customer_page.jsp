<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Yahari Customer</title>
<script type="text/javascript" src="../../../resources/js/customer_page.js" defer></script>

<style>
	*{box-sizing: border-box;}
	body {margin: 0; padding: 0;}
	a{text-decoration: none; color:#000;}

	h2 {
		text-align: center;
	}

	#section {
		padding-top: 330px; 
		width: 400px;
		margin: 0 auto;
		text-align: center;
	}
	
	button {
		width: 70px;
		height: 40px;
		margin: 10px;
	}
	
	body {
		background-image: url("../../../resources/images/banner/torii.jpg");
		background-repeat: no-repeat;
		background-size: 1000px 1000px;
		background-position: top;
	}
	
	#red {
		position: absolute;
		bottom: 30px;
		transform: translateX(-50%);
	}
	
</style>

</head>
<body>

	<h2 style="padding-top: 20px;">${sessionScope.customer.name}님 마이페이지 입니다</h2>
	
	<section id="section">
	<h2>충전할 금액을 눌러주세요</h2>
	<button id="10000"> 10000 </button>
	<button id="20000"> 20000 </button> 
	<button id="30000"> 30000 </button> <br>
	<button id="50000"> 50000 </button>
	<button id="70000"> 70000 </button> 
	<button id="100000">100000</button>
	
	<br><br>
	
	
	<form:form modelAttribute="customerCommand" name="cashChargeForm">
		<label for="balance">충전 금액</label> : <form:input path="balance" placeholder="직접입력"/>
	</form:form>
	
	<br>
	
	
	<button id="btn">충전하기</button>
	
	<c:if test="${not empty cashCharge}">
		<p>${cashCharge.balance}원 충전완료 </p>
		<p>현재 잔액 : ${customer.balance}원</p>
	</c:if>
	
	<br>
	<a id="red" href='<c:url value="/kiosk/hereOrNot"/>' style="color:red;"> 메인으로 </a>
	</section>
	
</body>
</html>