<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.io.*, java.util.zip.*" %>
<%
	
	// [오류해결] 이 응답을 위해 getOutputStream()이 이미 호출되었습니다.
	out.clear();						// response outstream을 닫고 버퍼를 비움
	out = pageContext.pushBody();		// 현재 페이지 body 연결
	
	
	// download Path 확인
	// 서블릿 파일의 위치
	String realPath = pageContext.getServletContext().getRealPath("/") + "07내장객체/03Response/download";
	System.out.println("RealPath : " + realPath );
	
	
	
	
	try {
		
		
		File dir = new File(realPath);		// File dir 경로 설정
		// listFiles() : 해당 경로 안에 있는 파일 리스트를 filelist배열 안에 넣어줌.
		File filelist[] = dir.listFiles();	// dir 안 모듈 파일정보를 File 배열 형태로 받기
		
		// pageContext.pushBody()를 호출하여 현재 페이지 body와 새로운 출력 스트림을 연결.
		// ZipOutputStream을 이용하여 여러 파일을 압축하고, ZipEntry를 이용하여 압축 파일에 포함될 각 파일의 정보를 설정.
		// 파일을 압축하는 과정에서 zout.write((byte)data)를 통해 파일의 각 바이트를 압축 파일에 쓰고 있음.
		
		FileInputStream fin = null;
		//ZipInputStream zin = null;
		ZipEntry zipEntry = null;	// Zip 묶여지는 단일파일 단
		
		// 아래 코드를 실행해서 확인해보면 파일 경로가 담기는걸 확인할 수 있음.
		// /Users/popo/Desktop/Jsp_Servlet/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/JSP/07내장객체/03Response/download/TEST2.txt
		// /Users/popo/Desktop/Jsp_Servlet/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/JSP/07내장객체/03Response/download/TEST3.txt
		// /Users/popo/Desktop/Jsp_Servlet/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/JSP/07내장객체/03Response/download/TEST.txt
		/* for(File file : filelist) {
			System.out.println(file.getName());
		}
		System.out.println(); */
		
		
		// [오류해결] 이 응답을 위해 getOutputStream()이 이미 호출되었습니다.
		out.clear();						// response outstream을 닫고 버퍼를 비움
		out = pageContext.pushBody();		// 현재 페이지 body 연결
		
		
		ServletOutputStream bout = response.getOutputStream();
		
		// response 전달 파일타입 변경
		response.setHeader("Content-Type", "application/octet-stream;charset=utf-8");
		response.setHeader("Content-Disposition", "attachment; filename=TEST.zip");
		
		// 추가
		// bout을 넣게되 파일 여러개를 zout 스트림에 의해 압축해서 전달할 수 있음.
		// OutputStrema의 보조 스트림으로 ZipOutputStream이 들어가고 있는것임.
		ZipOutputStream zout = new ZipOutputStream(bout); 
		
		for(File file : filelist) {
			fin = new FileInputStream(file);
			ZipEntry zip = new ZipEntry(file.getName().toString()); // 파일이름만 ZipEntry에 넣어줌. 그걸 zip과 연결
			zout.putNextEntry(zip); // zip이 참조하는 ZipEntry 객체의 첫번째 파일의 이름 putNextEntry로 zip 파일 안에 넣게 됨.
									// 파일 열기
			
			// 그리고 내용들을 아래 코드로 넣어줌. (== 내용 넣기)
			while(true) {
				int data = fin.read();
				if(data == -1) {
					break;
				}
				zout.write((byte)data);
				
			}
			zout.closeEntry();		// 내용을 다 넣었으면 Entry를 닫아주는 코드
									// 파일 닫기
			fin.close();
			
			
		}
		zout.close();
		
	} catch(Exception e) {
		
	}
	
	
	
	
	
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