<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.io.*" %>



	<%
		// response.sendRedirect("../02Request/01Request.jsp");
		// response 헤더정보 지정
		// 3초마다 새로고침이 됨.
		// response.setIntHeader("Refresh", 3);
		// response.sendError(404, "지각좀하지마라 좀 제발!!");
		
		// response.outStream 꺼내오기
		// 밑에 주석 코드 실행하면 java.lang.IllegalStateException: 이 응답을 위해 getOutputStream()이 이미 호출되었습니다.
		// 이 에러가 계속 뜨는데 이유를 모르겠음. getWriter()를 쓴것도 아니고 out객체가 있는 것도 아닌데 ㅋㅋ..
	/* 	out.clear();
		out = pageContext.pushBody(); */
		// 위 코드들을 넣으니깐 문제가 해결되었음.

		/* ServletOutputStream bout = response.getOutputStream();
		bout.write(102);
		bout.flush();	// 버퍼 초기화
		bout.close();	// 닫기  */
		
		// out과 같은거임
		PrintWriter o = response.getWriter();
		o.println("<h1>TEST</h1>"); 
		o.close();
	
	%>
	
	<%=new java.util.Date().toString() %>


</body>
</html>