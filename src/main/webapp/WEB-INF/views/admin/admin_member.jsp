<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="card ">
				<div class="card-header">
					<h4 class="card-title">회원관리</h4>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table tablesorter " id="">
							<thead class=" text-primary">
								<tr>
									<th class="text-center">이름</th>
									<th class="text-center">아이디</th>
									<th class="text-center">전화번호</th>
									<th class="text-center">가입일</th>
									<th class="text-center">메뉴</th>
								</tr>
							</thead>
						<c:forEach items="${list }" var="items">
							<tbody>
								<tr>
									<td class="text-center">${items.m_name }</td>
									<td class="text-center">${items.m_email }</td>
									<td class="text-center">${items.m_tel }</td>
									<td class="text-center">${items.m_date }</td>
									<td class="text-center">
										<form>
											<button type="button"
												onclick='location.href="#"'
												class="btn btn-primary">탈퇴</button>
										</form>
									</td>
								</tr>
							</tbody>
						</c:forEach>	
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>