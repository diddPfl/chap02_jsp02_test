<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	// 세션에서 사용자 Id 조회하기
    	HttpSession ses = request.getSession(false);
    	String useId = "";
    	if(ses != null){
    		useId = (String)ses.getAttribute("userId");
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	   	if(useId != null){

	%>
		<h3>환영합니다.<%=useId %>님</h3>
		<button type="button" id="btnlogout">로그아웃</button>
	<%
	   	}
	%>	
	
	<script>
		// 
		const btnId = document.querySelector("#btnlogout");
		btnId.addEventListener("click", function() {
			window.location.href="logout.jsp";
		});
	</script>
</body>
</html>