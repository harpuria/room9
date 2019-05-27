<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="card ">
				<div class="card-header">
					<h4 class="card-title">호스트관리</h4>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table tablesorter " id="">
							<thead class=" text-primary">
								<tr>
									<th class="text-center">호스트명</th>
									<th class="text-center">ROOM명</th>
									<th class="text-center">호스트등록일</th>
									<th class="text-center">메뉴</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list }" var="item">
									<tr>
										<td class="text-center">${item.h_name }</td>
										<td class="text-center">${item.r_name }</td>
										<td class="text-center">${item.r_date }</td>
										<td class="text-center">
											<form>
												<button type="button"
													onclick="location.href='<c:url value='/admin_roomListUpdate.room9?r_no=${item.r_no }'/>'"
													class="btn btn-primary">수정</button>
												<button type="button"
													onclick='location.href="<c:url value='/admin_roomListDelete.room9?r_no=${item.r_no}'/>"'
													class="btn btn-primary">삭제</button>
											</form>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
