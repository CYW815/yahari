<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Yahari Select Customer</title>
<script type="text/javascript" src="../../../resources/js/select_customer.js" defer></script>
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
   	


	table{
	   border-collapse: collapse;
	   margin: 0 auto;
	}
	
	tr, th, td{
	   border : 1px solid black;
	   padding : 20px;
	}
	
	input, select {
		border: 1px solid #000;
	}
	
   	h2 {
		padding: 20px;
	}
	
	
</style>
</head>
<body>
<div id="wrap">
	<h2>메뉴 목록</h2>
	<section>
		<form:form modelAttribute="customerCommand" name="selectCustomerForm">
			<form:select path="select">
				<form:options items="${CustomerSelectList}"/>
			</form:select>
			<form:input path="listAll"/>
		</form:form>
		<br>	
		<button>찾기</button>
		<br><br>
	</section>
	<section>
		<p>전체회원 수 : <c:if test="${not empty customerCount}">
			${customerCount}
			</c:if> 
		</p>
		<table>
			<tr>
				<th>이름</th>
				<th>연락처</th>
				<th>생성일</th>
			</tr>
		<c:if test="${not empty customerList}">
			<c:forEach var="customer" items="${customerList}">
				<tr>
					<td>${customer.name}</td>
					<td>${customer.phone}</td>
					<td>${customer.regDate}</td>
				</tr>
			</c:forEach>
		</c:if>
		<c:if test="${not empty customerOne}">
			<tr>
				<td>${customerOne.name}</td>
				<td>${customerOne.phone}</td>
				<td>${customerOne.regDate}</td>
			</tr>
		</c:if>
		</table>
	</section>
	<br><br>
	<a href='<c:url value="/kiosk/admin_page"/>' style="color:red;"> 관리자모드로 </a>
</div>
</body>
</html>