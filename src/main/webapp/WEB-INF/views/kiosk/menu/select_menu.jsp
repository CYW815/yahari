<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Yahari Select Menu</title>
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
   		width: 750px;
   		text-align: center;
   		position: absolute;
   		left: 50%;
   		transform: translateX(-50%);
   	}
   	
   	h2 {
		padding: 20px;
	}

	table{
	   border-collapse: collapse;
	   margin: 20px auto;
	}
	
	tr, th, td{
	   border : 1px solid black;
	   padding : 20px;
	}
</style>
</head>
<body>

	<div id="wrap">
		<h2>메뉴 목록</h2>
		<table>
			<tr>
				<th> 메뉴 이름 </th>
				<th> 메뉴 가격 </th>
				<th> 메뉴 타입 </th>
				<th> 메뉴 이미지 </th>
			</tr>
			<c:forEach var="menu"  items="${menuList}">
				<tr>
					<td>${menu.name}</td>
					<td>${menu.price}</td>
					<td>${menu.menuType}</td>
					<td>${menu.imageName}</td>
				</tr>
			</c:forEach>
		</table>
		
		<br><br>
		<a href='<c:url value="/kiosk/admin_page"/>' style="color:red;"> 관리자모드로 </a>
		<br><br>
	</div>

</body>
</html>