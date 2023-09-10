<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Yahari Update Topping</title>
<script type="text/javascript" src="../../../resources/js/update_topping.js" defer></script>
</head>
<body>
	<form:form modelAttribute="toppingCommand" name="updateToppingForm">
		<label for="toppingName">현재 토핑 이름</label> : <form:input path="toppingName"/> <br>
		<label for="toppingUpdateName">변경할 토핑 이름</label> : <form:input path="toppingUpdateName"/> <br>
		<label for="toppingPrice">변경할 토핑 가격</label> : <form:input path="toppingPrice"/>
	</form:form>
	<button>토핑 변경</button>
</body>
</html>