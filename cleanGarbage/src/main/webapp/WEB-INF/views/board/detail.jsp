<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>


<div class="container">
	<button class="btn btn-secondary" onclick="history.back()">돌아가기</button>
	<button class="btn btn-info">추천</button>
	
	<c:if test="${board.user.id == principal.user.id || principal.user.role eq 'ADMIN'}">
		<a href="/board/${board.id}/updateForm" class="btn btn-warning">수정</a>
		<button id="btn-delete" class="btn btn-danger">삭제</button>
	</c:if>
	<br /> <br />
	<div>
		글 번호 : <span id="id"><i>${board.id} </i></span> 
		<br />
		<!-- 
		작성자 아이디 : <span><i>${board.user.username}</i></span>
		<br />
		-->
		작성자 : <span><i>${board.user.nickname}</i></span> 
		<br /> 
		작성시간 : <span><i>${board.createDate}</i></span>
		<br />
		추천수 : <span><i></i></span>
	</div>
	<hr />
	<br />
	<div>
		<h3>${board.title}</h3>
	</div>
	<hr />
	<div>
		<div>${board.content}</div>
	</div>
	<hr />
	<div class="card">
		<form>
			<input type="hidden" id="boardId" value="${board.id }" />
			<div class="card-body">
				<textarea id="reply-content" class="form-control" rows="1"></textarea>
			</div>
			<div class="card-footer">
				<button type="button" id="btn-reply-save" class="btn btn-info">등록</button>
			</div>
		</form>

	</div>
	<br />
	<div class="card">
		<div class="card-header">댓글 리스트</div>
		<ul id="reply-box" class="list-group">
			<c:forEach var="reply" items="${board.replys}">
				<li id="reply-${reply.id}"
					class="list-group-item d-flex justify-content-between">
					<div>${reply.content}</div>
					<div class="d-flex">
						<div class="font-italic">작성자 : ${reply.user.nickname} &nbsp;</div>
						<c:if test="${reply.user.id eq principal.user.id}">
							<button onClick="index.replyDelete(${board.id}, ${reply.id})"
								class="badge">삭제</button>
						</c:if>
					</div>
				</li>
			</c:forEach>
		</ul>
	</div>

</div>
<script src="/js/board.js"></script>
<%@ include file="../layout/footer.jsp"%>

