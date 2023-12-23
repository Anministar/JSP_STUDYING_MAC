<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<!-- 선언문 -->
<!-- /Users/popo/Desktop/Jsp_Servlet/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/work/Catalina/localhost/ROOT/org/apache/jsp -->
	<%!
	//변수 추가
	String hello = "Hello World";

	//함수 추가
	public String testFunc() {
		System.out.println("선언문 테스트");
		return "abcd";
	}%>
	
	<!-- -->
	<%=hello %><br>
	<%=testFunc() %><br>
	



</body>
</html>