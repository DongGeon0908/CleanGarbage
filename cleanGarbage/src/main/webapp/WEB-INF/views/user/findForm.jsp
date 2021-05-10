<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>


<div class="container">

	<h3 style="text-align:center"><strong>아이디 찾기</strong></h3>
	<br>
	<form>
		<div class="form-group">
			<label for="email">Email:</label> <input type="email"
				class="form-control" placeholder="Enter email" id="email">
		</div>
		<div class="form-group">
			<label for="phone">phone:</label> <input type="text"
				class="form-control" placeholder="Enter phone" id="phone">
		</div>
	</form>
	<button id="btn-save" class="btn btn-primary">회원가입완료</button>
</div>

<script src="/js/user.js"></script>
<%@ include file="../layout/footer.jsp"%>

