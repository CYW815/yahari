<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Yahari Pay Success</title>
<style type="text/css">
	*{box-sizing: border-box;}
    body {margin: 0; padding: 0;}
   	a{text-decoration: none; color:#000;
   		display: inline;}
	#main{
		display: flex;
		justify-content: center;
		align-items: center;
		flex-direction: column;
		padding-top:80px;
		}
	#img{
		width: 744px;
		height: 461px;
		background-image: url("../../../../resources/images/banner/success.jpg");
	}
	
	#checkReceipt{
		color:orangered;
	}


</style>
</head>
<body>
	<div id="main">
		<div id="img"></div>
		<h1>주문이 완료되었습니다.</h1>
		<br>
	<a href="/kiosk/receipt" id="checkReceipt">영수증 확인</a>
	</div>
</body>
</html>