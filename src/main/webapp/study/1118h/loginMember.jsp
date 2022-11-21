<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();
	String mid = "";
	
	if(cookies != null) {
		for(int i=0;i<cookies.length; i++) {
			if(cookies[i].getName().equals("ccMid"))	{
				mid = cookies[i].getValue();
				break;
			}
		}
	}	
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>멤버페이지</title>
	<jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>회원 전용방</h2>
  <p><font color="blue">${sMid}</font>님 로그인 중이십니다.</p>
  <p>방문자 수(session) : ${sVisitCnt}</p>
  <hr/>
  <p><img src="${pageContext.request.contextPath}/images/3.jpg" width="300px"/></p>
  <hr/>
		<div><a href="${pageContext.request.contextPath}/study/j1118h/LogOutOk" class="btn btn-success form-control">로그아웃</a></div>
  <hr/>
</div>
<p><br/></p>
</body>
</html>