<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<!-- 
	쿠키 특징
	문자열 데이터로만 저장
	4kbyte 이하의 공간을 차지
	여러개의 쿠키 설정가능(최대 300개)
	도메인당 20개까지 저장 가능(도메인 한개당)
	저장한도를 초과하면 최근에 사용되지 않는 쿠키부터 자동 삭제

 -->
<%
	// KEY : VALUE
	// 쿠키 생성
	Cookie cookie = new Cookie("c1", "V1");
	cookie.setMaxAge(60 * 60); 		//쿠키 유지 시간 | -1(기본값) : 파일생성은 되지 않으나 브라우저가 종료될때까지 쿠키정보 저장, 브라우저종료시 삭제
	cookie.setPath("/");			// 모든 URL에 쿠키 적용 (Project 내의 모든 파일(URL)에 쿠키 전달)
	
	Cookie cookie2 = new Cookie("c2", "V2");
	cookie2.setMaxAge(60 * 60);
	cookie2.setPath("./"); 			// 현재폴더에만
									// 현재 02path에만 쿠키값이 전달되는 것임.
	
	Cookie cookie3 = new Cookie("c3", "V3");	// 지정된 URL로만 전달
	cookie3.setMaxAge(60 * 60);
	cookie3.setPath("/09Cookie/01basic");


	// 쿠키 전달
	response.addCookie(cookie);
	response.addCookie(cookie2);
	response.addCookie(cookie3); 
%>

	<a href="Confirm.jsp">쿠키 확인</a>







</body>
</html>