<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session = "true" %> <!-- 디폴트 값 없어도 됨 -->
	<%
    	// request 기본 객체를 통해서 세션 객체를 가져온다.
    	HttpSession ses = request.getSession();
    	
    	String userId = "dream";
    	// 세션에 값 저장
    	ses.setAttribute("userId", userId);
    %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>세션에 값 저장하기</h3>
	
	<a href="getSession.jsp">세선에 저장된 값 확인하기</a>
</body>
</html>