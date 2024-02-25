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
	// cookie path는 기본적으로 최상위 path, 모든 url 경로로 다 쿠키값이 전달되기 때문에 확인할 수 있음.
	Cookie[] cookies = request.getCookies();
	String userid = null;
	String pwd = null;
	String idchk = null;
	String pwdchk = null;
	
	if(cookies != null) {
		for(Cookie cookie : cookies) {
			if(cookie.getName().equals("userid")) {
				userid = cookie.getValue();
			}
			if(cookie.getName().equals("pwd")) {
				pwd = cookie.getValue();
			}
			if(cookie.getName().equals("idchk")) {
				idchk = cookie.getValue();
			}
			if(cookie.getName().equals("pwdchk")) {
				pwdchk = cookie.getValue();
			}
		}
	}
	%>

	<!-- 
	post방식으로 해도, 개발자 도구 네트워크 탭에 loginproc.jsp의 쿠키값을 확인하면 모두 나와있음(userid, pwd)
	따라서 Bcrypt를 사용해서 password를 사용해서 암호화하는거임.
	  -->
	<form action="loginproc.jsp" method="post">
	
		<input type=text name=userid value="<%=(idchk != null) ? userid : "" %>" /><br>
		<input type=text name=pwd value="<%=(pwdchk != null) ? pwd : "" %>" /><br>
		
		<%
		if(idchk != null) {
			out.println("<input type=checkbox name=idchk checked/> ID저장<br>");
		} else {
			out.println("<input type=checkbox name=idchk /> ID저장<br>");
		}
		if(pwdchk != null) {
			out.println("<input type=checkbox name=pwdchk checked/> PW저장<br>");
		} else {
			out.println("<input type=checkbox name=pwdchk /> PW저장<br>");
		}
		%>
		<%-- <%
		if(idchk != null) {
			out.println("<input type=text name=userid value=" + userid +" s> <br> ");
		} else {
			out.println("<input type=text name=userid /><br>");
		}
		if(pwdchk != null) {s
			out.println("<input type=password name=pwd value=" + pwd +" /> <br> ");
		} else {
			out.println("<input type=password name=pwd /><br>");
		}
		
		if(idchk != null) {
			out.println("<input type=checkbox name=idchk checked /> ID저장<br>");
		} else {
			out.println("<input type=checkbox name=idchk /> ID저장<br>");
		}
		
		if(pwdchk != null) {
			out.println("<input type=checkbox name=pwdchk checked /> PW저장<br>");
		} else {
			out.println("<input type=checkbox name=pwdchk /> PW저장<br>");
		}
		%> --%>
		<input type="submit" value="로그인" />
	</form>





</body>
</html>
