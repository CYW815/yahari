<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Yahari Add Admin Success</title>
<style type="text/css">
	*{box-sizing: border-box;}
    body {margin: 0; padding: 0;}
   	a{text-decoration: none; color:#000;}
	#main{
		display: flex;
		justify-content: center;
		align-items: center;
		flex-direction: column;
		padding-top:80px;
	}
	
	#img{
		width: 700px;
		height: 525px;
		background-image: url("../../../../resources/images/banner/admin_login.jpg");
	}

</style>
</head>
<body>
	<div id="main">
	<div id="img"></div>
	<h1>관리자 생성 완료</h1>
	<br>
	<div>관리자 비밀번호 : ${adminCommand.adminPasswd}</div>
	<br>
	<div>관리자 계좌번호 : ${adminCommand.adminAccountNum}</div>
	<br>
	<button><a href="http://localhost:8080/kiosk/admin_login">관리자 로그인</a></button>	
	</div>
</body>
</html>