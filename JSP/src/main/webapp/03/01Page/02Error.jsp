<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>ERROR PAGE</h1>
<!-- 
밑에처럼 적어도 가능
그러나 에러 메세지를 직접 출력하면서 페이지 이동을 하는건 보안상 좋지 않음.
 -->
<%-- Error : <%=exception.printStackTrace() %> --%>
Error : <%=exception.getMessage() %>
 


</body>
</html>