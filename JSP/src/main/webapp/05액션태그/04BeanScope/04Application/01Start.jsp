<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	
	<%
		// scope이 session일 때 유효. 기본은 5분임.
		session.setMaxInactiveInterval(5);
	%>

	<!-- application은 tomcat이 유지되는 동안에는 계속 유효 -->
	<jsp:useBean id="bean" class="Ch05.TestDto" scope="application" />
	<jsp:setProperty name="bean" property="msg1" value="msg1-Value" />
	
	
	<%
		System.out.println("01Start : " + bean);
	%>
	
	<!-- Redirect -->
	<%
		response.sendRedirect("02Page.jsp");
	%>
	





</body>
</html>