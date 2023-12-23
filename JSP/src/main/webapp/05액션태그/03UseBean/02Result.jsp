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
		// 파라미터 받기
		// 1. request.getParameter()
		// String code = request.getParameter("bookcode");
		// String name = request.getParameter("bookname");
		// String price = request.getParameter("price");
		// System.out.println(bookcode + " " + bookname + " " + price);
		
		// 2. useBean
	%>
	
	<!-- bookdto 빈객체 생성 -->
	<jsp:useBean id="bookdto" class="Ch05.BookDto" scope="page" />
	<!-- 모든 파라미터 값 bookdto에 저장(Setter 함수 이용) -->
	<jsp:setProperty name="bookdto" property="*" />
	<!-- 확인(toString()) -->
	결과 : <%=bookdto %>
	
	
	

</body>
</html>