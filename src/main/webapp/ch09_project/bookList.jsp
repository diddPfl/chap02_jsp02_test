<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.javalab.vo.*" %>   

	 <%
    	// 영화 목록 추출하기
    	List<Book> bookList = (List<Book>)request.getAttribute("bookList");
    	
    	// 문화 콘텐츠 타입 추출하기
    	String infoType = (String)request.getAttribute("infoType");
    %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>도서 목록</h3>
	<table border="1">
		<tr>
			<th>제목</th>
			<th>작가</th>
			<th>출판 년도</th>
		</tr>
		<%
			for(Book book: bookList){
				// queryString 생성작업, 각행마다 다르게
				String queryString = "title=" + URLEncoder.encode(book.getTitle(), "utf-8") + 
					"&author="  + URLEncoder.encode(book.getAuthor(), "utf-8") + 
					"&publicattionYear="  + book.getPublicattionYear();
		%>
		<tr>
			<td><a href="bookDetail.jsp?<%=queryString %>"><%=book.getTitle() %></a></td>
			<td><%=book.getAuthor() %></td>
			<td><%=book.getPublicattionYear() %></td>
		</tr>
		<%
			}
		%>
	</table>
	<button onclick="location.href='selectInfo.jsp?infoType=<%=infoType%>'">컨텐츠 선택</button>
</body>
</html>