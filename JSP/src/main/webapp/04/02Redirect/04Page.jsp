<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>04PAGE</h1>

<%



	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	// 다운캐스팅 이유는 02page라는 Key로 Value값을 저장하는데 이는 Object 형태로 받게끔 되어 있기 때문에 뭐든 받을 수 있는 장점이 있음.
	// 그렇지만 다시 03Page에서 getAttribute로 값을 꺼낼 때는 Object 형태이므로 다운 캐스팅을 하고 받아야함.
	String value = (String) request.getAttribute("02page");
	String value1 = (String) request.getAttribute("03page");
	
	
	System.out.println("================================");
	System.out.println("[04Page] userid : " + userid);
	System.out.println("[04Page] pwd : " + pwd);
	System.out.println("[04Page] 02page : " + value);
	System.out.println("[04Page] 03page : " + value1);
	System.out.println("===================== ===========");
	

%> 




	

</body>
</html>