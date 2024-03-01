<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<!-- c:set 변수지정, key:value 저장 -->
<c:set var="num" value="123" />
<!-- c:ou 출력 -->
<c:out value="${num}" />
<!-- c:out이 기본 el 방식보다 보안상의 문제에서 더 좋음. -->
<!-- XSS공격에 대한 대비 가능 -->
${num} <br>

<c:set var="arr" value="{10, 20, 30, 40, 50}" ></c:set>
<c:out value="${arr}" /> <br>
<hr>
<!-- if -->
<c:set var="flag" value=""	/>
<!-- test는 조건식임. -->
<!--  flag가 비어있다면 TRUE 출력 -->
<c:if test="${empty flag}">
	<c:out value="[IF] TRUE~!" />
</c:if>

<c:if test="${not empty flag }">
	<c:out value="[IF] FALSE!!" />
</c:if>
<hr>



<!-- choose == else문까지 포함한 switch문이라고 생각하면 됨. -->
<!-- when으로 분기처리를 하는것. -->
<c:choose>
	<c:when test="${flag eq 'a'}">
		<c:out value="[Choose] A!!" />
	</c:when>
	<c:when test="${flag eq 'b' }">
		<c:out value="[Choose] B!!" />
	</c:when>
	<c:when test="${flag eq 'c' }">
		<c:out value="[Choose] C!!" />	
	</c:when>
	<c:otherwise> 
		<c:out value="[Choose] ETC!!" />
	</c:otherwise>
</c:choose>
<!-- 마지막에 otherwise로 처리. -->
<hr>

<!-- forEach -->
<c:set var="end" value="15" />
<c:forEach var="i" begin="1" end="${end}" step="1">
	<c:out value="${i}" />
</c:forEach>
<br>
<hr>

<c:set var="arr" value="10, 20, 30, 40, 50, 60, 70, 80, 90, 10" />
<c:forEach var="i" items="${arr}" varStatus="status">
	${status.count} &nbsp; id=${status.index}   Val=<c:out value="${i}]" /> <br>
</c:forEach>

<hr>

<!-- URL : ContextPath 경로 자동 추가 | 쿠키차단시 sessionId를 포함해서 전달 -->
<!-- 개발자 도구열어서 확인해보면 됨. -->
<a href="/test.jsp">URL태그x</a> <br>
<a href="<c:url value="/test.jsp" />">URL태그o</a>


 
 
</body>
</html>