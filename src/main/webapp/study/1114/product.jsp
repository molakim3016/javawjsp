<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>title</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<script>
	'use strict'
	
	let cnt = 0;
	
	$(function(){
		$('.addproduct').click(function(){
			cnt++
			$('#demo').append('<div id="info'+cnt+'">상품명 <input type="text" name="proN" id="proN'+cnt+'" required />가격 <input type="number" name="proP" id="proP'+cnt+'" required />수량 <input type="number" name="proC" id="proC'+cnt+'" required /><input type="button" value="삭제" onclick="deleteInfo('+cnt+')"></div>')
		});
	});
	
	function deleteInfo(cnt) {
		let info = "info"+cnt;
		let num = document.getElementById(info);
		num.parentNode.removeChild(num);
	}
	
</script>
<body>
<p><br/></p>
<div class="container">
  <h2>상품등록</h2>
  <form name="myform" method="get" action="<%=request.getContextPath() %>/ProductRes">
  	<p>구매자 : <input type="text" name="name" id="name" autofocus /><br/></p>
  	<p>
  	상품분류 : 
  	<select name="menu" id="menu">
	    <option value="한식">한식</option>
	    <option value="양식">양식</option>
	    <option value="중식">중식</option>
	    <option value="디저트">디저트</option>
    </select>
    </p>
    <p>
    	<input type="button" value="상품추가하기" class="btn btn-success addproduct" />
    </p>
    <div id="demo"></div>
    <input type="submit" value="상품 등록하기"class="btn btn-primary" />
  </form>
</div>
<p><br/></p>
</body>
</html>