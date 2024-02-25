<%@page import="org.mindrot.bcrypt.BCrypt"%>
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
	
	
	// DB로 부터 받은 패스워드 (가정)
	/* String salt = BC.gensalt(); */
	String dbpw = BC.hashpw("1234", BC.gensalt());
	
	/* pwd = BC.hashpw(pwd, salt); */
	// 첫번째 인자 : 암호화할 password를 전달
	// 두번째 인자(genaratesale()) : Salt값 == 패스워드의 암호화 복잡성을 증가시키기 위한 코드
	// salt값을 이용해서 암호화(해싱)시키는데 이를 원문으로 돌릴 수 없음.
	// 따라서 암호화를 진행할 때 사용함.
	
	
	
	// checkpw(String plaintext, String hashed)
	// plaintext : 비밀번호 원문
	// hashed 	 : salt 값으로 해싱된 해싱값
	
	// 이때 pwd는 pwd = BC.hashpw(pwd, salt) 이게 아니고,
	// request.getParameter("pwd") 여기서 받아온 "pwd 원문"이여야 함.
	
	if(!BC.checkpw(pwd, dbpw)) { 
		// 만약 db에 있는 해싱된 비밀번호와 일치하지 않는다면
		// login.jsp로 sendRedirect형태로 전달하고 함수를 종료
		response.sendRedirect("login.jsp");	
		return ;
	} 
	
	
	
	
	Cookie pw = new Cookie("pwd", pwd);
	
	response.addCookie(id);
	response.addCookie(pw);

	if(idchk != null) {		// id저장체크가 되어있다면
		Cookie ichk = new Cookie("idchk", idchk);		// id체크값(on문자열)을 저장한 쿠키 생성
		response.addCookie(ichk);			// 클라이언트로 id체크 쿠키 전달
	} else {				// id저장체크가 안되어 있다면
		// 기존의 idchk를 찾아서 제거하는 작업
		Cookie[] cookies = request.getCookies();
		for(Cookie cookie : cookies) {
			if(cookie.getName().equals("idchk")) {
				cookie.setMaxAge(0);		// 쿠키 유지시간 0초
				response.addCookie(cookie);	// 클라이언트로 0초 쿠키 전달
			}
		}
	}
	
	if(pwdchk != null) {
		Cookie pchk = new Cookie("pwdchk", pwdchk);	
		response.addCookie(pchk);
	} else {
		// 기존의 pwdchk를 찾아서 제거하는 작업
		Cookie[] cookies = request.getCookies();
		for(Cookie cookie : cookies) {
			if(cookie.getName().equals("pwdchk")) {
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
		}
	}
	
	response.sendRedirect("main.jsp");
	
	
	%>
	



</body>
</html>