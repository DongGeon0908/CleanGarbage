<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>


<div class="container">
	<form>
		<div class="form-group">
			<label for="username"><strong>Id</strong></label> <input type="text"
				class="form-control" placeholder="Enter id" id="username">
		</div>
		<div class="form-group">
			<label for="pwd"><strong>Password</strong></label> <input
				type="password" class="form-control" placeholder="Enter password"
				id="password">
		</div>
		<div class="form-group">
			<label for="email"><strong>Email</strong></label> <input type="email"
				class="form-control" placeholder="Enter email" id="email">
		</div>
	</form>
	<button id="btn-save" class="btn btn-primary">회원가입완료</button>
</div>

<script src="/js/user.js"></script>
<%@ include file="../layout/footer.jsp"%>

