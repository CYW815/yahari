<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Yahari Pay</title>
<script type="text/javascript" src="../../../../resources/js/pay.js" defer></script>
<style type="text/css">
	*{box-sizing: border-box;}
	
   	body {margin: 0; padding: 0;}
   	
   	a{text-decoration: none; color:#000;}
   	
	#wrap {
   		border: 3px solid #ffe0e0;
   		width: 750px; height: 100vh;
   		text-align: center;
   		position: relative;
   		left: 50%;
   		transform: translateX(-50%);
   		
   	}
   	
   	#left{
   		position: absolute;
   		left:20px;
   	}
   	
   	#left h1{
   		position: relative;
   		left:30px;
   		color:orangered;
   	}
   	
   	#right{
   		width: 60%;
   		position: absolute;
   		right:20px;
   		top:40px;
   	
   	}
   	
   	#logo{
   		width: 140px;
   		height: 140px;
   		background-image:url("../../../../resources/images/banner/logo.jpg");
   		background-size:contain;
   		margin-left:70px;
   		margin-top: 30px;
   	}

	#order{
		width:150px;
		height: 400px;
		background-color:#fdffee;
		border:3px solid #ffe0e0;
		position: relative;
		left:60px;
		bottom:30px;
		
	}
   	
   	#pay{
   		width:70px;
   	}
   	
   	#sum{
   		position:relative;
   		left:40px;
   	
   	}
   	
   	#footerLogo{
   	
   		width:537px;
   		height: 140px;
   		background-image:url("../../../../resources/images/banner/footerLogo.jpg");
 		position: absolute;
 		bottom: 30px;
 		left: 110px;
   	}
   	
   	.form_radio_btn {
			width: 37%;
			height : 80px;
    		border: 1px solid #EAE7E7;
    		border-radius: 10px;
		}
		.form_radio_btn input[type=radio] {
			display: none;
		}
		.form_radio_btn label {
			display: block;
    		border-radius: 10px;
   			margin: 0 auto;
    		text-align: center;
    		height: -webkit-fill-available;
    		line-height: 80px;
		}
		 
		/* Checked */
		.form_radio_btn input[type=radio]:checked + label {
			background: #ec7070;
			color: #fff;
		}
		 
		/* Hover */
		.form_radio_btn label:hover {
			color: #666;
		}
		 
		/* Disabled */
		.form_radio_btn input[type=radio] + label {
			background: #F9FAFC;
			color: #666;
		}
		
		.form_toggle{
			display:flex;
			justify-content: space-evenly;
		}
   	
   		#whatPay{
   			font-size:2em;
   			font-weight: bold;
   			color:orangered;
   		}
   	
   		.hr{
   			border-bottom: 3px solid #ffe0e0;
   			width:380px;
   			position: relative;
   			left:30px;
   		}
   		
   		.pointbox{
   			width:350px;
   			height: 110px;
   			border:1px solid #000;
   			position: relative;
   			left:50px;
   			background-color:#fdffee;
			border:3px solid #ffe0e0;
   		}
   		
   		.money{
   			width:70px;
   		}
   		
   		.text1{
   			text-align: left;
   			padding-left: 20px;
   			padding-top: 20px;
   		}
   		
   		.text2{
   			text-align: left;

   		}
   		
   		#text3{
   			padding-top: 40px;
   			text-align: left;
   			padding-left: 20px;
   		}
   
</style>
</head>
<body>
	<div id="wrap">
	
	<div id="left">
		<div id="logo"></div>
		<h1>주문 내역</h1><br>
		<div id="order"><br>
		<c:forEach var="i" begin="0" end="${fn:length(cart) - 1}" >
			<p>${cart[i].name} : ${countList[i]}</p>
		</c:forEach>
		</div>
		<div id="sum">
		합계 금액 : <input id="pay" value="${pay}"> 원
		</div>
		
	</div>
	
	<div id="right">	
	
	
	
	<label for="userPay" class="form-label" id="whatPay">결제 수단</label><br><br>
	<form:form modelAttribute="payCommand" name="payForm">
	<c:if test="${not empty customer}">	
	<div class="form_toggle row-vh d-flex flex-row justify-content-between" >
		<div class="form_radio_btn radio_card">
			<input id="radio-1" type="radio" name="payType" value="card" checked >
			<label for="radio-1">CARD</label>
		</div>
								 
		<div class="form_radio_btn">
			<input id="radio-2" type="radio" name="payType" value="cash">
			<label for="radio-2">CASH</label>
		</div>
	</div>
	
	
		<br>
		<div class="hr"></div><br>
		
		<div class="pointbox">
		
		<div class="text1">
		<label for="point">현재 포인트&nbsp;</label>
		<input type="text" id="point" name="point" value="${customer.point}"  class="money" readonly="readonly"/><br><br>
		</div>
		
		<div class="text2">
		<label for="usePoint" class="text1">사용할 포인트&nbsp;</label>
		<input type="text" id="usePoint" name="usePoint" value="0" class="money">
		&nbsp;<button type="button" id="pBtn">포인트 사용하기</button><br>
		</div>
		</div>
		
		<br><div class="hr"></div><br>
		
		<div class="pointbox">
		<div id="text3">
		<label for="balance">최종 결제금액&nbsp;</label>
		<input type="text" id="balance" name="balance" readonly="readonly" class="money">
		</div>
		</div>
		</c:if>
		<br><div class="hr"></div><br> 
		
		<div class="pointbox">
			<br>
			영수증 출력 여부<br><br>
			<form:radiobutton path="receiptType" value="Y" label="예" checked="checked"/>
			<form:radiobutton path="receiptType" value="N" label="아니오"/>
		
		</div>
		<br><div class="hr"></div><br> 
		
	</form:form><br>
	<button id="payment">결제하기</button>

	</div>
		<div id="footerLogo"></div>	
	</div>

</body>
</html>