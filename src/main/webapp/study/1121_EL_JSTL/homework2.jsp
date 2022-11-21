<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>homework2</title>
	<jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/></p>
<div class="container">
 <%
							 //0        1         2
							 //012345678901234567890123456
	String atom = "Welcome to My Homepage!";
	pageContext.setAttribute("atom", atom);
%>
	<h2>atom : ${atom}</h2>
	<form name="myform">
		6-2.atom변수에 기억되어 있는 문자를 입력받아 그 문자가 두번째로 기억되어 있는 위치값을 출력하시오.
				단, 두번째 기억값이 없으면 1번째 기억위치를 출력하고 '두번째 값 없음'을 합께 출력하시오.<br/>
		<input type="text" name="find" class="form-control mb-3"/>
		<input type="submit" value="결과출력" class="btn btn-success form-control mb-3"/>
		<c:set var="find" value="${param.find}"/>
		<c:set var="af" value="${fn:substringAfter(atom,find)}"/>
		<c:set var="bf" value="${fn:substringBefore(atom,find)}"/>
		<c:set var="afio" value="${fn:indexOf(af,find)}"/>
		<c:choose>
			<c:when test="${afio==-1}">입력한 문자 ${find} 의 1번째 위치는 ${fn:length(bf)} 이며 두번째 값은 없습니다.</c:when>
			<c:otherwise>입력한 문자 ${find} 의 2번째 위치는 ${afio+1+fn:length(bf)} 입니다.</c:otherwise>
		</c:choose>
		<br/>
		<br/>
	</form>
</div>
<p><br/></p>
</body>
</html>