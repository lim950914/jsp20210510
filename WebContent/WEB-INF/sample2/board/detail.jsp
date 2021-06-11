<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2"%>


<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<s2:navbar></s2:navbar>
<div class="container">
	<div class="row justify-content-center">
		<div class="col-8">
	<h1>${board.boardId }번 글 보기</h1>
	
	<form id="form1" action="${pageContext.request.contextPath }/sample2/board/modify" method="post">
	
	<div class="form-group">
		<label for="input1">제목</label>
		<input name="title" id="input1" type="text" value="${board.title }" readonly class="form-control">
	</div>
	
	<div class="form-group">
				<label for="textarea1" >본문</label>
				<textarea rows="10" name="body" id="textarea1" readonly class="form-control">${board.body }</textarea>
			</div>
	
	<div class="form-group">
		<label>작성자</label>
		<input type="text" value="${board.memberName }" readonly class="form-control">
	</div>
	
	<div class="form-group">
		<label>작성시간</label>
		<input type="text" value="${board.timeAgo }" readonly class="form-control">
	</div>
	
	<c:if test="${sessionScope.userLogined.id == board.memberId  }" >
		<script>
			$(document).ready(function() {
				$("#button1").click(function() {
					$("#submit1, #submit2").removeAttr("hidden");
					$("#input1, #textarea1").removeAttr("readonly");
				});
				
				$("#submit2").click(function(e) {
					e.preventDefault();
					
					if (confirm("삭제 하시겠습니까?")) {
						var path = '${pageContext.request.contextPath }/sample2/board/remove';
						$("#form1").attr("action", path);
						$("#form1").submit();
					}
					
				});
			});	
		</script>
	
		<br>
		<input type="number" value="${board.boardId }" name="boardId" hidden >
		<button id="button1" type="button" class="btn btn-primary">수정</button>
		<button id="submit1" hidden type="submit" class="btn btn-primary">전송</button>
		<button id="submit2" hidden type="submit" class="btn btn-primary">삭제</button>
	</c:if>
	
	</form>	
	
		<s2:message />
		</div>
	</div>
</div>

<c:if test="${not empty sessionScope.userLogined }">
<div class="container mt-2">
	<div class="row justify-content-center">
		<div class="col-8">
			<form action="${pageContext.request.contextPath }/sample2/comment/add" method="post">
				<textarea name="comment"  class="form-control"></textarea>
				<br>
				<input hidden name="memberId" value="${sessionScope.userLogined.id }" readonly>
				<br>
				<input hidden name="boardId" value="${board.boardId }" readonly>
				<br>
				<button type="submit" class="btn btn-primary">댓글작성</button>
			</form>
		</div>
	</div>
</div>
</c:if>
<div class="container mt-2">
	<div class="row justify-content-center">
		<div class="col-8">
	<c:forEach items="${comments }" var="comment">
		<script>
			$(document).ready(function() {
				var $form = $('#' + 'comment${comment.id }Form');
				var $modifyButton = $('#' + 'comment${comment.id }Button1');
				var $deletButton = $('#' + 'comment${comment.id }Button2');
				var $submitButton = $('#' + 'comment${comment.id }Button3');
				
				$modifyButton.click(function(e) {
					e.preventDefault();
					$form.find("textarea").removeAttr("readonly");
					$(this).attr("hidden", "hidden");
					$submitButton.removeAttr("hidden");
				});
				$deletButton.click(function(e) {
					e.preventDefault();
					
					if (confirm("삭제 하시겠습니까>")) {
						$form.attr("action", "${pageContext.request.contextPath }/sample2/comment/remove");
						$form.submit();
					}
				});
			});
		</script>
			<form id="comment${comment.id }Form" action="${pageContext.request.contextPath }/sample2/comment/modify" method="post">
				<input name="commentId" value="${comment.id }" hidden />
				<input name="boardId" value="${board.boardId }" hidden />
				<textarea name="comment" readonly class="form-control">${comment.comment }</textarea>
				<div class="container mt-2">
					<span>${comment.memberName }</span>
					<span>${comment.timeAgo }</span>
					<c:if test="${sessionScope.userLogined.id == comment.memberId }" >
						<button id="comment${comment.id }Button1" class="btn btn-primary">수정</button>
						<button  id="comment${comment.id }Button3" hidden class="btn btn-primary">전송</button>
						<button id="comment${comment.id }Button2" class="btn btn-primary" >삭제</button>
					</c:if>
				</div>
			</form>
	</c:forEach>
	</div>
	</div>
</div>
</body>
</html>













