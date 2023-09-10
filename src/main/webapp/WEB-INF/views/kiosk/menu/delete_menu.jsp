<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Yahari Delete Menu</title>
</head>
<body>
	<form:form modelAttribute="menuCommand" name="deleteMenuForm">
		<label for="name">메뉴 이름</label> : <form:input path="name"/> <br>
		<form:button>메뉴 삭제</form:button>
	</form:form>
	<button>메뉴 삭제</button>
</body>
</html>