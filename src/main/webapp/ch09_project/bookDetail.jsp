<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String title = request.getParameter("title");
    	String author = request.getParameter("author");
    	String publicattionYear = request.getParameter("publicattionYear");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>영화 상세 제목</h3>
	<p>1. 책 제목 : <%=title %></p>
	<p>2. 작가 : <%=author %></p>
	<p>3. 출판 년도 : <%=publicattionYear %></p>
	
	<table border="1">
		<tr>
			<th>제목</th>
			<td><%=title %></td>
			
		</tr>
		<tr>
			<th>제작자</th>
			<td> <%=author %></td>
			
		</tr>
		<tr>
			<th>출판 년도</th>
			<td><%=publicattionYear %></td>
			
		</tr>
	</table>
</body>
</html>