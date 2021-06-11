<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2"%>


<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
<script>
	$(document).ready(function() {
		$("#button1").click(function() {
			$("#input2, #input3, #input4").removeAttr("readonly");
			$("#submit1").removeAttr("hidden");
		});
		
		$("#submit2").click(function(e) {
			e.preventDefault();
			console.log("submit2 clicked....");
			
			var con = confirm("탈퇴 하시겠습니까?");
			
			console.log(con);
			
			if (con) {
				$("#form2").submit();
			}
		});
	});
</script>

</head>
<body>
<s2:navbar></s2:navbar>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-8">
			<h1>정보 보기</h1>
			<form id="form1" action="${pageContext.request.contextPath }/sample2/member/modify" method="post">
				<div class="form-group">
					<label for="input1">아이디</label>
					<div class="input-group mb-3">
						<input id="input1" type="text" name="id" value="${member.id }" readonly class="form-control">
					</div>
				</div>
				
				<div class="form-group">
					<label for="input2">패스워드</label>
					<input id="input2" type="password" name="password" value="${member.password }" readonly class="form-control">
				</div>
				
				<div class="form-group">
					<label for="input3">이름</label>
					<input id="input3" type="text" name="name" value="${member.name }" readonly class="form-control">
				</div>
				
				<div class="form-group">
					<label for="input4">생일</label>
					<input id="input4" type="date" name="birth" value="${member.birth }" readonly class="form-control"> 
				</div>
				
		<button id="button1" type="button" class="btn btn-primary">수정</button>
		<button type="submit" id="submit1" hidden class="btn btn-primary">전송</button>
	    </form>
		<form id="form2" action="${pageContext.request.contextPath }/sample2/member/remove" method="post">
			<button id="submit2" type="submit" class="btn btn-primary">탈퇴</button>
		</form>
		</div>
	</div>
</div>
<div class="container">
	<div class="row justify-content-center">
		<div class="col-8">
			작성한 글 : </i><span>${member.numberOfBoard }</span>개
			<br>
			작성한 댓글 : </i><span>${member.numberOfComment }</span>개
		</div>
	</div>
	
<s2:message></s2:message>
	
</div>
</body>
</html>












