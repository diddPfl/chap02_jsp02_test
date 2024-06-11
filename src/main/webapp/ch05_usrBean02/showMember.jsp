<%@page import="com.javalab.jsp.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javalab.*" %>    
    
<%
        // request 영역에 저장된 newMember 객체 추출
        	Member newMember = (Member)request.getAttribute("newMember");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>화면에서 받은 회원정보</h2>
	<p>비밀번호: <%=newMember.getPassword()%></p>
	<p>이릉: <%=newMember.getName()%></p>
	<p>메일: <%=newMember.getEmail() %></p>
	<br>
	<!-- 애플리케이션 배포 루트 경로 "컨택스패스(진입정)" -->
	<h3>애플리케이션 배포 루트: <%=application.getRealPath("/") %></h3>
</body>
</html>
