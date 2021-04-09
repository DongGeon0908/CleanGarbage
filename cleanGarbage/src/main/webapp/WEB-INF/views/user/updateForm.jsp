<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>


<div class="container">
	<form>
		<input type="hidden" id="id" value="${principal.user.id}" />
		<div class="form-group">
			<label for="username">Username:</label> <input type="text"
				class="form-control" value="${principal.user.username}"
				placeholder="Enter Username" id="username" readonly>
		</div>

		<c:if test="${empty principal.user.oauth}">
			<div class="form-group">
				<label for="pwd">Password:</label> <input type="password"
					class="form-control" placeholder="Enter password" id="password">
			</div>
		</c:if>

		<c:choose>
			<c:when test="${empty principal.user.oauth}">
				<div class="form-group">
					<label for="nickname">Nickname:</label> <input type="text"
						class="form-control" value="${principal.user.nickname}"
						placeholder="Enter nickname" id="nickname">
				</div>
				<div class="form-group">
					<label for="email">Email:</label> <input type="email"
						class="form-control" value="${principal.user.email}"
						placeholder="Enter email" id="email">
				</div>
			</c:when>
			<c:otherwise>
				<div class="form-group">
					<label for="nickname">Nickname:</label> <input type="text"
						class="form-control" value="${principal.user.nickname}"
						placeholder="Enter nickname" id="nickname" readonly>
				</div>
				<div class="form-group">
					<label for="email">Email:</label> <input type="email"
						class="form-control" value="${principal.user.email}"
						placeholder="Enter email" id="email" readonly>
				</div>
			</c:otherwise>
		</c:choose>
	</form>
	<button id="btn-update" class="btn btn-info">회원수정완료</button>
</div>

<script src="/js/user.js"></script>
<%@ include file="../layout/footer.jsp"%>

