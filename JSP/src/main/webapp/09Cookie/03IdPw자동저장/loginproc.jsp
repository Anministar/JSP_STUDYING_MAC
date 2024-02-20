<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="BC" class="org.mindrot.bcrypt.BCrypt" scope="page" />
	<%
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	String idchk = request.getParameter("idchk");
	String pwdchk = request.getParameter("pwdchk");
	
	
	System.out.println("ID : " + userid);
	System.out.println("PW : " + pwd);
	System.out.println("IDCHK : " + idchk);
	System.out.println("PWCHK : " + pwdchk);
	
	
	
	Cookie id = new Cookie("userid", userid);
	Cookie pw = new Cookie("pwd", pwd);

	if(idchk != null) {
		Cookie ichk = new Cookie("idchk", idchk);	
	} else {
		// 기존의 idchk를 찾아서 제거하는 작업
	}
	
	if(pwdchk != null) {
		Cookie pchk = new Cookie("pwdchk", pwdchk);	
	} else {
		// 기존의 pwdchk를 찾아서 제거하는 작업
	}
	
	
	
	response.addCookie(id);
	response.addCookie(pw);
	response.addCookie(ichk);
	response.addCookie(pchk);
	%>
	



</body>
</html>