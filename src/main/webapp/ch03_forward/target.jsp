<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 이전 페이지에서 use:param 형태로 전달해준 파라미터 받기
	String param1 = request.getParameter("param1");
	String param2 = request.getParameter("param2");
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>target.jsp</title>
</head>
<body>
	<h3>전달 받은 파라미터를 출력</h3>
	<p>parma1: <%=param1 %></p>
	<p>parma2: <%=param2 %></p>
</body>
</html>