<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="15form-method2.jsp" method="post"> <!-- post는 쿼리 스트링에 안나옴 -->
		아이디 : <input type="text" name="id"> <br>
		암호 : <input type="password" name="pw"> <br>
		<input type="submit" value="로그인">
	</form>
</body>
</html>