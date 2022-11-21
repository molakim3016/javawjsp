<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>homework1</title>
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
		5-3. atom변수에 기억되어 있는 문자를 입력받아 그 문자가 두번째로 기억되어 있는 위치값을 출력하시오.
				 단, 두번째 기억값이 없으면 1번째 기억위치를 출력하고 '두번째 값 없음'을 함께 출력하시오.<br/>
		<input type="text" name="find" class="form-control mb-3"/>
		<input type="submit" value="결과출력" class="btn btn-success form-control mb-3"/>
		<c:set var="cnt" value="0"/>
		<c:set var="find" value="${param.find}"/>
		<c:set var="num1" value="0"/>
		<c:set var="num2" value="0"/>
		<c:forEach var="i" begin="0" end="${fn:length(atom)-1}">
			<c:if test="${fn:substring(atom,i,i+1) == find}">
				<c:set var="cnt" value="${cnt +1}"/>
				<c:if test="${cnt == 1}">
					<c:set var="num1" value="${i}"/>
				</c:if>
				<c:if test="${cnt == 2}">
					<c:set var="num2" value="${i}"/>
				</c:if>
			</c:if>
		</c:forEach>
		<c:choose>
			<c:when test="${num2 !=0}">입력한 문자 ${find} 의 2번째 위치는 ${num2} 입니다.</c:when>
			<c:when test="${num1 !=0}">입력한 문자 ${find} 의 1번째 위치는 ${num1} 이며 두번째 값은 없습니다.</c:when>
		</c:choose>
		<br/>
	</form>
</div>
<p><br/></p>
</body>
</html>