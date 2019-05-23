<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<style>
	.table th{
		text-align:center
	}
	#pillMenu{
		bottom:0;
	}
</style>

<!-- 실제 내용 시작 -->
<div class="container">
	<div class="row">
		<div class="col-md-offset-2 col-md-8">
			<table class="table table-bordered table-striped">
				<tr>
					<th class="col-md-2 text-center">번호</th>
					<td>${record.no}</td>
				</tr>
				<tr>
					<th class="text-center">제목</th>
					<td>${record.title}</td>
				</tr>
				<tr>
					<th class="text-center">작성자</th>
					<td>${record.name}</td>
				</tr>
				<tr>
					<th class="text-center">등록일</th>
					<td>${record.postdate}</td>
				</tr>
				<tr>
					<th class="text-center" colspan="2">내용</th>
				</tr>
				<tr>
					<td colspan="2">${record.content }</td>
				</tr>
			</table>
		</div>
	</div>
	
	<div class="row">
			<div class="mx-auto">
				<div class="text-center" >
					<ul id="pillMenu" class="nav nav-pills">
						<li><a href="<c:url value='/Edit.room9?no=${record.no}' />" class="btn btn-success">수정</a></li>
						<li><a href="<c:url value='/delete.room9?no=${record.no}'/>" class="btn btn-success">삭제</a></li>
						<li><a href="<c:url value='/list.room9?no=${record.no}'/>"class="btn btn-success">목록</a></li>
					</ul>
				</div>
			</div>
		</div>
	
</div>


