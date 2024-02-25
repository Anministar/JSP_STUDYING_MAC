<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="Ch10.*" %>

<%
	pageContext.setAttribute("KEY", "PAGE VALUE");
	request.setAttribute("RequestKey", "RequestValue");
	session.setAttribute("SessionKey", "SessionVal ue");
	
	// 중복확인
	request.setAttribute("KEY", "REQ VLAUE");
	session.setAttribute("KEY", "SESSION VALUE");
	
	// 객체
	Person obj = new Person();
	obj.setName("홍길동");
	obj.setAge("55");
	obj.setAddr("대구");
	// 이 상태로 EL태그에 넣을 순 없고, session, pageContext, Parameter안에 넣어줘야함.
	request.setAttribute("hong", obj);
%>


[PARAM] USERID : ${param.userid} <br>
[PARAM] PWD : ${param.pwd} <br>
<hr>
[ATTR] REQUEST KEY : ${requestScope.RequestKey } <br>
[ATTR] REQUEST KEY : ${RequestKey } <br>
[ATTR] SESSION KEY : ${sessionScope.SessionKey } <br>
[ATTR] SESSION KEY : ${SessionKey } <br><br>
<hr>
[중복확인] KEY : ${KEY } <br>
<hr>
[OBJECT] HONG : ${hong }<br>
[OBJECT] HONG : ${hong.getName() }<br>
[OBJECT] HONG : ${hong.name }<br>
[OBJECT] HONG : ${hong.age }<br>
[OBJECT] HONG : ${hong.addr }<br>





</body>
</html>