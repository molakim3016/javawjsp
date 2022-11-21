<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- t1_CookiesDeletePwd.jsp -->
<% 
	Cookie[] cookies = request.getCookies();
	int sw=0;

	if(cookies != null) {
		for(int i=0;i<cookies.length; i++) {
			String strName = cookies[i].getName();
			if(strName.equals("cPwd")){
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
				sw=1;
%>
				<script>
					alert("비밀번호 쿠키 삭제 완료!!");
					location.href="t1_CookiesMain.jsp";
				</script>
<%
			}
		}
		if(sw==0){
%>
			<script>
				alert("비밀번호 쿠키가 없습니다!!");
				location.href="t1_CookiesMain.jsp";
			</script>
<%
		}
	}
%>
