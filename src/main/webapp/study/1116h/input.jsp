<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
	'use strict'
	
	function fCheck(){
		let name = document.getElementById("name").value;
		let price = document.getElementById("price").value;
		
		if(name!=""&&price!="")	{
			alert("등록되었습니다.");
			myform.submit();
		}
		else {
			alert("입력란을 모두 입력해주세요	.");
		}
	}
</script>
<style>
	.input {
		font-size: 1.3em;
		margin: 0px auto;
		padding: 0px;
		text-align: center;
	}
	.txt {
		display: inline-block;
		width: 100px;
	}
</style>
	<h2>등록할 상품의 정보를 입력해주세요.</h2>
	<br/>
	<div class="input">
		<form name="myform" method="post" action="<%=request.getContextPath() %>/j1116h/Product?sw=inP">
		  <p>
		  	<span class="txt">상품명</span> : <input type="text" name="name" id="name" autofocus required/>
		  </p>
		  <p>
		  	<span class="txt">단 가</span> : <input type="number" name="price" id="price" required/>
		  </p>
		  <p>
		  	<span class="txt">수 량</span> : <input type="number" name="count" id="count" value="1" required/>
		  </p>
		  <p>
			  <input type="submit" value="상품등록" class="btn btn-success m-4" />
			  <input type="button" value="재입력" onclick="fCheck()" class="btn btn-danger m-4" />
		  </p>
	  </form>
	</div>
<p><br/></p>
