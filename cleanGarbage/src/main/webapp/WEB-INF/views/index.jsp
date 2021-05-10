<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="layout/header.jsp"%>

<div class="container">
	<sec:authorize access="isAuthenticated()">
		<sec:authentication property="principal.username" var="user_id" />
		<h4>안녕하세요. ${user_id}</h4>
		<h4>좋은 하루되세요~</h4>
	</sec:authorize>
	<div class="jumbotron text-center">
		<h1>CLGA</h1>
		<br />
		<p>🚀 We are Clean Garbage 🚀</p>
		<p>우리 모두 Garbage 값으로 초기화...💣💣</p>
	</div>
	<br /> <br />
	<div class="container">
		<img src="/image/clean.png" class="img-thumbnail" alt="Cinque Terre">
	</div>
</div>

<%@ include file="layout/footer.jsp"%>

