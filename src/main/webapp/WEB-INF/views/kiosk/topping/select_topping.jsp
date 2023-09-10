<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Yahari Select Topping</title>
<style>
	table{
	   border-collapse: collapse;
	}
	
	tr, th, td{
	   border : 1px solid black;
	   padding : 20px;
	}
</style>
</head>
<body>
	<table>
	<tr>
		<td>토핑 이름</td>
		<td>토핑 가격</td>
	</tr>
	<c:forEach  var="topping" items="${toppingList}">
		<tr>
			<th>${topping.toppingName}</th>
			<th>${topping.toppingPrice}</th>
		</tr>
	</c:forEach>
	</table>
</body>
</html>