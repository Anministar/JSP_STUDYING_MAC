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
	
		System.out.println("PageContext : " + pageContext );
		System.out.println("Request객체꺼내오기 : " + pageContext.getRequest() );
		System.out.println("Response객체꺼내오기 : " + pageContext.getResponse() );
		System.out.println("ContextPath 확인 : " + pageContext.getServletContext().getContextPath());
		
	%>
	<!-- Servlet에서 많이 사용  -->
	ContextPath 확인 : ${ pageContext.request.contextPath }



</body>
</html>