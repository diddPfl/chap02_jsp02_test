<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>source.jsp</title>
</head>
<body>
	<pre>
		use:forward 액션 태그 테스트 예제
		1. 제어를 다른 페이지로 이동한다. 즉, 다른 페이지로 이동한다.
		2. 이 페이지의 내용은 웹브라우저에 나오지 않는다. 
			왜냐하면 forward 페이지로 이동하기 전에 현재 페이지에서 생성되어서 버퍼에 저장되었던 내용을 버리기 떄문이다.		
		3. jsp:param 액션 태그 뒤에 오는 코드는 실행되지 않는다.
		4. use:param 액션 태그의 단점은 현재 페이지의 URL 주소가 아니라 이동해간 페이지의 주소가 표시된다는 것이다.
		5. jsp:param 자식 태그를 통해서 이동해 간 곳으로 파라미터를 전달할 수 있다.
	</pre>

	<jsp:forward page="target.jsp">
		<jsp:param value="1234" name="param1"/>
		<jsp:param value="abcd" name="param2"/>
	</jsp:forward>	
</body>
</html>