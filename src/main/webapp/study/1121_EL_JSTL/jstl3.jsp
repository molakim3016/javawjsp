<%@page import="java.util.ArrayList"%>
<%-- <%@page import="study.database.*"%> --%>
<%@page import="study.database.JusorokVO"%>
<%@page import="study.database.JusorokDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>jstl3.jsp</title>
	<jsp:include page="../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/></p>
<%
	JusorokDAO dao = new JusorokDAO();

	ArrayList<JusorokVO> vos = dao.getMemberList();
	pageContext.setAttribute("vos", vos);
%>
<div class="container">
  <h2>회원 전체 리스트</h2>
  <table class="table table-hover">
  	<tr class="table-dark text-dark">
  		<th>번호</th>
  		<th>아이디</th>
  		<th>비밀번호</th>
  		<th>성명</th>
  		<th>포인트</th>
  		<th>최근방문일</th>
  	</tr>
  	<c:set var="cnt0" value="0"/>
  	<c:forEach var="vo" items="${vos}" varStatus="st">
  	<c:set var="cnt0" value="${cnt0+1}"/>
	  	<tr>
	  		<td>${st.count}</td>
	  		<td>${vo.mid}</td>
	  		<td>${vo.pwd}</td>
	  		<td>${vo.name}</td>
	  		<td>${vo.point}</td>
	  		<td>${vo.lastDate}</td>
	  	</tr>
  	</c:forEach>
  	<tr><td colspan="6" class="m-0 p-0"></td></tr>
  </table>
  전체 출력 건수: <font color="red"><b>${cnt0}</b></font>건
  <hr/>
  <h4>등록된 회원중 홀수번째 가입한 회원만 출력하시오?</h4>
  <h2>회원 전체 리스트2</h2>
  <table class="table table-hover">
  	<tr class="table-dark text-dark">
  		<th>번호</th>
  		<th>아이디</th>
  		<th>비밀번호</th>
  		<th>성명</th>
  		<th>포인트</th>
  		<th>최근방문일</th>
  	</tr>
  	<c:set var="tot2" value="0"></c:set>
  	<c:forEach var="vo" items="${vos}" varStatus="st">
  		<c:if test="${st.count % 2 == 1}">
  		<c:set var="tot2" value="${tot2+1}"></c:set>
		  	<tr>
		  		<td>${st.count}</td>
		  		<td>${vo.mid}</td>
		  		<td>${vo.pwd}</td>
		  		<td>${vo.name}</td>
		  		<td>${vo.point}</td>
		  		<td>${vo.lastDate}</td>
		  	</tr>
	  	</c:if>
  	</c:forEach>
  	<tr><td colspan="6" class="m-0 p-0"></td></tr>
  </table>
  전체 전체 출력 건수: <font color="red"><b>${tot2}</b></font>건
  <hr/>
  <h2>회원 전체 리스트3</h2>
  <table class="table table-hover">
  	<tr class="table-dark text-dark">
  		<th>번호</th>
  		<th>아이디</th>
  		<th>비밀번호</th>
  		<th>성명</th>
  		<th>포인트</th>
  		<th>최근방문일</th>
  	</tr>
  	<c:forEach var="vo" items="${vos}" step="2" varStatus="st">
  	<c:set var="tot3" value="${st.count}"></c:set>
	  	<tr>
	  		<td>${st.count}</td>
	  		<td>${vo.mid}</td>
	  		<td>${vo.pwd}</td>
	  		<td>${vo.name}</td>
	  		<td>${vo.point}</td>
	  		<td>${vo.lastDate}</td>
	  	</tr>
  	</c:forEach>
  	<tr><td colspan="6" class="m-0 p-0"></td></tr>
  </table>
  전체 전체 출력 건수: <font color="red"><b>${tot3}</b></font>건
</div>
<p><br/></p>
</body>
</html>