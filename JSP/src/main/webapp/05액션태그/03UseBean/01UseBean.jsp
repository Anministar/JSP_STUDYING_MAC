<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<!-- Bean 생성 -->
	<jsp:useBean id="dto" class="Ch05.SimpleDto" scope="page" />
	<%
		// jsp:useBean 태그를 사용하면 객체가 만들어짐.
		// 객체를 만들고 나서 pageContext 저장소 안에 setAttribute()로 저장되어 있음. 
		// 이를 getAttribute()로 꺼내오는 작업.
		System.out.println("BEAN : " + pageContext.getAttribute("dto"));
		System.out.println("BEAN : " + dto);
	%>
	<jsp:setProperty name="dto" property="name" value="홍길동" /> 


	<%
		System.out.println("BEAN : " + dto);
		dto.setAge("55");
		dto.setAddr("대구");
		System.out.println("BEAN : " + dto);
	%>
	
	확인 : <jsp:getProperty name="dto" property="name" /> <br>
	확인 : <%=dto.getAge() %> <br>
	확인 : ${dto.getAddr() } <br>




</body>
</html>