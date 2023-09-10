<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Yahari Add Topping</title>
<script type="text/javascript" src="../../../resources/js/add_topping.js" defer></script>
</head>
<body>
	<form:form modelAttribute="toppingCommand" name="addToppingForm">
		<label for="toppingName">토핑 이름</label> : <form:input path="toppingName"/> <br>
		<label for="toppingPrice">토핑 가격</label> : <form:input path="toppingPrice"/>
	</form:form>
	<button>토핑 추가</button>
</body>
</html>