<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>yahari receipt</title>
<style>
	<%-- 초기화 --%> 
		*{box-sizing: border-box;}
		body {margin: 0; padding: 0;}
		a{text-decoration: none; color:#000;}
		a{
     	 position: absolute;
         left: 50%;
         transform: translateX(-50%);
      }
      
	<%-- wrap --%> 
		#wrap {
   		border: 2px solid #ffe0e0;
   		width: 750px; height: 100vh;
   	
   		position: absolute;
   		left: 50%;
   		transform: translateX(-50%);
   	}
	
	#receipt {
		width: 300px;
		border: 1px solid #000;
		margin: 100px auto;
		padding-top: 20px;
		
	}
	
	h2 {text-align: center;}
	p{padding-left: 10px;}
	
	table {padding-left: 10px;}
	
	span {padding-left: 10px;}
	
	<%-- orderNum --%> 
	
	#orderNum{
		display: flex;
		justify-content: center;
		align-items: center;
		padding-top:200px;
		flex-wrap: wrap;
		}
		
	#orderNum h2{
		margin-top: 50px;
		margin-bottom: 50px;
	}
		
	#img0{
		width: 160px;
		height: 156px;
		background-image: url("../../../../resources/images/banner/num0.jpg");
		background-repeat: no-repeat;
	}
	
	#img1{
		width: 160px;
		height: 158px;
		background-image: url("../../../../resources/images/banner/num1.jpg");
		background-repeat: no-repeat;
	}
	
	#img2{
		width: 160px;
		height: 140px;
		background-image: url("../../../../resources/images/banner/num2.jpg");
		background-repeat: no-repeat;
	}
	
	
	#img4{
		width: 160px;
		height: 140px;
		background-image: url("../../../../resources/images/banner/num4.jpg");
		background-repeat: no-repeat;
	}
	
	
		
	
	
</style>
</head>
<body>
<div id="wrap">


	<c:if test="${receipt == \"Y\"}">
	<div id="receipt">
	<div>
	<h2>영수증</h2>
	<p>상호 : やはりラーメン(동성로점)</p>
	<p>주소 : 대구시 중구 동성로 000</p>
	<p>대표 : 김그린비</p>
	<p>사업자번호 : 1234567890</p>
	
	<hr>
	
	<h2>주문번호 : ${orderNum}</h2>
	<p>출력날짜 : 2023-03-22</p>
	<p>포스ID : 12345</p>
	
	<hr>
	<br>
	<table>
		<tr>
			<th>상품명</th>
			<th>단가</th>
			<th>수량</th>
			<th>총금액</th>
		</tr>
			<c:forEach var="i" begin="0" end="${fn:length(cart) - 1}" >
			<tr>
				<td>${cart[i].name}</td>
				<td>${cart[i].price}</td>
				<td>${countList[i]}</td>
				<td>${cart[i].price * countList[i]}</td>
			</tr>
		    </c:forEach>
	</table>
	<br>
	<hr>
	<span>합계 금액 : ${pay} </span>
	<hr>
	</div>
	</div>
	</c:if>
	
	
	<c:if test="${receipt == \"N\"}">
	<div id="orderNum">
	<span id="img0"></span>&nbsp;
	<span id="img1"></span>&nbsp;
	<span id="img2"></span>&nbsp;
	<span id="img4"></span>
	
		<h2>주문번호 : ${orderNum}</h2>
	</div>
	</c:if>
	
	
	
	


	
	<a href='<c:url value="/kiosk"/>' style="color:red;"> 메인으로 </a>
</div>	
</body>
</html>