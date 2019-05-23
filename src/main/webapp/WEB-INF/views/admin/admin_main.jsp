<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="content">
	<!-- Google Chart -->
	<div class="row">
		<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
		<script type="text/javascript">
          google.charts.load('current', { 'packages': ['corechart'] });
          google.charts.setOnLoadCallback(drawChart);

          function drawChart() {
            var data = google.visualization.arrayToDataTable([
              ['Year', 'Sales', 'Expenses'],
              ['2004', 1000, 400],
              ['2005', 1170, 460],
              ['2006', 660, 1120],
              ['2007', 1030, 540]
            ]);

            var options = {
              //title: 'Company Performance',
              curveType: 'function',
              legend: { position: 'bottom' }
            };

            var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

            chart.draw(data, options);
          }
        </script>

		<script type="text/javascript">
          google.charts.load("current", { packages: ["corechart"] });
          google.charts.setOnLoadCallback(drawChart);
          function drawChart() {
            var data = google.visualization.arrayToDataTable([
              ['Task', 'Speakers (in millions)'],
              ['일반회원', "${memberCount}"],
              ['호스트회원', "${hostMemberCount}"],
            ]);

            var options = {
              title: 'My Daily Activities',
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
            chart.draw(data, options);
          }
        </script>


		<div class="col-lg-6">
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Projects</h6>
				</div>
				<div id="curve_chart" style="height: 300px"></div>
			</div>
		</div>

		<div class="col-lg-6">
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">회원구분</h6>
				</div>
				<div id="piechart_3d" style="height: 300px"></div>
			</div>
		</div>
	</div>
</div>
<!-- Google Chart End -->
