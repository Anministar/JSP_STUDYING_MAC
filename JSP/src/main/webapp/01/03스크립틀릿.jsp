<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!
	int b = 0;		// 멤버변수 (application eㅗㅇ작동안에는 값 유지)
%>


<!-- 
	스크립틀릿
		- 서블릿파일 내 service 함수 안에 삽입되는 코드
		- 반복/분기문 사용가능 
 -->

<%
	String str1 = "HELLO WORLD1";	// 지역변수 
	String str2 = "HELLO WORLD2";	// 지역변수 
	int a = 0; 
	a++;							// 지역변수 a 값 1 증가(호출시에 다시 0 초기화)
	b++;							// 멤버변수 b 값 1증가
	// 반복문 사용가능
	for(int i = 0; i < 10; i++) {
		System.out.println("HELLO WORLD" + i);
	}
	
%>	


<%=str1 %><br>
<%=str2 %><br>
<%=a %><br>
<%=b %>


</body>
</html>