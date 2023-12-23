<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  	<!-- link -->
	<%@include file="module/link.jsp" %> 
</head>

<body>
	<!-- header  -->
  <%@include file="module/header.jsp" %>
  
  <%@page import="java.io.*" %>
  
  <%
  
  
  	System.out.println("REALPATH : " + pageContext.getServletContext().getRealPath("/")	);
  
  	String filepath = pageContext.getServletContext().getRealPath("/");
  	File dir = new File(filepath + "05액션태그/02IncludeAction/actionTest");
  	String[] lists = dir.list();
  	for(String list : lists) {
  		System.out.println("FILE : " + list);
  	}
  %>
  <jsp:include page="module/section1.jsp">
  		<jsp:param name="Img1" value="<%=lists[0] %>" />
  		<jsp:param name="Img2" value="<%=lists[1] %>" />
  		<jsp:param name="Img3" value="<%=lists[2] %>" />
  		<jsp:param name="Img4" value="<%=lists[3] %>" />
  		<jsp:param name="Img5" value="<%=lists[4] %>" />
  </jsp:include>
  
<%--     <jsp:include page="module/section1.jsp">
  		<jsp:param name="Img1" value="Image01" />
  		<jsp:param name="Img2" value="Image02" />
  		<jsp:param name="Img3" value="Image03" />
  		<jsp:param name="Img4" value="Image04" />
  		<jsp:param name="Img5" value="Image05" />
  </jsp:include> --%>
  
  
  
  <%@include file="module/section2.jsp" %>
  
  <%@include file="module/section3.jsp" %>
  
  <%@include file="module/section4.jsp" %>
  
  <%@include file="module/section5.jsp" %>
  
  <%@include file="module/section6.jsp" %>



  





  <!-- 푸터 -->
  <%@include file="module/footer.jsp" %>
  







  <div id="to-top">
    <i class="bi bi-upload"></i>
  </div>

</body>

</html>