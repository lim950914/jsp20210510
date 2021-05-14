<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<% session.invalidate(); %>
	<!-- 이전 세션이 삭제되고 새로운 세션 생성된다 -->
	<h1>세션 삭제됨...</h1>
</div>
</body>
</html>