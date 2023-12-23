<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>




	<jsp:useBean id="bean" class="Ch05.TestDto" scope="request" />
	<jsp:setProperty name="bean" property="msg3" value="msg3-Value" />
	
	
	<%
		System.out.println("03Page : " + bean);
	%>
	
	
	<!-- forwarding(request는 유지된다) -->
	<jsp:forward page="04Page.jsp" />



</body>
</html>