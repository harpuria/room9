<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="<c:url value='/css/open.css' />" rel="stylesheet" />
<link href="<c:url value='/css/main.css'/>" rel="stylesheet" />

<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.in.css">
<link href="https://unpkg.com/gijgo@1.9.11/css/gijgo.min.css" rel="stylesheet" type="text/css" />
<script src="https://unpkg.com/gijgo@1.9.11/js/gijgo.min.js" type="text/javascript"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>

/**
*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
/*
var disqus_config = function () {
this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
};
*/
(function() { // DON'T EDIT BELOW THIS LINE
var d = document, s = d.createElement('script');
s.src = 'https://room9-project.disqus.com/embed.js';
s.setAttribute('data-timestamp', +new Date());
(d.head || d.body).appendChild(s);
})();
</script>
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

<style>

/* 편의기능 css적용 */
.r_guid {
width:2em;
height:2em;
margin:10px 0;
}

.r_guid_label{
text-align: center;
margin-top:1em;
margin-left:0.5em;
margin-right:0.5em;
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
								<img src="<c:url value='resources/img/cemina.jpeg'/>" style="padding-top: 20%;" class="mx-auto" alt="slide">
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
								<img src="<c:url value='resources/img/partyroom.jpeg'/>" style="padding-top: 65px;" class="mx-auto" alt="slide">
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
								<img src="<c:url value='resources/img/office.png'/>" style="padding-top: 20%;" class="mx-auto" alt="slide">
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
            <h2>상세보기</h2>
            <br/>
            <p class="lead">이곳에서 예약과 상세정보를 확인 가능합니다</p>
        </div>
        <div class="row">
            <div class="col-md-4 order-md-2 mb-4">
                <h4 class="d-flex justify-content-between align-items-center mb-3">
                    <span class="text-muted">예약상세정보</span>
                </h4>
               <div>
               
                <ul style="list-style: none;padding: 0;">
                <li>
                    <span class="formTitle">공간유형</span>
	                    <div class="rightArea">
	                        <p>
                            	${record.r_category }
	                        </p>
	                    </div>
	                </li>
	                <li>
	                    <span class="formTitle">상세주소</span>
	                    <div class="rightArea">
	                        <p class="address">
	                         	 ${record.r_address }
	                        </p>
	                    </div>
	                </li>
	                <li>
	                    <span class="formTitle">수용인원</span>
	                    <div class="rightArea">
	                        <p>
	                          	  최소 1명 ~ 최대 ${record.r_peoplecount }명 까지
	                        </p>
	                    </div>
	                </li>
					<li>
	                    <span class="formTitle">대관시간</span>
	                    <div class="rightArea">
	                        <p>
	                           ${record.r_time } 
	                        </p>
	                    </div>
	                </li>
	                <li>
	                    <span class="formTitle">대관요일</span>
	                    <div class="rightArea">
	                        <p>
	                            <input type="hidden" class="weekCheck" value="월,화,수,목,금,토,일"> ${record.r_day } 
	                        </p>
	                    </div>
	                </li>
	                <li>
	                    <span class="formTitle">문의처</span>
	                    <div class="rightArea">
	                        <p>
	                            ${record.r_email_tel }
	                        </p>
	                    </div>
	                </li>
                </ul>
               </div>
                <ul class="list-group mb-3">
	                	<li class="list-group-item d-flex justify-content-between lh-condensed">
                        <div>
                            <h5 class="my-0">이용금액</h5>
                        </div>
                         <h3 class="my-0"><span style="color:#61ce4e">${record.r_money }원</span>~/시간</h3>

                    </li>
                    <li class="list-group-item d-flex justify-content-between lh-condensed" style="padding: 0">
                        
                           	<div style="padding: 10px 0;padding-top: 18px;" class="col-md-3 text-center">
                           		<p class="text-muted">예약 날짜 : </p>
                           	</div>
							<div class="col-md-9 text-center " style="padding: 13px 0;padding-left:25px">
								<input id="datepicker" width="210" />
							</div>
							
					       <script>
				            $('#datepicker').datepicker({
					            uiLibrary: 'bootstrap',
					            format:'yyyy/mm/dd'
					        });
					       </script> 
					</li>
                    <li class="list-group-item d-flex justify-content-between lh-condensed" style="padding: 0">
	                 <div style="padding: 10px 0;padding-top: 18px;" class="col-md-3 text-center">
	                 <p class="text-muted">예약 시간 : </p>
	                 </div>
                    	<div class="col-md-9 text-center " style="padding: 10px 0;">
	                       <select class="form-control start_time" id="exampleFormControlSelect1" style="width: 113px; height: 38px; background-color: white; color: black;display: inline;">
	                       		  <option value="0">0시 00분</option>
	                              <option value="1">1시 00분</option>
	                              <option value="2">2시 00분</option>
	                              <option value="3">3시 00분</option>
	                              <option value="4">4시 00분</option>
	                              <option value="5">5시 00분</option>
	                              <option value="6">6시 00분</option>
	                              <option value="7">7시 00분</option>
	                              <option value="8">8시 00분</option>
	                              <option value="9">9시 00분</option>
	                              <option value="10" selected="selected">10시 00분</option>
	                              <option value="11">11시 00분</option>
	                              <option value="12">12시 00분</option>
	                              <option value="13">13시 00분</option>
	                              <option value="14">14시 00분</option>
	                              <option value="15">15시 00분</option>
	                              <option value="16">16시 00분</option>
	                              <option value="17">17시 00분</option>
	                              <option value="18">18시 00분</option>
	                              <option value="19">19시 00분</option>
	                              <option value="20">20시 00분</option>
	                              <option value="21">21시 00분</option>
	                              <option value="22">22시 00분</option>
	                              <option value="23">23시 00분</option>
	                       </select>
	                            ~
	                            <select class="form-control end_time" id="exampleFormControlSelect2" style="width: 113px; height: 38px; background-color: white; color: black;display: inline;">
	                         	  <option value="0">0시 00분</option>
	                              <option value="1">1시 00분</option>
	                              <option value="2">2시 00분</option>
	                              <option value="3">3시 00분</option>
	                              <option value="4">4시 00분</option>
	                              <option value="5">5시 00분</option>
	                              <option value="6">6시 00분</option>
	                              <option value="7">7시 00분</option>
	                              <option value="8">8시 00분</option>
	                              <option value="9">9시 00분</option>
	                              <option value="10">10시 00분</option>
	                              <option value="11">11시 00분</option>
	                              <option value="12">12시 00분</option>
	                              <option value="13">13시 00분</option>
	                              <option value="14">14시 00분</option>
	                              <option value="15">15시 00분</option>
	                              <option value="16">16시 00분</option>
	                              <option value="17">17시 00분</option>
	                              <option value="18">18시 00분</option>
	                              <option value="19">19시 00분</option>
	                              <option value="20">20시 00분</option>
	                              <option value="21">21시 00분</option>
	                              <option value="22">22시 00분</option>
	                              <option value="23"selected="selected">23시 00분</option>
	                       </select>
	                   	</div>
                    </li>
                    <li class="list-group-item d-flex justify-content-between lh-condensed" style="padding: 0;">
                    	<p class="text-muted" style="padding-top: 15px;padding-left: 8px;padding-bottom: 10px;">예약 인원 : </p>
						<div class="col-md-8 text-center" style="margin-right: 25px;">
							<select style="width: 50%;height:65%;text-align: center;margin-top: 10px" class="peoplecount">
								<c:forEach begin="1" end="20" var="count">
								    	<option>${count}</option>명
								</c:forEach>
							</select>
						</div>
					</li>
                </ul>

                
				<c:if test="${not empty sessionScope.emailid }">
					<hr class="mb-4">
                	<button onclick="resview()" class="btn btn-lg btn-block" data-toggle="modal" data-target="#myModal" type="submit" style="background-color: #61ce4e; border: 1px solid white; font-size: 20px;">예약하기</button>
                </c:if>
            </div>
            <div class="col-md-8 order-md-1">
                <h4 class="mb-3">장소 이미지</h4>
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
				  <ol class="carousel-indicators">
				    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
				    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				  </ol>
				 
				  <div class="carousel-inner">
				   <c:if test="${record.r_image_1 != 'null' }" >
					    <div class="carousel-item active">
					      <img id="이미지" class="image_one"  src= "<c:url value='upload/${record.r_image_1 }'/>" style="width:100%">
					    </div>
				  </c:if>
				   <c:if test="${record.r_image_2 != 'null' }" >
					    <div class="carousel-item ">
					      <img id="이미지" class="image_one"  src= "<c:url value='upload/${record.r_image_2 }'/>" style="width:100%">
					    </div>
				    </c:if>
				    
				     <c:if test="${record.r_image_3 != 'null' }" >
					    <div class="carousel-item ">
					      <img id="이미지" class="image_one"  src= "<c:url value='upload/${record.r_image_3 }'/>" style="width:100%">
					    </div>
				    </c:if>
				    
				     <c:if test="${record.r_image_4 != 'null' }" >
					    <div class="carousel-item ">
					      <img id="이미지" class="image_one"  src= "<c:url value='upload/${record.r_image_4 }'/>" style="width:100%">
					    </div>
				    </c:if>
				    
				     <c:if test="${record.r_image_5 != 'null' }" >
					    <div class="carousel-item ">
					      <img id="이미지" class="image_one" src= "<c:url value='upload/${record.r_image_5 }'/>" style="width:100%">
					    </div>
				    </c:if>
				  </div>
				  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="sr-only">Previous</span>
				  </a>
				  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="sr-only">Next</span>
				  </a>
				</div>
                    <h4 class="mb-3">RooM9 정보</h4>
                    <div class="col-md-12 mb-3 ">
                        <p class="tips">
                           ${record.r_large_content }
                        </p>
                        <hr />
                    </div>
                    <h3 class="mb-3">편의 시설</h3>
                    <div class="mb-3 border">
                    
                    <c:forEach items="${r_guid }" var="item" varStatus="">
						<c:choose >
							<c:when test="${item =='1'}">
								<label class="r_guid_label">
									<img src="<c:url value='/assets/img/icon/facilityIcon1.png'/>" alt="TV/프로젝터" class="r_guid"/>
									<p>TV/프로젝터</p>
								</label>		
							</c:when>
							<c:when test="${item =='2'}">
								<label class="r_guid_label">
									<img src="<c:url value='/assets/img/icon/facilityIcon2.png'/>" alt="인터넷/WiFi" class="r_guid"/>
									<p>인터넷/WiFi</p>
								</label>
							</c:when>
							<c:when test="${item =='3'}">
								<label class="r_guid_label">
									<img src="<c:url value='/assets/img/icon/facilityIcon3.png'/>" alt="복사/인쇄기" class="r_guid"/>
									<p>복사/인쇄기</p>
								</label>
							</c:when>
							<c:when test="${item =='4'}">
								<label class="r_guid_label">
									<img src="<c:url value='/assets/img/icon/facilityIcon4.png'/>" alt="화이트보드" class="r_guid"/>
									<p>화이트보드</p>
								</label>
							</c:when>
							<c:when test="${item =='5'}">
								<label class="r_guid_label">
									<img src="<c:url value='/assets/img/icon/facilityIcon5.png'/>" alt="음향/마이크" class="r_guid"/>
									<p>음향/마이크</p>
								</label>
							</c:when>
							<c:when test="${item =='6'}">
								<label class="r_guid_label">
									<img src="<c:url value='/assets/img/icon/facilityIcon6.png'/>" alt="취사시설" class="r_guid"/>
									<p>취사시설</p>
								</label>
							</c:when>
							<c:when test="${item =='7'}">
								<label class="r_guid_label">
									<img src="<c:url value='/assets/img/icon/facilityIcon7.png'/>" alt="음식물반입가능" class="r_guid"/>
									<p>음식물반입가능</p>
								</label>
							</c:when>
							<c:when test="${item =='8'}">
								<label class="r_guid_label">
									<img src="<c:url value='/assets/img/icon/facilityIcon8.png'/>" alt="주류반입가능" class="r_guid"/>
									<p>주류반입가능</p>
								</label>
							</c:when>
							<c:when test="${item =='9'}">
								<label class="r_guid_label">
									<img src="<c:url value='/assets/img/icon/facilityIcon9.png'/>" alt="샤워시설" class="r_guid"/>
									<p>샤워시설</p>
								</label>
							</c:when>
							<c:when test="${item =='10'}">
								<label class="r_guid_label">
									<img src="<c:url value='/assets/img/icon/facilityIcon10.png'/>" alt="주차가능" class="r_guid"/>
									<p>주차가능</p>
								</label>
							</c:when>
							<c:when test="${item =='11'}">
								<label class="r_guid_label">
									<img src="<c:url value='/assets/img/icon/facilityIcon11.png'/>" alt="금연" class="r_guid"/>
									<p>금연</p>
								</label>
							</c:when>
							<c:when test="${item =='12'}">
								<label class="r_guid_label">
									<img src="<c:url value='/assets/img/icon/facilityIcon12.png'/>" alt="반려동물동반가능" class="r_guid"/>
									<p>반려동물동반가능</p>
								</label>
							</c:when>
							<c:when test="${item =='13'}">
								<label class="r_guid_label">
									<img src="<c:url value='/assets/img/icon/facilityIcon13.png'/>" alt="PC/노트북" class="r_guid"/>
									<p>PC/노트북</p>
								</label>
							</c:when>
							<c:when test="${item =='14'}">
								<label class="r_guid_label">
									<img src="<c:url value='/assets/img/icon/facilityIcon14.png'/>" alt="의자/테이블" class="r_guid"/>
									<p>의자/테이블</p>
								</label>
							</c:when>
							<c:when test="${item =='15'}">
								<label class="r_guid_label">
									<img src="<c:url value='/assets/img/icon/facilityIcon15.png'/>" alt="내부화장실" class="r_guid"/>
									<p>내부화장실</p>
								</label>
							</c:when>
							<c:when test="${item =='16'}">
								<label class="r_guid_label">
									<img src="<c:url value='/assets/img/icon/facilityIcon16.png'/>" alt="남여화장실분리" class="r_guid"/>
									<p>남여화장실분리</p>
								</label>
							</c:when>
							<c:when test="${item =='17'}">
								<label class="r_guid_label">
									<img src="<c:url value='/assets/img/icon/facilityIcon17.png'/>" alt="남여공용화장실" class="r_guid"/>
									<p>남여공용화장실</p>
								</label>
							</c:when>
						</c:choose>
					</c:forEach> 
					</div>
                    <h4 class="mb-3">위치정보</h4>
                    	${record.r_address }
                    <div class="mb-3 border">
                        <div id="map" style="width:100%; height:300px;"></div>
                    </div>
                    <div class="mb-3">
                        <h4 class="mb-3">환불기준</h4>
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
                                &nbsp;&nbsp;- 행사 59일 이전 통보시 : 행사 취소는 가능 하지만, 계약금은 환불되지 않습니다.<br />
                                &nbsp;&nbsp;- 행사 28일 이내 통보시 : 예상매출 손실액 20%를 배상금으로 서울마리나 클럽&요트에 지불하셔야 합니다.<br />
                                &nbsp;&nbsp;- 행사 21일 이내 통보시 : 예상매출손실액 50%를 배상금으로 서울마리나 클럽&요트에 지불하셔야 합니다.<br />
                                &nbsp;&nbsp;- 행사   7일 이내 통보시 : 예상매출 손실액 70%를 배상금으로 서울마리나 클럽&요트에 지불하셔야 합니다.<br />
                                &nbsp;&nbsp;- 행사   3일 이내 통보시 : 예상매출 손실액 전액을 배상금으로 서울마리나 클럽&요트에 지불하셔야 합니다.	<br />
                                <br />
                                6. 불가항력(기상상황 포함) 또는 기타 서울마리나 클럽&요트에서 조정할 수 없는 원인으로 인하여 행사 장소를 사용할 수 없게 된 경우엔 서울마리나 클럽&요트에서 고객에게 다른 장소를 대체해 드릴 수 있는 권리를 갖습니다. 이에 고객께서 대채된 장소를 원하지 않으시는 경우 고객께서는 예약을 취소하실 수 있으며 이때 이미 지불된 계약금은 전액 환불됩니다.
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
      
      <div id="disqus_thread" style="padding:5% 14%; width: 100%"></div>
      
        <!-- 예약신청Modal -->
		<form method="get" action="<c:url value='/reservationProcess.room9'/>" id="registerform">
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
		                  <h2 class="title mb-3 mt-3" style="text-align: center" >예약확인</h2>
		               </div>
		               <hr/>
		               <div class="" style="padding-bottom: 5%">
		                  <h3 style="color: gray;font-size:1em !important;" class="res_dday">예약일자 : <p style="display:inline"></p></h3>
		                  	<input type="hidden" name="res_dday" value=""/>   
		                  <h3 style="color: gray;font-size:1em !important;" class="res_time">예약시간 : <p style="display:inline"></p></h3>
		                 	<input type="hidden" name="res_time" value=""/>
                          <h3 style="color: gray;font-size:1em !important;" class="res_peoplecount">예약인원 : <p style="display:inline"></p></h3>
                          	<input type="hidden" name="res_peoplecount" value="" />
                          <h3 style="color: gray;font-size:1em !important;" class="res_name">예약자 : <p style="display:inline"></p></h3>
                          	<input type="hidden" name="res_name" value="${memeberinfo.m_name}"/>
                          <h3 style="color: gray;font-size:1em !important;" class="res_tel">등록된번호 : <p style="display:inline"></p></h3>
                          	<input type="hidden" name="res_tel" value="${memeberinfo.m_tel}"/>
                          	<input type="hidden" name="r_no" value="${record.r_no}"/>
                          	<input type="hidden" name="r_money" value=""/>
                          
		               </div>
		               <script>
		               var time = $('.start_time option:selected').text() + " ~ " + $('.end_time option:selected').text();
	            	   var restime = $('.end_time option:selected').val() - $('.start_time option:selected').val() ;
	            	   var resultprice = (${record.r_money}) * restime;
	            	   
		               var resview = function(){
		            	 
		            	   
			               console.log("예약가격 : "+ resultprice);
			               
			               		$('.res_dday p').html($("#datepicker").datepicker().val());
				               	$('.res_time p').html(time);
				               	$('.res_peoplecount p').html($('.peoplecount option:selected').val());
				             	$('.res_name p').html('${memeberinfo.m_name}');
				               	$('.res_tel p').html('${memeberinfo.m_tel}');
				               	
				               	$('input[name=res_time]').val(restime);
				               	$('input[name=res_dday]').val($("#datepicker").datepicker().val());
				               	$('input[name=res_peoplecount]').val($('.peoplecount option:selected').val());
				               	$('input[name=r_money]').val(resultprice);
							};
		               </script>
		               <div>
		               </div>
		            </div>
		            <h6 style="text-align: center">예약을 원하시면  "확인" 버튼을 눌러주세요</h6>
  					<div class="modal-footer" style="padding:15px 35%;border-top: none">
						<button class="btn inputbutton" id="res_button" style="padding-bottom: 10px;" type="button" onclick="payment()" >확인</button>
						<button class="btn inputbutton" type="button" data-dismiss="modal" style="padding-bottom: 10px;" type="reset">취소</button>
					</div>
		         </div>
		      </div>
		   </div>
		</form>

<script>
   var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
   mapOption = {
      center : new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
      level : 3
   // 지도의 확대 레벨
   };

   //지도를 생성합니다    
   var map = new daum.maps.Map(mapContainer, mapOption);

   //주소-좌표 변환 객체를 생성합니다
   var geocoder = new daum.maps.services.Geocoder();

   var address;
   
    address=  "${record.r_address }";
    
    console.log(address);
    
    //주소로 좌표를 검색합니다
    geocoder.addressSearch(address,  function(result, status) {
       // 정상적으로 검색이 완료됐으면 
       if (status === daum.maps.services.Status.OK) {
    
          var coords = new daum.maps.LatLng(result[0].y,result[0].x);
          console.log(address, result[0].y, result[0].x);
    
          // 결과값으로 받은 위치를 마커로 표시합니다
          var marker = new daum.maps.Marker({
             map : map,
             position : coords
          });
     
     	// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
          map.setCenter(coords);
       }
    });
    
    function myListener(obj) {
        alert(obj.value);
    }

</script>

<script>

var payment = function(){
	var IMP = window.IMP; // 생략가능
	IMP.init('imp95302034'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
	IMP.request_pay({
	    pg : 'inicis', // version 1.1.0부터 지원.
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '예약 테스트', // 결제 주문명
	    amount : /*resultprice*/ 100, // 결제금액
	    buyer_email : '${sessionScope.emailid}',//구매자 이메일
	    buyer_name : '${memeberinfo.m_name}',//구매자 이름
	    buyer_tel : '${memeberinfo.m_tel}',//구매자 핸드폰번호
	    buyer_addr : '',//구매자 주소
	    buyer_postcode : '', //주문자 우편번호
	    m_redirect_url : 'https://www.yourdomain.com/payments/complete'
	}, function(rsp) {
	    if ( rsp.success ) {
	        var msg = '결제가 완료되었습니다.';
	        $('form').submit();
	    } else {
	        var msg = '결제에 실패하였습니다.';
	        msg += '에러내용 : ' + rsp.error_msg;
	    }
	    alert(msg);
	});
// 	var payment = function(){
// 		$.ajax({
// 			URL: "<c:url value='/payment.room9'/>",
// 			type:"post",
// 			success : function(data){
// 				console.log("성공");
// 			},
// 			error: function(){
// 				console.log("에러엘레ㅓ러럴");
// 			}
// 		});
// 	}
}	
</script>

