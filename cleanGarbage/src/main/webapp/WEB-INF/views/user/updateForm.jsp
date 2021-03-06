<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>


<div class="container">
	<form>
		<input type="hidden" id="id" value="${principal.user.id}" />
		<div class="form-group text-center">
			<img src="${principal.user.profileImage}" class="rounded-circle"
				width="304" height="236">
		</div>
		<div class="form-group">
			<label for="username">Username:</label> <input type="text"
				class="form-control" value="${principal.user.username}"
				placeholder="Enter Username" id="username" readonly>
		</div>
		<div class="form-group">
			<label for="phone">Phone:</label> <input type="text"
				class="form-control" value="${principal.user.phone}"
				placeholder="Enter Phone" id="phone">
		</div>

		<c:if test="${principal.user.oauth eq 'default'}">
			<div class="form-group">
				<label for="pwd">Password:</label> <input type="password"
					class="form-control" placeholder="Enter password" id="password">
			</div>
		</c:if>
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
		<!-- 
		<c:choose>
			<c:when test="${principal.user.oauth eq 'default'}">
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
	 -->
	</form>
	<button id="btn-update" class="btn btn-info">??????????????????</button>
</div>

<script src="/js/user.js"></script>
<%@ include file="../layout/footer.jsp"%>

