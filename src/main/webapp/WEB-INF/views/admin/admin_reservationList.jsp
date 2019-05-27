<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="card ">
				<div class="card-header">
					<h4 class="card-title">예약자 리스트</h4>
					
					<select>
						<option>방을 선택해 주세요</option>
						<c:forEach items="${list }" var="item">
							<option onclick="listDetail('${item.r_no }')">${item.r_name }</option>
						</c:forEach>
					</select>
					
					<script>
						function listDetail(no){
							location.href = "<c:url value='/adminReservationListDetail.room9?no= " + no + "&emailid=${sessionScope.emailid}'/>";
						}
					</script>

				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table tablesorter " id="">
							<thead class=" text-primary">
								<tr>
									<th class="text-center">예약자명</th>
									<th class="text-center">예약일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${listReservation }" var="item_r">
									<tr>
										<td class="text-center">${item_r.s_name }</td>
										<td class="text-center">${item_r.s_reservation_date }</td>
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