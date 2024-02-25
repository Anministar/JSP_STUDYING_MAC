<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<style>
table {
	border : 1px solid;
}
td {
	width : 50px;
	height : 50px;
	border : 1px solid;
	text-align : center;

}
</style>


<!-- 
	1. Scanner 로 숫자를 입력받아 구구단을 출력(table, tr, td)
	2. Scanner 로 숫자/메뉴명/을 입력받아 1depth메뉴를 표시


 -->
 
 
 <%
 	java.util.Scanner sc =  new java.util.Scanner(System.in);
 	System.out.println("단 입력 : ");
 	int dan = sc.nextInt();
 	int row = 10;
 	int col = 5; 		
 	%>

 <%
 out.print("<table>");
 for(int i = 0; i < row; i++) {
	 out.print("<tr>");
	 
	 out.print("<td>");
	 out.print(dan);
	 out.print("</td>");
	 
	 out.print("<td>");
	 out.print("X");
	 out.print("</td>");
	 
	 out.print("<td>");
	 out.print(i);
	 out.print("</td>");
	 
	 out.print("<td>");
	 out.print("=");
	 out.print("</td>");
	 
	 out.print("<td>");
	 out.print(dan * i);
	 out.print("</td>");
	 
	 out.print("</tr>");
 }
 out.print("</table>");
 %>
 
	
 
 
 
 
</body>
</html>