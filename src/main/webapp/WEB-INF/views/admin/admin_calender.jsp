<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href='/assets/packages/core/main.css' rel='stylesheet' />
<link href='/assets/packages/daygrid/main.css' rel='stylesheet' />
<link href='/assets/packages/timegrid/main.css' rel='stylesheet' />
<script src='/assets/packages/core/main.js'></script>
<script src='/assets/packages/interaction/main.js'></script>
<script src='/assets/packages/daygrid/main.js'></script>
<script src='/assets/packages/timegrid/main.js'></script>    
    
<style>
#calendar {
    max-width: 90%;
    margin: 0 auto;
    color: black;
    background-color: whitesmoke;
    border-radius: 7px;
  }
</style>
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

<div class="content">
	<div class="row">
		<div class="col-md-12">
			<div id='calendar'></div>
		</div>
	</div>
</div>