<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Yahari Admin Page</title>
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

	
	#listWrap {
		display: flex;
		justify-content: space-between; 
		flex-wrap: wrap;
		width: 620px; height: 640px;
		margin: 70px auto 30px;
	}
	
	.list {
		width: 300px; height: 300px;
		background-color: rgba(0, 255, 255, 0.3);
		background-size: cover;
		line-height: 100px;
		font-size: 20px;
	}
	
	.list > a {
		display: block;
		width: 300px; height: 300px;
	}
	
	.list1 {background-image: url("../../../resources/images/admin/spring.jpg");}
	.list2 {background-image: url("../../../resources/images/admin/autumn.jpg");}
	.list3 {background-image: url("../../../resources/images/admin/hujiyama.jpg");}
	.list4 {background-image: url("../../../resources/images/admin/kinngakuji.jpg");}

	
</style>
</head>
<body>

	<div id="wrap">
		<h1>관리자 모드</h1>
		
		<div id="listWrap">
			<div class="list list1"><a href='<c:url value="/kiosk/select_customer"/>'>고객 목록 확인</a></div>
			<div class="list list2"><a href='<c:url value="/kiosk/select_menu"/>'>메뉴 목록 확인</a></div>
			<div class="list list3"><a href='<c:url value="/kiosk/add_menu"/>'>메뉴 추가</a></div>
			<div class="list list4"><a href='<c:url value="/kiosk/update_menu"/>'>메뉴 수정</a></div>
		</div>
		

	<a href='<c:url value="/kiosk/hereOrNot"/>' style="color:red;"> 메인으로 </a>
	</div>

</body>
</html>