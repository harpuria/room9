<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

<div class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="card ">
				<div class="card-header">
					<h4 class="card-title">공지사항</h4>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table tablesorter " id="myTable">
							<thead class=" text-primary">
								<tr>
									<th class="text-center">카테고리</th>
									<th>제목</th>
									<th class="text-center">날짜</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${list }" var="items">
									<tr>
										<th class="text-center" scope="row">공지사항</th>
										<td><a
											href="<c:url value='/admin_WriteView.room9?no=${items.no}'/>">${items.r_title }</a></td>
										<td class="text-center">${items.r_postdate }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-12 text-center">
			<button type="button"
				onclick="location.href='<c:url value='/admin_WriteNotice.room9'/>'"
				class="btn btn-primary">글쓰기</button>
		</div>
	</div>
</div>

<script>
	$('#myTable').DataTable();
</script>