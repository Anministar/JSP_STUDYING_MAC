<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%@page import="java.sql.*, java.util.*, java.lang.ClassLoader" %>
<%

	/* 기본 연결 정보 */
	// String url = "jdbc:oracle:thin:@localhost:1521:xe";
	// String id = "system";
	// String pwd = "1234";
	
	/* 기본 연결 정보 */
	String url = "jdbc:mysql://localhost:3306/jspdb";
	String id = "root";
	String pwd = "test1234";
	
	/* DB연결 관련 JDBC Class 참조변수 */
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
	
	
	/* 연결 Test */
	try {
		/* Class.forName("oracle.jdbc.driver.OracleDriver"); */
		Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL 드라이버 클래스
		conn = DriverManager.getConnection(url, id, pwd);
		
		System.out.println("[Connected] : " + conn);
		
		// Oracle에서는 sequence를 만들어서 이렇게 표현했음.
		/* pstmt = conn.prepareStatement("insert into tbl_board values(board_seq.NEXTVAL,?,?,?)"); */
		
		// 이전에 작성했던 code
		/* pstmt = conn.prepareStatement("insert into tbl_board values(?,?,?,?)"); */
		pstmt = conn.prepareStatement("insert into `jspdb`.`tbl_board` (`title`, `writer`,`content`) values(?,?,?)");
		/* pstmt.setInt(1, 10); */
		pstmt.setString(1, "title1");
		pstmt.setString(2, "writer1");
		pstmt.setString(3, "content1");
		int result = pstmt.executeUpdate();
		if(result > 0) {
			System.out.println("INSERT성공!!");
		}
		
		
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		try{ pstmt.close();}catch(Exception e){}
		try{ conn.close();}catch(Exception e){}
		
	}


%>


</body>
</html>