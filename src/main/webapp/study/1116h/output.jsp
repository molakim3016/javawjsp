<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	.output {
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
<p><br/></p>
<h2>등록된 상품의 정보입니다.</h2>
<div class="output">
  <p>
  	<span class="txt">상품명</span> : ${vo.name}
  </p>
  <p>
 		<span class="txt">단 가</span> : ${vo.price}
  </p>
  <p>
  	<span class="txt">수 량</span> : ${vo.count}
  </p>
  <p>
  	<span class="txt">총가격</span> : ${vo.tot}
  </p>
</div>
<p><br/></p>
