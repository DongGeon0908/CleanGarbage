<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>


<div class="container">


	<table class="table">
		<thead>
			<tr>
				<th>Id</th>
				<th>Role</th>
				<th>OAuth</th>
				<th>Username</th>
				<th>Nickname</th>
				<th>Email</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${users.content}">
				<tr>
					<td>${user.id}</td>
					<td>${user.role}</td>
					<td>${user.oauth}</td>
					<td>${user.username}</td>
					<td>${user.nickname}</td>
					<td>${user.email}</td>
					<td><a href="#" class="btn btn-info">####</a></td>

				</tr>
			</c:forEach>
		</tbody>
	</table>

	<ul class="pagination justify-content-center">
		<c:choose>
			<c:when test="${users.first}">
				<li class="page-item disabled"><a class="page-link"
					href="?page=${users.number-1}">Previous</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link"
					href="?page=${users.number-1}">Previous</a></li>
			</c:otherwise>
		</c:choose>

		<c:choose>
			<c:when test="${users.last}">
				<li class="page-item disabled"><a class="page-link"
					href="?page=${users.number+1}">Next</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link"
					href="?page=${users.number+1}">Next</a></li>
			</c:otherwise>
		</c:choose>
	</ul>


</div>

<%@ include file="../layout/footer.jsp"%>

