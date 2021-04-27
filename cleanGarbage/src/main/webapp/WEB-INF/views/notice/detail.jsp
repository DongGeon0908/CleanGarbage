<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>


<div class="container">
	<button class="btn btn-secondary" onclick="history.back()">돌아가기</button>
	<button class="btn btn-info">추천</button>
	
	<c:if test="${notice.user.id == principal.user.id || principal.user.role eq 'ADMIN'}">
		<a href="/notice/${notice.id}/updateForm" class="btn btn-warning">수정</a>
		<button id="btn-delete" class="btn btn-danger">삭제</button>
	</c:if>
	<br /> <br />
	<div>
		글 번호 : <span id="id"><i>${notice.id} </i></span> 
		<br />
		<!-- 
		작성자 아이디 : <span><i>${notice.user.username}</i></span>
		<br />
		-->
		작성자 : <span><i>${notice.user.nickname}</i></span> 
		<br /> 
		작성시간 : <span><i>${notice.createDate}</i></span>
		<br />
		추천수 : <span><i></i></span>
	</div>
	<hr />
	<br />
	<div>
		<h3>${notice.title}</h3>
	</div>
	<hr />
	<div>
		<div>${notice.content}</div>
	</div>
	<hr />
	<div class="card">
		<form>
			<input type="hidden" id="noticeId" value="${notice.id }" />
			<div class="card-body">
				<textarea id="reply-content" class="form-control" rows="1"></textarea>
			</div>
			<div class="card-footer">
				<button type="button" id="btn-reply-save" class="btn btn-info">등록</button>
			</div>
		</form>

	</div>

</div>
<script src="/js/notice.js"></script>
<%@ include file="../layout/footer.jsp"%>

