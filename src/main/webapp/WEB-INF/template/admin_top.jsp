<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<div class="sidebar">
	<div class="sidebar-wrapper">
		<div class="logo" style="text-align: center;">
			<a href="#" class="simple-text logo-normal">ROOM 9 </a>
		</div>
		<ul class="nav">
		
			<li><a href=<c:url value="/admin_main.room9"/>> 
	          <i class="tim-icons icon-chart-pie-36"></i>
	          <p>메인화면</p></a>
	        </li>
	        
	        <li><a href=<c:url value="/admin_member.room9"/>> 
	          <i class="tim-icons icon-single-02"></i>
	          <p>회원관리</p></a>
	        </li>
	        
	        <li><a href=<c:url value="/admin_host.room9"/>>
	          <i class="tim-icons icon-badge"></i>
	          <p>호스트관리</p></a>
	        </li>
	        
	        <li><a href=<c:url value="/admin_room9_join.room9?h_no=${h_no }"/>>
	          <i class="tim-icons icon-app"></i>
	          <p>ROOM9 등록</p></a>
	        </li>
	        
	        <li><a href=<c:url value="/admin_calender.room9"/>>
	          <i class="tim-icons icon-calendar-60"></i>
	          <p>스케줄표</p></a>
	        </li>
	        
	        <li><a href=<c:url value="/admin_notice.room9"/>> 
	          <i class="tim-icons icon-bell-55"></i>
	          <p>공지사항</p></a>
	        </li>
	        
	        <li><a href=<c:url value="/admin_comment.room9"/>> 
	          <i class="tim-icons icon-align-center"></i>
	          <p>댓글관리</p></a>
	        </li>
	        
	        <li><a href="<c:url value="/home.room9"/>"> 
	          <i class="tim-icons icon-attach-87"></i>
	          <p>ROOM9</p></a>
	        </li>
			
		</ul>
	</div>
</div>
<div class="main-panel">
	<nav
		class="navbar navbar-expand-lg navbar-absolute navbar-transparent">
		<div class="container-fluid">
			<div class="navbar-wrapper">
				<div class="navbar-toggle d-inline">
					<button type="button" class="navbar-toggler">
						<span class="navbar-toggler-bar bar1"></span> <span
							class="navbar-toggler-bar bar2"></span> <span
							class="navbar-toggler-bar bar3"></span>
					</button>
				</div>
			</div>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navigation" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-bar navbar-kebab"></span> <span
					class="navbar-toggler-bar navbar-kebab"></span> <span
					class="navbar-toggler-bar navbar-kebab"></span>
			</button>
			<div class="collapse navbar-collapse" id="navigation">
				<ul class="navbar-nav ml-auto">
					<li class="search-bar input-group">
						<button class="btn btn-link" id="search-button"
							data-toggle="modal" data-target="#searchModal">
							<i class="tim-icons icon-zoom-split"></i> <span
								class="d-lg-none d-md-block">검색</span>
						</button>
					</li>
					<li class="dropdown nav-item"><a href="#"
						class="dropdown-toggle nav-link" data-toggle="dropdown">
							<div class="photo">
								<i class="tim-icons icon-app"></i>
							</div> <b class="caret d-none d-lg-block d-xl-block"></b>
							<p class="d-lg-none">MENU</p>
					</a>
						<ul class="dropdown-menu dropdown-navbar">
							<li class="nav-link"><a href="admin_main.jsp"
								class="nav-item dropdown-item">정보수정</a></li>
							<li class="dropdown-divider"></li>
							<li class="nav-link"><a href="javascript:void(0)"
								class="nav-item dropdown-item">로그인</a></li>
							<li class="nav-link"><a href="javascript:void(0)"
								class="nav-item dropdown-item">로그아웃</a></li>
						</ul></li>
					<li class="separator d-lg-none"></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="modal modal-search fade" id="searchModal" tabindex="-1"
		role="dialog" aria-labelledby="searchModal" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<input type="text" class="form-control" id="inlineFormInputGroup"
						placeholder="검색">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<i class="tim-icons icon-simple-remove"></i>
					</button>
				</div>
			</div>
		</div>
	</div>