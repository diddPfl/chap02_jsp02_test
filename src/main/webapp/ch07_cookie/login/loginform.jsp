<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	    Cookie[] cookies = request.getCookies();
	    String userName = "손님";
	    boolean isLoggedIn = false; // 로그인 유무 체크 플래그
	    
	    if(cookies != null){
				// 쿠키가 여러개 있을 수 있기 때문에
				for(Cookie cookie: cookies){
					if(cookie.getName().equals("userName")){
						userName = URLDecoder.decode(cookie.getValue(), "utf-8");
						isLoggedIn = true;
						break;
					}	
				}
			}
	    
	    // 쿠키에 사용자 정보가 있으면 로그인 했다는 의미이므로 사용자를 강제로 main.jsp로 이동시킨다.
	  	if(isLoggedIn){ // 이미 로그인이 되었음
	  		// 메인 페이지로 강제 이동
	  		response.sendRedirect("main.jsp");
	  		return;
	  	}
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginForm.jsp</title>
</head>
<body>
   <h2>로그인</h2>
   <form action="loginProcess.jsp" method="post">
      <label for="id">아이디:</label><br>
      <input type="text" name="id"><br>
      
      <label for="password">비밀번호:</label><br>
      <input type="text" name="password"><br>
      
      
      <input type="submit" value="전송">   
   </form>
</body>
</html>