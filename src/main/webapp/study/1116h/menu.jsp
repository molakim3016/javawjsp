<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	.menu {
		font-size: 2em;
	}
	a {
		color: black;
	}
	a:hover {
		color: black;
		background-color: #cfc;
		text-decoration: none;
	}
</style>
<div class="menu text-center">
  <a href="<%=request.getContextPath() %>/j1116h/Product">홈</a> |
  <a href="<%=request.getContextPath() %>/j1116h/Product?sw=inP">상품등록</a> |
  <a href="<%=request.getContextPath() %>/j1116h/Product?sw=outP&name=${vo.name}&price=${vo.price}&count=${vo.count}">상품조회</a>
</div>
