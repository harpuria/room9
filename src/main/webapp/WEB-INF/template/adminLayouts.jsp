<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Room9</title>
<link rel="logo icon" type="image⁄x-icon" href="<c:url value='/resources/img/room9logo_op.png' />">

<link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,600,700,800" rel="stylesheet" />
<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
<link href=<c:url value="/assets/css/nucleo-icons.css"/> rel="stylesheet" />
<link href=<c:url value="/assets/css/black-dashboard.css?v=1.0.0"/> rel="stylesheet" />
<link href=<c:url value="/assets/demo/demo.css"/> rel="stylesheet" />
<link href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"/>
<link href=<c:url value="/assets/packages/core/main.css" /> rel='stylesheet' />
<link href=<c:url value="/assets/packages/daygrid/main.css" /> rel='stylesheet' />
<link href=<c:url value="/assets/packages/timegrid/main.css" /> rel='stylesheet' />
<script src=<c:url value="/assets/packages/core/main.js" />></script>
<script src=<c:url value="/assets/packages/interaction/main.js" />></script>
<script src=<c:url value="/assets/packages/daygrid/main.js" />></script>
<script src=<c:url value="/assets/packages/timegrid/main.js" />></script>  

<script>
  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid', 'timeGrid' ],
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay'
      },
      defaultDate: '2019-05-20',
      navLinks: true, // can click day/week names to navigate views
      selectable: true,
      selectMirror: true,
      select: function(arg) {
        var title = prompt('Event Title:');
        if (title) {
          calendar.addEvent({
            title: title,
            start: arg.start,
            end: arg.end,
            allDay: arg.allDay
          })
        }
        calendar.unselect()
      },
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events: [
        {
          title: '달력의 시작',
          start: '2019-05-20'
        }
      ]
    });

    calendar.render();
  });
</script>
</head>
<body>
	<div class="wrapper">
	<!-- 탑메뉴 : 네비게이션 바 -->
	<tiles:insertAttribute name="admin_top"/>
	<!-- 바디 부분 -->
	<tiles:insertAttribute name="adminBody"/>
	<!-- 푸터 부분 -->
	<tiles:insertAttribute name="admin_footer"/>	
	</div>
	<!-- 사이드메뉴 : 색상 변경 바 -->
	<tiles:insertAttribute name="sidemenu"/>
	
<script src=<c:url value="/assets/js/core/jquery.min.js"/>></script>
<script src=<c:url value="/assets/js/core/popper.min.js"/>></script>
<script src=<c:url value="/assets/js/core/bootstrap.min.js"/>></script>
<script src=<c:url value="/assets/js/plugins/perfect-scrollbar.jquery.min.js"/>></script>
<script src=<c:url value="/assets/js/plugins/chartjs.min.js"/>></script>
<script src=<c:url value="/assets/js/plugins/bootstrap-notify.js"/>></script>
<script src=<c:url value="/assets/js/black-dashboard.min.js?v=1.0.0"/>></script>
<script src=<c:url value="/assets/demo/demo.js"/>></script>
<script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script>
  $(document).ready(function () {
    $().ready(function () {
      $sidebar = $('.sidebar');
      $navbar = $('.navbar');
      $main_panel = $('.main-panel');
      $full_page = $('.full-page');
      $sidebar_responsive = $('body > .navbar-collapse');
      sidebar_mini_active = true;
      white_color = false;
      window_width = $(window).width();
      fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();
      $('.fixed-plugin a').click(function (event) {
        if ($(this).hasClass('switch-trigger')) {
          if (event.stopPropagation) {
            event.stopPropagation();
          } else if (window.event) {
            window.event.cancelBubble = true;
          }
        }
      });
      $('.fixed-plugin .background-color span').click(function () {
        $(this).siblings().removeClass('active');
        $(this).addClass('active');
        var new_color = $(this).data('color');
        if ($sidebar.length != 0) {
          $sidebar.attr('data', new_color);
        }
        if ($main_panel.length != 0) {
          $main_panel.attr('data', new_color);
        }
        if ($full_page.length != 0) {
          $full_page.attr('filter-color', new_color);
        }
        if ($sidebar_responsive.length != 0) {
          $sidebar_responsive.attr('data', new_color);
        }
      });
      $('.switch-sidebar-mini input').on("switchChange.bootstrapSwitch", function () {
        var $btn = $(this);

        if (sidebar_mini_active == true) {
          $('body').removeClass('sidebar-mini');
          sidebar_mini_active = false;
          blackDashboard.showSidebarMessage('Sidebar mini deactivated...');
        } else {
          $('body').addClass('sidebar-mini');
          sidebar_mini_active = true;
          blackDashboard.showSidebarMessage('Sidebar mini activated...');
        }
        var simulateWindowResize = setInterval(function () {
          window.dispatchEvent(new Event('resize'));
        }, 180);
        setTimeout(function () {
          clearInterval(simulateWindowResize);
        }, 1000);
      });
      $('.switch-change-color input').on("switchChange.bootstrapSwitch", function () {
        var $btn = $(this);
        if (white_color == true) {
          $('body').addClass('change-background');
          setTimeout(function () {
            $('body').removeClass('change-background');
            $('body').removeClass('white-content');
          }, 900);
          white_color = false;
        } else {
          $('body').addClass('change-background');
          setTimeout(function () {
            $('body').removeClass('change-background');
            $('body').addClass('white-content');
          }, 900);
          white_color = true;
        }
      });
      $('.light-badge').click(function () {
        $('body').addClass('white-content');
      });
      $('.dark-badge').click(function () {
        $('body').removeClass('white-content');
      });
    });
  });
</script>
<script>
  $(document).ready(function () {
    demo.initDashboardPageCharts();
  });
</script>

<script>
$(document).ready( function () {
    $('#myTable').DataTable();
} );
</script>
</body>
</html>