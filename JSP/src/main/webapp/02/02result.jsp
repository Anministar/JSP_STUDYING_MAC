<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<%

	String[] hobbys = request.getParameterValues("hobbys");

	for (String hobby : hobbys) {
		out.println("ParamVal : " + hobby + "<br>");
	}

%>


</body>
</html>