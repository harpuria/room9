<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="content">
	<!-- Google Chart -->
	<div class="row">
		<script type="text/javascript"
			src="https://www.gstatic.com/charts/loader.js"></script>
		<!-- 회원 구분 -->
		<script type="text/javascript">
			var memberCount = parseInt("${memberCount}");
			var hostMemberCount = parseInt("${hostMemberCount}");
		
			google.charts.load("current", {packages:['corechart']});
		    google.charts.setOnLoadCallback(drawChart);
		    function drawChart() {
		      var data = google.visualization.arrayToDataTable([
		        ["Element", "회원수", { role: "style" } ],
	            ['전체회원', memberCount, "red"],
	            ['일반회원', memberCount-hostMemberCount, "yellow"],
	            ['호스트회원', hostMemberCount, "blue"],
		      ]);
	
		      var view = new google.visualization.DataView(data);
		      view.setColumns([0, 1,
		                       { calc: "stringify",
		                         sourceColumn: 1,
		                         type: "string",
		                         role: "annotation" },
		                       2]);
	
		      var options = {
		        bar: {groupWidth: "30%"},
		        legend: { position: "none" },
		      };
		      var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
		      chart.draw(view, options);
		  }
        </script>

		<div class="col-lg-12">
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">회원구분</h6>
				</div>
				<div id="columnchart_values" style="height: 300px"></div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-lg-6">
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">공지사항</h6>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table tablesorter">
							<thead class=" text-primary">
								<tr>
									<th class="text-center">카테고리</th>
									<th>제목</th>
									<th class="text-center">날짜</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list }" var="items" end="4">
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

		<div class="col-lg-6">
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">ROOM9 목록</h6>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table tablesorter " id="">
							<thead class=" text-primary">
								<tr>
									<th class="text-center">호스트명</th>
									<th class="text-center">ROOM명</th>
									<th class="text-center">ROOM등록일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${listRoom }" var="item" end="4">
									<tr>
										<td class="text-center">${item.h_name }</td>
										<td class="text-center">${item.r_name }</td>
										<td class="text-center">${item.r_date }</td>
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
<!-- Google Chart End -->