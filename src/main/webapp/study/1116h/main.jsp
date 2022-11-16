<%@page import="j1116h.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	ProductVO vo = (ProductVO)request.getAttribute("vo");
	request.setAttribute("vo", vo);
	String sw = request.getParameter("sw")==null? "" : request.getParameter("sw");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>title</title>
	<%@ include file="../../include/bs4.jsp" %>
	<style>
	body {
		width: 1000px;
		margin: 0px auto;
		padding: 0px;
		background-color: #d5c9dd;
	}
	.container{
		text-align: center;
	}
	.content {
		margin: 0px;
	}
	</style>
</head>
<body>
<p><br/></p>
<div class="container">
	<h2>상품판매관리</h2>
	<p><br/></p>
  <div id="header">
  <br/>
		<%@ include file="menu.jsp" %>
  </div>
  <br/>
  <hr/>
  <div id="content">
<%if(sw.equals("inP")) {%>
	<%@ include file="input.jsp" %>
<%} else if(sw.equals("outP")) {%>
	<%@ include file="output.jsp" %>
<%} else { %>
	<%@ include file="home.jsp" %>
<%} %>
  </div>
  <hr/>
  <div id="footer">
  	<%@ include file="footer.jsp" %>
  </div>
</div>
<p><br/></p>
</body>
</html>