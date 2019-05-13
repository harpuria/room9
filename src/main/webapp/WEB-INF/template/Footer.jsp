<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<footer class="footer">
	<div class="container">
		<div class="row">
			<div class="credits ml-auto">
			<span class="copyright"> © <script>
					document.write(new Date().getFullYear())
				</script>,
					made with <i class="fa fa-heart heart"></i> by ROOM 9
				</span>
			</div>
		</div>
	</div>
</footer>

<style>
.copyright {
	color: black !important;
	font-weight: 700;
}
footer {z-index: 0;}
</style>

<script>
	$('[data-toggle="tooltip"]').tooltip();

	$(".navbar a, footer a[href='#home']").on('click', function(event) {
		if (this.hash !== "") {
			event.preventDefault();
			var hash = this.hash;
			$('html, body').animate({
				scrollTop : $(hash).offset().top
			}, 900, function() {
				window.location.hash = hash;
			});
		} // End if
	});
</script>