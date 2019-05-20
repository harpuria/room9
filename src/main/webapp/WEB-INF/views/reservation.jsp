<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="<c:url value='/css/open.css' />" rel="stylesheet" />
<link href="<c:url value='/css/main.css'/>" rel="stylesheet" />

<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.m	in.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>

<style type="text/css">

.start,.end{ width: 100px;background-color: gray;text-align: center;"}



.topBanner {display: block;position: relative;overflow: hidden;background-color: #000000;}
@media (max-width: 767px) {
.topBanner {width: 100%;height: 180px;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.topBanner {width: 100%;height: 280px;}
}
@media (min-width: 1280px) {
.topBanner {width: 100%;height: 421px;min-width: 1280px;}
}
.topBanner .topSkin {
position: absolute;opacity: 0.6;background-size: cover;background-repeat: no-repeat;background-position: center center;z-index: 10;}
@media (max-width: 767px) {
.topBanner .topSkin {width: 100%;height: 180px;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.topBanner .topSkin {width: 100%;height: 280px;}
}
@media (min-width: 1280px) {
.topBanner .topSkin {width: 100%;height: 421px;min-width: 1280px;}
}
.topBanner .bannerTitle {
position: relative;line-height: normal;text-align: center;z-index: 11;}
@media (max-width: 767px) {
.topBanner .bannerTitle {margin-top: 23px;font-size: 28px;font-weight: 200;color: #ffffff;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.topBanner .bannerTitle {margin-top: 55px;font-size: 36px;font-weight: 200;color: #ffffff;}
}
@media (min-width: 1280px) {
.topBanner .bannerTitle {margin-top: 96px;font-size: 54px;font-weight: 200;color: #ffffff;}
}
.topBanner .tagArea {
position: relative;text-align: center;overflow: hidden;z-index: 11;}
@media (max-width: 767px) {
.topBanner .tagArea {margin-top: 15px;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.topBanner .tagArea {margin-top: 10px;}
}
@media (min-width: 1280px) {
.topBanner .tagArea {margin-top: 16px;}
}
.topBanner .tagArea li {
line-height: normal;display: inline-block;}
@media (max-width: 767px) {
.topBanner .tagArea li {margin: 0 1px;font-size: 12px;font-weight: 200;color: #ffffff;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.topBanner .tagArea li {margin: 0 2px;font-size: 16px;font-weight: 200;color: #ffffff;}
}
@media (min-width: 1280px) {
.topBanner .tagArea li {margin: 0 3px;font-size: 20px;font-weight: 200;color: #ffffff;}
}
.topBanner .searchForm {
width: 100%;overflow: hidden;box-sizing: border-box;}
@media (max-width: 767px) {
.topBanner .searchForm {padding: 0 25px;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.topBanner .searchForm {padding: 0 30px;}
}
.topBanner .searchBar {position: relative;margin: 0 auto;border-radius: 3px;overflow: hidden;z-index: 11;}
@media (max-width: 767px) {
.topBanner .searchBar {width: 100%;height: 32px;margin-top: 11px;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.topBanner .searchBar {width: 100%;height: 45px;margin-top: 30px;}
}
@media (min-width: 1280px) {
.topBanner .searchBar {width: 1000px;height: 60px;margin-top: 50px;}
}
.topBanner .searchBar input[type="text"] {float: left;display: block;padding: 0;box-sizing: border-box;-moz-box-sizing: border-box;-webkit-box-sizing: border-box;background: #ffffff;outline: none;border: 0;border-radius: 0;-webkit-border-radius: 0;-webkit-opacity: 1;}
@media (max-width: 767px) {
.topBanner .searchBar input[type="text"] {padding-left: 10px;width: 100%;height: 32px;font-size: 14px;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.topBanner .searchBar input[type="text"] {padding-left: 15px;width: 100%;height: 45px;font-size: 16px;}
}
@media (min-width: 1280px) {
.topBanner .searchBar input[type="text"] {padding-left: 15px;width: 100%;height: 60px;font-size: 18px;}
}
.topBanner .searchBar input[type="text"]::placeholder {color: #999999 !important;}
.topBanner .searchBar input[type="submit"] {position: absolute;top: 0;right: 0;display: block;padding: 0;box-sizing: border-box;-moz-box-sizing: border-box;-webkit-box-sizing: border-box;background: #ffffff;outline: none;border: 0;border-radius: 0;-webkit-border-radius: 0;-webkit-opacity: 1;border-radius: 3px;color: #828282 !important;background: url(assets/img/searchIcon.svg) no-repeat center center;background-color: #ffffff;cursor: pointer;}
@media (max-width: 767px) {
.topBanner .searchBar input[type="submit"] {width: 36px;height: 32px;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.topBanner .searchBar input[type="submit"] {width: 45px;height: 45px;background-size: 25px 25px;}
}
@media (min-width: 1280px) {
.topBanner .searchBar input[type="submit"] {width: 60px;height: 60px;background-size: 30px 30px;}
}
.topBanner .searchBar .placeholderText {display: none;position: absolute;top: 0;left: 0;color: #999999;}
@media (max-width: 767px) {
.topBanner .searchBar .placeholderText {line-height: 32px;padding-left: 10px;font-size: 14px;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.topBanner .searchBar .placeholderText {line-height: 45px;padding-left: 15px;font-size: 16px;}
}
@media (min-width: 1280px) {
.topBanner .searchBar .placeholderText {line-height: 60px;padding-left: 15px;font-size: 18px;}
}

.placeListArea {box-sizing: border-box;overflow: hidden;}
@media (max-width: 767px) {
.placeListArea {width: 100%;height: auto;padding: 0 20px;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.placeListArea {width: 100%;height: auto;margin-top: 20px;padding: 0 0 0 15px;}
}
@media (min-width: 1280px) {
.placeListArea {width: 1280px;height: auto;margin: 29px auto 0;}
}
.placeListArea .listNav {display: none;overflow: hidden;}
@media (min-width: 768px) and (max-width: 1279px) {
.placeListArea .listNav {margin-bottom: 15px;}
}
@media (min-width: 1280px) {
.placeListArea .listNav {margin-bottom: 22px;}
}
.placeListArea .listNav .listCount {line-height: normal;}
@media (max-width: 767px) {
.placeListArea .listNav .listCount {display: block;margin-top: 23px;font-size: 14px;font-weight: normal;color: #333333;}
}
@media (min-width: 1280px) {
.placeListArea .listNav .listCount {float: left;font-size: 14px;font-weight: normal;color: #333333;}
}
@media (min-width: 1280px) {
.placeListArea .listNav .listCount {float: left;font-size: 14px;font-weight: normal;color: #333333;}
}
@media (max-width: 767px) {
.placeListArea .listNav .bold {font-weight: bold;}
}
.placeListArea .listNav .sortBar {float: right;}
.placeListArea .listNav .sortBar li {float: left;}
.placeListArea .listNav .sortBar li a {display: block;padding: 0 8px;font-size: 14px;font-weight: normal;color: #333333;text-decoration: none;background: url(/images/global/bulRightBar.png) no-repeat 100% 0;}
.placeListArea .listNav .sortBar li:last-child a {background: none;}
.placeListArea .placeList {display: block;overflow: hidden;}
@media (max-width: 767px) {
.placeListArea .placeList {width: 100%;margin-top: 15px;}
}
@media (min-width: 1280px) {
.placeListArea .placeList {width: 100%;}
}
@media (min-width: 1280px) {
.placeListArea .placeList {width: 1300px;}
}
.placeListArea .placeList > li {position: relative;border-radius: 3px;overflow: hidden;}
@media (max-width: 767px) {
.placeListArea .placeList > li {margin-bottom: 20px;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.placeListArea .placeList > li {float: left;width: 50%;height: auto;max-width: 376px;padding: 0 15px 15px 0;box-sizing: border-box;}
}
@media (min-width: 1280px) {
.placeListArea .placeList > li {float: left;width: 400px;height: 373px;margin: 0 20px 20px 0;}
}
.placeListArea .placeList > li a {text-decoration: none;}
.placeListArea .placeList > li.list_none {display: block;width: 100%;height: auto;max-width: 100%;text-align: center;color: #333333;}
@media (max-width: 767px) {
.placeListArea .placeList > li.list_none {padding: 25px 0 20px;font-size: 14px;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.placeListArea .placeList > li.list_none {padding: 25px 0 20px;font-size: 16px;}
}
@media (min-width: 1280px) {
.placeListArea .placeList > li.list_none {padding: 25px 0 5px;font-size: 16px;}
}
.placeListArea .placeList .imgArea {display: block;position: relative;overflow: hidden;}
@media (max-width: 767px) {
.placeListArea .placeList .imgArea {width: 100%;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.placeListArea .placeList .imgArea {width: 100%;}
}
@media (min-width: 1280px) {
.placeListArea .placeList .imgArea {width: 400px;height: 238px;}
}
.placeListArea .placeList .imgArea:before {content: '';display: block;}
@media (max-width: 767px) {
.placeListArea .placeList .imgArea:before {padding-top: 57.5%;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.placeListArea .placeList .imgArea:before {padding-top: 66.6%;}
}
@media (min-width: 1280px) {
.placeListArea .placeList .imgArea:before {display: none;}
}
.placeListArea .placeList .imgArea img {top: 0;right: 0;bottom: 0;left: 0;height: auto;}
@media (max-width: 767px) {
.placeListArea .placeList .imgArea img {position: absolute;width: 100%;min-height: 100%;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.placeListArea .placeList .imgArea img {position: absolute;width: 100%;min-height: 100%;}
}
@media (min-width: 1280px) {
.placeListArea .placeList .imgArea img {width: 400px;min-height: 238px;}
}
.placeListArea .placeList .tagArea {position: absolute;}
@media (max-width: 767px) {
.placeListArea .placeList .tagArea {bottom: 136px;left: 10px;height: 23px;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.placeListArea .placeList .tagArea {left: 0;bottom: 155px;width: 100%;height: 30px;padding-left: 15px;}
}
@media (min-width: 1280px) {
.placeListArea .placeList .tagArea {top: 188px;left: 0;width: 393px;height: 30px;padding-left: 20px;}
}
.placeListArea .placeList .tagArea .tag {float: left;display: block;padding: 0;text-align: center;box-sizing: border-box;-moz-box-sizing: border-box;-webkit-box-sizing: border-box;outline: none;border: 0;border-radius: 0;-webkit-border-radius: 0;-webkit-opacity: 1;background: #ffffff;padding: 0 10px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.2);}
@media (max-width: 767px) {
.placeListArea .placeList .tagArea .tag {width: 71px;height: 23px;line-height: 23px;margin-right: 5px;font-size: 12px;font-weight: normal;color: #333333;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.placeListArea .placeList .tagArea .tag {width: 72px;height: 28px;line-height: 28px;margin-right: 10px;font-size: 13px;font-weight: normal;color: #333333;}
}
@media (min-width: 1280px) {
.placeListArea .placeList .tagArea .tag {width: 73px;height: 30px;line-height: 30px;margin-right: 10px;font-size: 14px;font-weight: normal;color: #333333;}
}
.placeListArea .placeList .tagArea .tag:last-child {margin-right: 0;}
.placeListArea .placeList .tagArea .tag:hover,.placeListArea .placeList .tagArea .tag:active,.placeListArea .placeList .tagArea .tag:focus {color: #333333;}
.placeListArea .placeList .infoArea {display: block;border: 1px solid #d8d8d8;border-top: 0;box-sizing: border-box;}
@media (max-width: 767px) {
.placeListArea .placeList .infoArea {width: 100%;height: 74px;padding: 19px 20px;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.placeListArea .placeList .infoArea {width: 100%;height: 77px;padding: 19px 20px;}
}
@media (min-width: 1280px) {
.placeListArea .placeList .infoArea {width: 400px;height: 80px;padding: 20px;}
}
.placeListArea .placeList .infoArea .title_1 {line-height: normal;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
@media (max-width: 767px) {
.placeListArea .placeList .infoArea .title_1 {margin-bottom: 4px;font-size: 14px;font-weight: bold;color: #333333;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.placeListArea .placeList .infoArea .title_1 {margin-bottom: 6px;font-size: 16px;font-weight: normal;color: #333333;}
}
@media (min-width: 1280px) {
.placeListArea .placeList .infoArea .title_1 {margin-bottom: 7px;font-size: 18px;font-weight: normal;color: #333333;}
}
.placeListArea .placeList .infoArea .address {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
@media (max-width: 767px) {
.placeListArea .placeList .infoArea .address {font-size: 12px;font-weight: normal;color: #333333;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.placeListArea .placeList .infoArea .address {font-size: 13px;font-weight: normal;color: #333333;}
}
@media (min-width: 1280px) {
.placeListArea .placeList .infoArea .address {font-size: 14px;font-weight: normal;color: #333333;}
}
.placeListArea .placeList .subInfoArea {display: block;border: 1px solid #d9d9d9;border-top: 0;box-sizing: border-box;}
@media (max-width: 767px) {
.placeListArea .placeList .subInfoArea {line-height: 16px;width: 100%;height: 52px;padding: 17px 20px 19px;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.placeListArea .placeList .subInfoArea {line-height: 18px;width: 100%;height: 55px;padding: 18px 20px;}
}
@media (min-width: 1280px) {
.placeListArea .placeList .subInfoArea {line-height: 20px;width: 400px;height: 55px;padding: 18px 20px;}
}
.placeListArea .placeList .subInfoArea .capacity {float: left;}
@media (max-width: 767px) {
.placeListArea .placeList .subInfoArea .capacity {font-size: 12px;font-weight: normal;color: #333333;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.placeListArea .placeList .subInfoArea .capacity {font-size: 13px;font-weight: normal;color: #333333;}
}
@media (min-width: 1280px) {
.placeListArea .placeList .subInfoArea .capacity {font-size: 14px;font-weight: normal;color: #333333;}
}
.placeListArea .placeList .subInfoArea .priceAndTime {float: right;}
.placeListArea .placeList .subInfoArea .price {float: left;}
@media (max-width: 767px) {
.placeListArea .placeList .subInfoArea .price {font-size: 14px;font-weight: bold;color: #ff4081;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.placeListArea .placeList .subInfoArea .price {font-size: 16px;font-weight: bold;color: #ff4081;}
}
@media (min-width: 1280px) {
.placeListArea .placeList .subInfoArea .price {font-size: 18px;font-weight: bold;color: #ff4081;}
}
.placeListArea .placeList .subInfoArea .time {float: left;}
@media (max-width: 767px) {
.placeListArea .placeList .subInfoArea .time {font-size: 12px;font-weight: normal;color: #666666;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.placeListArea .placeList .subInfoArea .time {font-size: 13px;font-weight: normal;color: #666666;}
}
@media (min-width: 1280px) {
.placeListArea .placeList .subInfoArea .time {font-size: 14px;font-weight: normal;color: #666666;}
}
.placeListArea .btnArea {width: 100%;height: 40px;}
@media (max-width: 767px) {
.placeListArea .btnArea {display: none;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.placeListArea .btnArea {display: none;}
}
@media (min-width: 1280px) {
.placeListArea .btnArea {display: none;}
}
.placeListArea .btnArea .moreBtn {width: 100%;height: 40px;line-height: 40px;display: block;padding: 0;text-align: center;box-sizing: border-box;-moz-box-sizing: border-box;-webkit-box-sizing: border-box;outline: none;border: 1px solid #d9d9d9;border-radius: 3px;-webkit-border-radius: 3px;background: #efefef;font-size: 14px;font-weight: normal;color: #333333;text-decoration: none;}
.placeListArea .pagingWrap {display: block;text-align: center;}
@media (max-width: 767px) {
.placeListArea .pagingWrap {margin-bottom: 10px;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.placeListArea .pagingWrap {width: 100%;margin-top: 10px;}
}
@media (min-width: 1280px) {
.placeListArea .pagingWrap {width: 1280px;margin-top: 10px;}
}
.placeListArea .pagingWrap .pagination {display: inline-block;max-width: 430px;}
.placeListArea .pagingWrap .pagination li {float: left;margin: 0 5px;border: 1px solid #d9d9d9;width: 40px;height: 40px;line-height: 39px;display: block;padding: 0;text-align: center;box-sizing: border-box;-moz-box-sizing: border-box;-webkit-box-sizing: border-box;outline: none;border-radius: 3px;-webkit-border-radius: 3px;background: #ffffff;}
.placeListArea .pagingWrap .pagination li.pagination-prev-nav {width: 80px;text-align: right;background: url(/images/global/pagingLeft.png) no-repeat 20px 13px;}
.placeListArea .pagingWrap .pagination li.pagination-prev-nav a {padding-right: 20px;}
.placeListArea .pagingWrap .pagination li.pagination-next-nav {width: 80px;text-align: left;background: url(/images/global/pagingReft.png) no-repeat 46px 13px;}
.placeListArea .pagingWrap .pagination li.pagination-next-nav a {padding-left: 20px;}
.placeListArea .pagingWrap .pagination li.active {border-color: #ff4081;}
.placeListArea .pagingWrap .pagination li.active a {color: #ff4081;}
.placeListArea .pagingWrap .pagination li a {display: block;font-size: 14px;font-weight: normal;color: #333333;text-decoration: none;}
.formTitle li	{
   list-style:none;
   font-weight:bold;
   }

</style>
<div class="container-fluid" id="owlcaro" style="padding: 0 !important;">
	<div id="myCarousel" class="carousel slide carousel-fade"
		data-ride="carousel"
		style="background: url('resources/img/01.jpg') center center no-repeat; background-size: cover;">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<div class="mask flex-center">
					<div class="container">
						<div class="row align-items-center">
							<div class="col-md-7 col-12 order-md-1 order-2 text-center">
								<h4>"드리움"</h4>
								<p>#역삼 #드리움 #세미나</p>
								<a class="caro2" href="#">둘러보기</a>
							</div>
							<div class="col-md-5 col-12 order-md-2 order-1">
								<img src="<c:url value='resources/img/cemina.jpeg'/>" style="padding-top: 20%;"
									class="mx-auto" alt="slide">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<div class="mask flex-center">
					<div class="container">
						<div class="row align-items-center">
							<div class="col-md-7 col-12 order-md-1 order-2 text-center">
								<h4>"북카페세모"</h4>
								<p>#건대 #건대입구 #북카페</p>
								<a class="caro2" href="#">둘러보기</a>
							</div>
							<div class="col-md-5 col-12 order-md-2 order-1">
								<img src="<c:url value='resources/img/partyroom.jpeg'/>" style="padding-top: 65px;"
									class="mx-auto" alt="slide">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<div class="mask flex-center">
					<div class="container">
						<div class="row align-items-center">
							<div class="col-md-7 col-12 order-md-1 order-2 text-center">
								<h4>"와이즈빈"</h4>
								<p>#선릉 #와이즈빈 #오피스</p>
								<a class="caro2" href="#">둘러보기</a>
							</div>
							<div class="col-md-5 col-12 order-md-2 order-1">
								<img src="<c:url value='resources/img/office.png'/>" style="padding-top: 20%;"
									class="mx-auto" alt="slide">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 내용시작 -->
	<div class="container">
        <div class="py-5 text-center">
            <h2>예약 페이지</h2>
            <p class="lead">이곳에서 예약과 상세정보를 확인 가능합니다</p>
        </div>
        <div class="row">
            <div class="col-md-4 order-md-2 mb-4">
                <h4 class="d-flex justify-content-between align-items-center mb-3">
                    <span class="text-muted">예약상세정보</span>
                </h4>
               <div>
               <c:forEach items="${list }" var="items">
                <ul style="list-style: none;">
                <li>
                    <span class="formTitle">공간유형</span>
	                    <div class="rightArea">
	                        <p>
                            	회의실,파티룸,스터디룸,다목적홀,작업실,연습실,카페
	                        </p>
	                    </div>
	                </li>
	                <li>
	                    <span class="formTitle">상세주소</span>
	                    <div class="rightArea">
	                        <p>
	                         	 ${items.r_address }
	                        </p>
	                    </div>
	                </li>
	                <li>
	                    <span class="formTitle">수용인원</span>
	                    <div class="rightArea">
	                        <p>
	                          	  최소 ${items.r_people_count_min }명 ~ 최대 ${items.r_people_count_max }명 까지
	                        </p>
	                    </div>
	                </li>
					<li>
	                    <span class="formTitle">대관시간</span>
	                    <div class="rightArea">
	                        <p>
	                           ${items.r_time } 
	                        </p>
	                    </div>
	                </li>
	                <li>
	                    <span class="formTitle">대관요일</span>
	                    <div class="rightArea">
	                        <p>
	                            <input type="hidden" class="weekCheck" value="월,화,수,목,금,토,일"> ${items.r_holiday } 
	                        </p>
	                    </div>
	                </li>
	                <li>
	                    <span class="formTitle">문의처</span>
	                    <div class="rightArea">
	                        <p>
	                            ${items.r_tel }
	                        </p>
	                    </div>
	                </li>
                </ul>
               
               </div>
	              
                <ul class="list-group mb-3">
	                	<li class="list-group-item d-flex justify-content-between lh-condensed">
                        <div>
                            <h5 class="my-0">이용금액</h5>
                            <small class="text-muted">(시간단위)</small>
                        </div>
                         <h3 class="my-0"><span style="color:#61ce4e">${items.r_money }원</span>~/시간</h3>

                    </li>
                    <li class="list-group-item d-flex justify-content-between lh-condensed">
                        <div class="col-md-12">
                            <h6 class="my-0">캘린더</h6>
                            
                        </div>
					</li>
                    
                    <li class="list-group-item d-flex justify-content-between lh-condensed" style="padding-bottom: 0%">
	                    <p class="text-muted" style="padding-top: 10px">예약 시간 : </p>
                            <div class="form-group bootstrap-timepicker">
                             <input id="start" name="start" ng-model="start" type="text" required="required" class="form-control start"style="color:white" placeholder="선택"/>
                         </div>
                       
                   	    <span style="padding-top:10px;font-weight: bold">~</span>
                      
                         <div class="form-group bootstrap-timepicker">
                             <input id="end" name="end" ng-model="end" type="text" required="required" class="form-control end" style="color:white" placeholder="선택" />
                         </div>
                    </li>
                    <li class="list-group-item d-flex justify-content-between lh-condensed">
                    	<p class="text-muted" style="padding-top: 10px">예약 인원 : </p>
						<div class="col-md-8">
							<select style="width: 55%;height:95%;text-align: center">
							<c:forEach begin="1" end="${items.r_people_count_max }" var="count">
							    	<option>${count} 명</option>
							</c:forEach>
							</select>
						</div>
					</li>
                </ul>
                 </c:forEach>
                <hr class="mb-4">
                <button class="btn btn-lg btn-block" data-toggle="modal" data-target="#myModal" type="submit" style="background-color: #61ce4e">예약하기</button>
            </div>
            <div class="col-md-8 order-md-1">
                <h4 class="mb-3">장소 이미지</h4>
                    <h4 class="subTitle">RooM9 정보</h4>
                    <div class="col-md-12 mb-3 ">
                        <p class="tips">
                            ■ 2F 컨벤션홀 < 대관 할인 EVNET!! ><br />
                       		     온오프믹스 회원분들을 대상으로 할인된 금액으로 이용하실 수 있는 이벤트를 진행합니다.<br />
                            - 선정 인원: 선착순 10명 (계약금 10% 납입시 예약 확정)<br />
                            - 혜택 안내: 4시간 동안 컨벤션홀을 약 30% 할인된 가격인 220만원에 이용<br />
                            - 신청 방법<br />
                            1) 날짜 지정 후 2층 컨벤션홀을 선택하여 예약정보를 입력한다.<br />
                            2) 상세 예약 정보 입력 후 호스트로부터 안내를 받는다.<br />
                         	※ 4시간을 초과하여 대관시 추가 비용이 발생하며, 금액 등 자세한 사항은 대관 신청시 문의해 주시기 바랍니다.<br />
                            <br />
                        <p class="tips">
                            - 평일 이용시간은 11:00 - 21:00 (브레이크 타임 15:00~17:30) 입니다. <br />
                            - 주말 이용시간은 11:00 - 22:00 입니다. <br />
                            - 최소 대관 가능 시간은 2시간 입니다. <br />
                            - 서울마리나 클럽&amp;요트의 요트에는 절대로 외부 식음료를 반입할 수 없습니다. <br />
                            - 고객께서는 서울마리나 클럽&amp;요트 측의 동의없이 내부에 어떠한 물건이라도 진열할 수 없습니다. <br />
                            - 고객께서는 행사에 참여하시는 고객의 손님 그리고 고객자신으로 인하여 서울마리나 클럽&amp;요트의 재산 기물에 발생된 모든 손실 및 파손에 대한 보상 책임을 지며 서울마리나 클럽&amp;요트는 이에 대한 보수 및 대체 비용을 최종 청구금액에 포함시킬 수 있습니다. <br />
                        </p>
                        <hr />
                    </div>
                    <h3 class="h_intro">편의 시설</h3>
                    <div class="mb-3 border">
						<p>WIFI</p>
						<p>WIFI</p>
						<p>WIFI</p>
						<p>WIFI</p>
						<p>WIFI</p>
						<p>WIFI</p>
					</div>
                    <h4 class="subTitle">위치정보</h4>
                    
                    <div class="mb-3 border">
                        map
                    </div>
                    <div class="mb-3">
                        <h4 class="subTitle">환불기준</h4>
                        <div>
                            <p class="tips">
                                1. 계약금은 총예상 행사비의 10% 이상으로서 행사예약시 지불되어야 하며, 이 규정에서 달리 정한 경우를 제외하고는 환불되지 않습니다. 서울마리나 클럽&요트는 계약금이 지불되기 전까지 고객에 대한 구두 또는 서면 통지로써 예약을 임의로 해지할 수 있습니다.<br />
                                <br />
                                2. 계약금을 제외한 나머지 행사비는 서면상 후불약정한 경우를 제외하고는 행사가 종료됨과 동시에 지불되어야 합니다.<br />
                                <br />
                                3. 행사비를 지불함에 있어 실제 서비스를 받은 인원에 대하여 지불하며 지불보증된 인원보다 적은 인원이 서비스를 받았을지라도 보증된 인원은 지불 보증합니다. 그리고 기타 비용에 대해서도 지불함을 확인합니다.<br />
                                <br />
                                4. 최저 행사인원수에 변동이 생기는 경우 고객께서는 늦어도 행사가 시작되기 72시간전에 서울마리나 클럽&요트로 그 변동사항을 알려주셔야 하며, 알려주지 못함으로 인하여 발행하는 문제는 고객께서 책임을 지게 됩니다.<br />
                                <br />
                                5. 이용자가 임의로 행사를 취소(일정의 변경 포함)하는 경우 공정거래법을 기준하여 다음과 같이 적용됩니다<br />
                                - 행사 59일 이전 통보시 : 행사 취소는 가능 하지만, 계약금은 환불되지 않습니다.<br />
                                - 행사 28일 이내 통보시 : 예상매출 손실액 20%를 배상금으로 서울마리나 클럽&요트에 지불하셔야 합니다.<br />
                                - 행사 21일 이내 통보시 : 예상매출손실액 50%를 배상금으로 서울마리나 클럽&요트에 지불하셔야 합니다.<br />
                                - 행사   7일 이내 통보시 : 예상매출 손실액 70%를 배상금으로 서울마리나 클럽&요트에 지불하셔야 합니다.<br />
                                - 행사   3일 이내 통보시 : 예상매출 손실액 전액을 배상금으로 서울마리나 클럽&요트에 지불하셔야 합니다.	<br />
                                <br />
                                6. 불가항력(기상상황 포함) 또는 기타 서울마리나 클럽&요트에서 조정할 수 없는 원인으로 인하여 행사 장소를 사용할 수 없게 된 경우엔 서울마리나 클럽&요트에서 고객에게 다른 장소를 대체해 드릴 수 있는 권리를 갖습니다. 이에 고객께서 대채된 장소를 원하지 않으시는 경우 고객께서는 예약을 취소하실 수 있으며 이때 이미 지불된 계약금은 전액 환불됩니다.
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 예약신청Modal -->
		<form method="get" action="<c:url value='/sendpw.room9'/>" id="registerform">
		   <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		      aria-labelledby="myModalLabel" aria-hidden="true">
		      <div class="modal-dialog" style="padding-top: 5%">
		         <div class="modal-content">
		            <div class="modal-body" style="padding: 10px 30px">
		               <div class="modal-header" style="border-bottom: none">
		                  <button type="button" class="close" data-dismiss="modal"
		                     aria-label="Close" style="color: white;">
		                     <span aria-hidden="true">&times;</span>
		                  </button>
		                  <h2 class="title mb-3 mt-3"
		                     style="text-align: center">예약확인</h2>
		               </div>
		               <hr/>
		               <div class="" style="padding-bottom: 5%">
		                  <h3 style="color: gray;font-size:1em !important;">예약일자:<!-- 정보뿌려주세요 --></h3>   
		                  <h3 style="color: gray;font-size:1em !important;">예약시간:<!-- 정보 뿌려주세요 --></h3>
                          <h3 style="color: gray;font-size:1em !important;">예약인원:<!-- 정보 뿌려주세요 --></h3>
                          <h3 style="color: gray;font-size:1em !important;">예약자:<!-- 정보 뿌려주세요 --></h3>
                          <h3 style="color: gray;font-size:1em !important;">등록된번호:<!-- 정보 뿌려주세요 --></h3>
		               </div>
		               <div>
		               </div>
		            </div>
		            <h6 style="text-align: center">예약을 원하시면 "확인" 버튼을 눌러주세요</h6>
  					<div class="modal-footer" style="padding:15px 35%;border-top: none">
						<button class="btn inputbutton" style="padding-bottom: 10px;">확인</button>
						<button class="btn inputbutton" type="button" data-dismiss="modal" style="padding-bottom: 10px;">취소</button>
					</div>
		         </div>
		      </div>
		   </div>
		</form>

		<script>

			$('.start, .end').timepicker({
			      showInputs: false,
				  minuteStep: 1,
				  interval: 60
				  
			  });
			$( "#end, #start" ).change(function() {
	
			var time = $("#start").val();
				var hours = Number(time.match(/^(\d+)/)[1]);
				var minutes = Number(time.match(/:(\d+)/)[1]);
				var AMPM = time.match(/\s(.*)$/)[1];
				if (AMPM == "PM" && hours < 12)
					hours = hours + 12;
				if (AMPM == "AM" && hours == 12)
					hours = hours - 12;
				var sHours = hours.toString();
				var sMinutes = minutes.toString();
				if (hours < 10)
					sHours = "0" + sHours;
				if (minutes < 10)
					sMinutes = "0" + sMinutes;
				var time2 = $("#end").val();
				if (time2 == "") {
					var time2 = "00:00 AM";
				}
				var hours2 = Number(time2.match(/^(\d+)/)[1]);
				var minutes2 = Number(time2.match(/:(\d+)/)[1]);
				var AMPM2 = time2.match(/\s(.*)$/)[1];
				if (AMPM2 == "PM" && hours2 < 12)
					hours2 = hours2 + 12;
				if (AMPM2 == "AM" && hours2 == 12)
					hours2 = hours2 - 12;
				var sHours2 = hours2.toString();
				var sMinutes2 = minutes2.toString();
				if (hours2 < 10)
					sHours2 = "0" + sHours2;
				if (minutes2 < 10)
					sMinutes2 = "0" + sMinutes2;
				//alert(sHours + ":" + sMinutes);
				var comparehour = sHours2 - sHours;
				var comparemin = sMinutes2 - sMinutes;
				if (comparehour < 0) {
					$("#end").val(time);
				} else if ((comparehour == 0) && (comparemin < 0)) {
					$("#end").val(time);
				}
				
			});
			$(":input").cSelect(); 
			
				</script>
