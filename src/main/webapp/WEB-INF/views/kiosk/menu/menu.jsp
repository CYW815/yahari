<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Yahari Menu</title>
<style>
	<%-- 폰트 --%>  
	@import url('https://fonts.googleapis.com/css2?family=Poor+Story&display=swap');
	*{font-family: 'Poor Story', cursive;}

	<%-- 초기화 --%>  
	*{box-sizing: border-box;}
	body, ul, li {margin: 0; padding: 0;}
	a{text-decoration: none; color:#000;}
	ul, li {list-style: none;}

	<%-- wrap --%>  
	#wrap {
   		border: 3px solid #ffe0e0;
   		width: 750px; height: 100vh;
   		text-align: center;
   		position: absolute;
   		left: 50%;
   		transform: translateX(-50%);
   	}
   	
	h2 {padding: 20px;}
	
	input {
		border: 1px solid #000;
	}
	
	<%-- tab --%>  
	#tabWrap {display: flex; justify-content: center;}
	
	#menuNav {
		width: 100px; height: 600px;
		background-color: rgba(132, 2, 26, 1);
		text-align: center;
		line-height: 150px;
		color: #Fff;
	}
	
	#menuNav > li {
		border-bottom: 1px solid #fff;
	}
	
	#menuTab {
		width: 600px; height: 600px;
		display: flex;
		flex-wrap: wrap;
		background-image: url(../../../resources/images/banner/menuMain.jpg);
		background-size: cover;
		background-position: right;
		
	}
	
	.menu {
		width: 300px; height: 300px;
		text-align: center;
		background-color: rgba(0, 0, 0, 0.5);
		color:#fff;
		font-size: 18px;
	}
	
	
	img{width: 80%; height: 80%; margin-top: 10px;}

	
	.hidden {display: none;}
	
	#cart {
		border: 1px solid #000;
		width: 600px;
		margin: 20px auto;
		height: 100px;
		overflow: auto;
	}

	
</style>
<script type="text/javascript" src="../../../resources/js/menu.js" defer></script>
</head>
<body>
<div id="wrap">


	<section>
	<h2>메뉴 주문</h2>
	<div id="tabWrap">
		<ul id="menuNav">
			<li class="list list1 active">라멘</li>
			<li class="list list2">사이드</li>
			<li class="list list3">음료</li>
			<li class="list list4">토핑</li>
		</ul>
		<div id="menuTab">
			<c:forEach var="menu" items="${menuList}" >
					<c:if test="${menu.menuType == 82}">
						<div class="menu ramen">
							<img alt="${menu.imageName}" src="../../../resources/images/ramen/${menu.imageName}.jpg"><br>
							<span>${menu.name}</span><br>
							<span>${menu.price}</span>
						</div>
					</c:if>
					<c:if test="${menu.menuType == 83}">
						<div class="menu side hidden">
							<img alt="${menu.imageName}" src="../../../resources/images/side/${menu.imageName}.jpg"><br>
							<span>${menu.name}</span><br>
							<span>${menu.price}</span>
						</div>
					</c:if>
					<c:if test="${menu.menuType == 68}">
						<div class="menu drink hidden">
							<img alt="${menu.imageName}" src="../../../resources/images/drink/${menu.imageName}.jpg"><br>
							<span>${menu.name}</span><br>
							<span>${menu.price}</span>
						</div>
					</c:if>
					<c:if test="${menu.menuType == 84}">
						<div class="menu topping hidden">
							<img alt="${menu.imageName}" src="../../../resources/images/topping/${menu.imageName}.jpg"><br>
							<span>${menu.name}</span><br>
							<span>${menu.price}</span>
						</div>
					</c:if>
			</c:forEach>
		</div>
	</div>
		
		
		<form:form modelAttribute="menuCommand" name="menuForm">
			<div id="cart">
				
			</div>
		</form:form>
		<button class="payment">결제하기</button>
	</section>
	
</div>	
</body>
</html>