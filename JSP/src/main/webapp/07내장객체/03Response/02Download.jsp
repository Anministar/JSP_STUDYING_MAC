<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.io.*" %>
<%
	
	// [오류해결] 이 응답을 위해 getOutputStream()이 이미 호출되었습니다.
	out.clear();						// response outstream을 닫고 버퍼를 비움
	out = pageContext.pushBody();		// 현재 페이지 body 연결
	// download Path 확인
	// 서블릿 파일의 위치
	String realPath = pageContext.getServletContext().getRealPath("/") + "07내장객체/03Response/download";
	System.out.println("RealPath : " + realPath );
	
	try {
		
		// InStream (파일경로로부터 프로그램방향으로 스트림 만들기)
		FileInputStream fin = new FileInputStream(realPath + "/TEST.txt");
		
		// OutStream (자바 프로그램에서 브라우저로 내용 전달할 스트림)
		ServletOutputStream bout = response.getOutputStream();
		
		// 만약 위의 out 객체를 비워주는 과정을 적고 싶지 않으면 getWriter()를 사용하는 방법도 있음.
		// 아래와 같은 코드를 사용하는 이유는 jsp가 servlet으로 변환될 때 자동적으로 write객체가 존재하는데 outputStream을
		// 사용하게 되면 인식하지 못함. 그래서 getWriter()를 사용하면 됨.
		// getOutputStream같은 경우는 Servlet에서 사용할 수 있음.
		//PrintWriter bout = response.getWriter();
		
		
		
		// 아래 두 코드가 없으면 브라우져에 전달할 내용을 표시함.
		
		// response 전달 파일타입 변경
		// 기본 Content-Type으로는 HTML파일의 경우에는 text/html으로 되어있음.
		// application/octet-stream 보통 다운로드할 때 파일 기본 타입임.
		// setHeader로 파일타입을 바꾸고 난 후에는 전달하는 내용을 읽으라는 소리가 아니라 다운로드하라는 의미구나 하고 다운로드를 함.
		// 근데 문제가 jsp 파일을 통째로 다운로드됨.
		response.setHeader("Content-Type", "application/octet-stream;charset=utf-8");
		
		// Content-Disposition : 보통 다운로드할 때 알고 있어야하는 Header명임.
		//					   : 브라우저에게 컨텐츠를 어떻게 처리해야 하는지를 지시하는 헤더
		
		// attachment 		   : 계속 이어서 파일들을 연결해서 붙일 예정이기 때문에 사용.
		//			           : 다운로드를 위한 첨부 파일로 처리하라는 의미
		
		// filename=TEST.txt   : 파일이름을 이렇게 설정해줘야지 TEST.txt파일로 다운로드 됨.
		//   				   : 다운로드될 파일의 이름을 지정
		response.setHeader("Content-Disposition", "attachment; filename=TEST.txt");
		
		
		
		// 파일에 있는 내용을 브라우져에 전달하겠다 하는 코드
		while(true) {
			int data = fin.read();
			if(data == -1) {
				break;
			} 
			bout.write((byte)data);
			bout.flush();
		}
		
		
		bout.close();
		fin.close();
		
	} catch(Exception e) {
		e.printStackTrace();
		
	} 
	
	
	
	





%>

</body>
</html>