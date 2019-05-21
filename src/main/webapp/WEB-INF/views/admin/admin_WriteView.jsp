<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">
	<div class="card ">
		<div class="card-header">
			<div class="page-header">
				<h1>
					공지사항<small>상세보기 페이지</small>
				</h1>
			</div>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<div class="row">
					<div class="col-md-offset-2 col-md-8">
						<table class="table table-bordered table-striped">
							<tr>
								<th class="text-center">제목</th>
								<td>${record.r_title}</td>
							</tr>
							<tr>
								<th class="text-center" colspan="2">내용</th>
							</tr>
							<tr>
								<td colspan="2">${record.r_content}</td>
							</tr>
						</table>
					</div>
					<div class="col-md-12">
						<a href="<c:url value='/admin_UpdateNotice.room9?no=${record.no}'/>" class="btn btn-info">수정</a>
						<a href="javascript:isDelete()" class="btn btn-info">삭제</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	var isDelete = function() {
		if (confirm("정말로 삭제 하시겠습니까?")) {
			location.replace("<c:url value='/admin_DeleteNotice.room9?no=${record.no}'/>");
		}
	};
</script>