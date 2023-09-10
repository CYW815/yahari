<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.yahari.kiosk.*" %>
<%@page import="java.util.*" %>
<%@page import="java.net.URLEncoder" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매장 / 포장 선택하세요</title>
<style type="text/css">

	*{box-sizing: border-box;}
   	body {margin: 0; padding: 0;}
   	a{text-decoration: none; color:#000;}
   	
	#wrap {
   		border: 2px solid #ffe0e0;
   		width: 750px; height: 100vh;
   		text-align: center;
   		position: absolute;
   		left: 50%;
   		transform: translateX(-50%);
   	}

	#here{
		width:360px;
		height:360px;
		background-image: url("../../../resources/images/banner/here.jpg");
		background-size: 100% 100%;
	}
	
	#not{
		width:360px;
		height:360px;
		background-image: url("../../../resources/images/banner/not.jpg");
		background-size: 100% 100%;
	}
	
	#hereOrNot {
		display: flex;
		width:740px;
		padding-top:250px;
		margin: 0 auto;
		justify-content: space-between;
	}
	
	#navi {
		position: absolute;
		right: 10px;
	}
	
	#admin {
		position: absolute;
		bottom: 50px; right: 30px;
		font-size: 20px;
	}
	
	
</style>
<script type="text/javascript" src="../../../resources/js/here_or_not.js" defer></script>

</head>

<body>

	<div id="wrap">
		<div id="navi">
			<%@include file="../incl/header.jsp" %>
		</div>
	
		<div id="hereOrNot">
			<div id="here"></div>
			<div id="not"></div>
		</div>
	
		<form name="hereOrNotForm">
			<input type="hidden" name="hereOrNot" value="">
		</form>
		
		<a id="admin" href='<c:url value="/kiosk/admin_login"/>'> 관리자모드 </a>
	</div>

</body>
</html>