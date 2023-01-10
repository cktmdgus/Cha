<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">게시판</h1>
		</div>
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="panel-heading">게시글 조회</div>
		<div class="col-lg-12">
			<form action="/board/modify" method="POST">
				<div class="form-group">
					<label>번호</label> <input class="form-control" name="bno"
						value='<c:out value="${board.bno }"/>' readonly="readonly">
					<p class="help-block"></p>
				</div>
				<div class="form-group">
					<label>제목</label> <input class="form-control" name="title"
						value='<c:out value="${board.title }"/>'>
					<p class="help-block"></p>
				</div>
				<div class="form-group">
					<label>내용</label>
					<textarea class="form-control" rows="10" name="content">${board.content}</textarea>
				</div>

				<div class="form-group">
					<label>작성자</label> <input class="form-control" name="writer"
						value='<c:out value="${board.writer }"/>' readonly="readonly">
					<p class="help-block"></p>
				</div>

				<div class="form-group">
					<label>등록일자</label> <input class="form-control" name="regdate"
						value='<fmt:formatDate pattern="yyyy/MM/dd"
					   value="${board.regdate }"/>'
						readonly="readonly">
				</div>
				<div class="form-group">
					<label>수정일자</label> <input class="form-control" name="updatedate"
						value='<fmt:formatDate pattern="yyyy/MM/dd"
					   value="${board.updatedate }"/>'
						readonly="readonly">
				</div>

				<button type="submit" data-oper='modify' class="btn btn-default">게시글
					수정</button>
				<button type="submit" data-oper='remove' class="btn btn-danger">게시글
					삭제</button>
				<button type="submit" data-oper='list' class="btn btn-info">게시글
					목록</button>
			</form>
		</div>
	</div>
</body>

<script type="text/javascript">
	$(document).ready(function() {

		var formObj = $("form");

		$('button').on("click", function(e) {

			e.preventDefault();

			var operation = $(this).data("oper");
			console.log(operation);
			if (operation === 'remove') {
				//POST로 날릴경우 상관없는듯
				//formObj.attr("action", "/board/remove").attr("method","POST");
				formObj.attr("action", "/board/remove");
			} else if (operation === 'list') {
				//move to list
				self.location = "/board/list";
				return;
			}
			formObj.submit();
		});
	});
</script>
<%@include file="../includes/footer.jsp"%>
</html>