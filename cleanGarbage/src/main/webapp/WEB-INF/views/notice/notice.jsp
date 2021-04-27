<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>


<div class="container">
	<c:forEach var="notice" items="${notices.content}">
		<div class="card m-2">
			<div class="card-body">
				<h4 class="card-title">${notice.title}</h4>
				<a href="/notice/${notice.id}" class="btn btn-info">상세보기</a>
			</div>
		</div>
	</c:forEach>

	<ul class="pagination justify-content-center">
		<c:choose>
			<c:when test="${notices.first}">
				<li class="page-item disabled"><a class="page-link"
					href="?page=${notices.number-1}">Previous</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link"
					href="?page=${notices.number-1}">Previous</a></li>
			</c:otherwise>
		</c:choose>

		<c:choose>
			<c:when test="${notices.last}">
				<li class="page-item disabled"><a class="page-link"
					href="?page=${notices.number+1}">Next</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link"
					href="?page=${notices.number+1}">Next</a></li>
			</c:otherwise>
		</c:choose>
	</ul>


</div>

<%@ include file="../layout/footer.jsp"%>
