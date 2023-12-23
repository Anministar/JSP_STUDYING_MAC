<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>




	<jsp:useBean id="bean" class="Ch05.TestDto" scope="application" />
	<jsp:setProperty name="bean" property="msg3" value="msg3-Value" />
	
	
	<%
		System.out.println("03Page : " + bean);
	%>
	<!-- Redirect -->
	<%
		response.sendRedirect("04Page.jsp");
	%>



</body>
</html>