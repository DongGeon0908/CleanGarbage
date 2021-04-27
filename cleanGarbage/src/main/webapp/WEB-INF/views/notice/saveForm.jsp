<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>


<div class="container">
	<h3>공지사항 작성! 주의주의!</h3>
	<form>
		<div class="form-group">
			<input type="text" class="form-control" placeholder="Enter Title"
				id="title">
		</div>

		<div class="form-group">
			<textarea class="form-control summernote" rows="5" id="content"></textarea>
		</div>
	</form>
	<button id="btn-save" class="btn btn-info">글쓰기완료</button>
</div>

<script>
      $('.summernote').summernote({
        placeholder: '안녕하세요! 오늘은 어떤 하루를 보내실까요?',
        tabsize: 2,
        height: 400
      });
</script>

<script src="/js/board.js"></script>
<%@ include file="../layout/footer.jsp"%>

