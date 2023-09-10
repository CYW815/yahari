<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>

	<%-- 폰트 --%>  
	@import url('https://fonts.googleapis.com/css2?family=Poor+Story&display=swap');
	*{font-family: 'Poor Story', cursive;}
	
	
	*{ box-sizing: border-box; }
   	body { margin: 0 auto; padding: 0; }
   	a{ text-decoration: none; color:#000; }
   	
   	.customer {
   		padding:16px; 
   		width: 150px;
   		text-align: center;
   		font-size: 20px;
   	}

   	span {
   		text-align: center;
   		line-height: 60px;
   		padding: 0 20px;
   		font-size: 20px;
   	}
	
	#naviWrap {
		padding: 20px 0 ;
		height: 100px;
		display: flex;
		justify-content: center;
	}
	
	
	
</style>

<div id="naviWrap">
	<c:choose>
		<c:when test="${not empty sessionScope.customer}">

				<span>${sessionScope.customer.name}님</span>
				<span>잔액 : ${sessionScope.customer.balance}</span>
				<span>보유 포인트 : ${customer.point }</span>
				<a class="customer" href='<c:url value="/kiosk/customer_page"/>'> 마이 페이지</a>

		</c:when>
		<c:otherwise>

				<a class="customer" href='<c:url value="/kiosk/customer_login"/>'> 로그인 </a>
				<a class="customer" href='<c:url value="/kiosk/add_customer"/>'> 회원가입 </a>

		</c:otherwise>
	</c:choose>
</div>