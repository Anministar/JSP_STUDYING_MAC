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
	
	
	// NULL 확인
	Integer list1[] = null;
	Integer list2[]	= {1, 2, 3};
	request.setAttribute("list1", list1);
	request.setAttribute("list2", list2);
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
<hr>
<!-- 보통은 문자와 숫자에 대한 연산을 문자열이라고 생각해 이어붙이는 형태  -->
[ETC] 기타연산 : <%=1+"1" %> <br>
<!-- EL태그는 문자열안에 숫자가 있다면 이를 숫자로 해석 후에 연산한 값을 담아냄.  -->
[ETC] 기타연산 : ${1 + "1" } <br>
<hr>
[NULL] empty null : ${empty null } <br>
[NULL] empty null : ${empty list1 } <br>
[NULL] empty null : ${list1==null} <br>
[NULL] empty null : ${empty list2 } <br>
[NULL] null==0 : ${null==0 } <br>





</body>
</html>