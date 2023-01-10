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
			<div class="form-group">
				<label>번호</label> <input class="form-control" name="bno"
				value='<c:out value="${board.bno }"/>' readonly="readonly">
				<p class="help-block"></p>
			</div>
			<div class="form-group">
				<label>제목</label> <input class="form-control" name="title"
				value='<c:out value="${board.title }"/>' readonly="readonly">
				<p class="help-block"></p>
			</div>
			<div class="form-group">
				<label>내용</label>
				<textarea class="form-control" rows="10" name="content"  readonly="readonly">${board.content}</textarea>
			</div>

			<div class="form-group">
				<label>작성자</label> <input class="form-control" name="writer"
				value='<c:out value="${board.writer }"/>' readonly="readonly">
				<p class="help-block"></p>
			</div>

			<button data-oper='modify' class="btn btn-default"
			onClick="location.href='/board/modify?bno=${board.bno }'">게시글 수정</button>
			<button data-oper='list' class="btn btn-default"
			onClick="location.href='/board/list'">게시글 목록</button>
		</div>
	</div>
</body>
<%@include file="../includes/footer.jsp"%>
</html>