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
	String cname = request.getParameter("cname");
	Cookie[] cookies = request.getCookies();

	if(cookies!=null) {		// 쿠키가 있을때 반복처리
		for(Cookie cookie : cookies) {
			if(cookie.getName().equals(cname)) { // 파라미터로 받은 이름과 쿠키의 이름이 동일한 경우
				// 쿠키 삭제
				cookie.setMaxAge(0);
				// 브라우저로 전달
				response.addCookie(cookie);
				
				// 쿠키의 수명을 0으로 만들면 해당 쿠키는 만료되고,
				// 그 후에 해당 쿠키를 response 객체에 추가함으로써 서버는 브라우저에게 해당 쿠키를 삭제하라는 신호를 보내게 됩니다. 
				// 브라우저는 이 신호를 받고, 해당 쿠키를 삭제하여 클라이언트 측의 쿠키 상태를 업데이트합니다. 
				
				// 쿠키의 수당을 0으로 만료시키고 이를 다시 response를 통해서 클라이언트로 전달해서 삭제하는 방법
				
			}
			
		}
	}
	
%>
<a href="Confirm.jsp">쿠키 확인</a>

</body>
</html>