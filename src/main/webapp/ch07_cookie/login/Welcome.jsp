<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
      /*  // 전송 파라미터 얻기
       String id = request.getParameter("id"); */
       
      // 쿠키 읽어서 userName 되어 있는 쿠키 찾고 그 쿠키의 이름을 가지고 온다
      // request에서 쿠키 얻어내기
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
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome.jsp</title>
</head>
<body>
   <h3>환영합니다. <%= userName %></h3>
   <br>
   <button id="btnlogin">로그인</button>
   
   <script>
   		const id = document.querySelector("#btnlogin");
   		id.addEventListener("click", function(){
   			
   			// window 객체는 브라우저의 창이나 프레임관련 정보 제공 객체
   			// location 객체는 현재 창에 대한 정보
   			// href 속성은 이동해갈 페이지의 url 설정
   			// [요약] 해당 페이지로 이동
   			window.location.href = "loginform.jsp";
   		});
   </script>
</body>
</html>