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
		<div class="panel-heading">게시글 등록</div>
		<div class="col-lg-12">
			<form action="/board/register" method="POST">
				<div class="form-group">
					<label>제목</label> <input class="form-control" name="title">
					<p class="help-block"></p>
				</div>
				<div class="form-group">
					<label>내용</label>
					<textarea class="form-control" rows="10" name="content"></textarea>
				</div>
				
				<div class="form-group">
					<label>작성자</label> <input class="form-control" name="writer">
					<p class="help-block"></p>
				</div>
				
				<button type="submit" class="btn btn-default">등록</button>
				<button type="reset" class="btn btn-default">다시 작성</button>
			</form>
		</div>
	</div>
</body>
<%@include file="../includes/footer.jsp"%>
</html>