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

	// 1 파라미터 받기
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	
	// 2 유효성체크 (Validation) - 생략(userid는 일치, pwd 일치...)
		%>
		
		<jsp:useBean id="sessionDto" class="Ch08.SessionDto" scope="application" />
		
		<%
		
		// 3 Service
		session.setAttribute("userid", userid);
		session.setAttribute("remoteip", request.getRemoteAddr()); // 클라이언트가 어느 ip에서 접속했는지.
		
		session.setMaxInactiveInterval(60 * 60);	// 30분 	==> 60 * 30
													// 1시간 	==> 60 * 60
													// 1일 	==> 60 * 60 * 24
		//sessionDto의 속성 중 Map을 Get하여 userid와 session객체주소를 저장.
		sessionDto.getSessionMap().put(userid,session);
		// 4 View
		response.sendRedirect("main.jsp");		
	
	

	
	

	

%>

</body>
</html>