<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<style type="text/css">
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
.topBanner .searchBar input[type="submit"] {position: absolute;top: 0;right: 0;display: block;padding: 0;box-sizing: border-box;-moz-box-sizing: border-box;-webkit-box-sizing: border-box;background: #ffffff;outline: none;border: 0;border-radius: 0;-webkit-border-radius: 0;-webkit-opacity: 1;border-radius: 3px;color: #828282 !important;background: url('resources/img/searchIcon.svg') no-repeat center center;background-color: #ffffff;cursor: pointer;}
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
.placeListArea .placeList > li {float: left;width: 400px;height: 400px;margin: 0 20px 20px 0;}
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
.placeListArea .placeList .infoArea .address {font-size: 12px; color: #333333;}
}
@media (min-width: 768px) and (max-width: 1279px) {
.placeListArea .placeList .infoArea .address {font-size: 13px; color: #333333;}
}
@media (min-width: 1280px) {
.placeListArea .placeList .infoArea .address {font-size: 14px; color: #333333;}
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

.filter-button {font-size: 15px;border: 1px solid #61ce4e;border-radius: 5px;text-align: center;color: black;border-color: white !important; background-color: white;}
.filter-button:hover {font-size: 15px;border: 1px solid #61ce4e;border-radius: 5px;text-align: center;color: #ffffff !important;background-color: #42B32F;border-color: white !important;}
.filter-button .active {background-color: #61ce4e !important;color: white !important;}
.filter-button:focus, .btn-default:focus {background-color: #61ce4e !important;color: white !important;}
</style>

<div class="container-fluid" id="topimg" >
   <div class="row">
      <div class="col-md-12" style="padding:0;">
         <article class="topBanner">
            <div class="topSkin" style="background: url('resources/img/bg_intro.jpg');position: absolute;opacity: .6;background-size: cover;background-repeat: no-repeat;background-position: center center;z-index: 10;"></div>
            <h2 class="bannerTitle">"방구할때는 어딜 봐야 되는거야?"<br/>ROOM 9 !!</h2>
            <ul class="tagArea" style=" padding:inherit;">
               <li>#세미나</li>
               <li>#스터디</li>
               <li>#송년회</li>
               <li>#오피스</li>
            </ul>
            <form action="#" method="get" class="searchForm">
               <div class="searchBar">
                  <input type="text" class="search" name="search" value="" placeholder="" id="search"/>
                  <input type="submit" class="submit" name="search" value=""/>
                  <span class="placeholderText" id="placeholderText" style="display:block;">삼성동, 오피스, 강남대로 등</span>
               </div>
            </form>
         </article>
      </div>
   </div>
</div>

<div class="container-fluid">
       <div class="row wow zoomIn" data-wow-duration="1s" data-wow-delay=".5s">   
        <div align="center" style="padding:2% 0;" class="col-md-12 text-center">
            <button class="btn btn-default filter-button active" data-filter="all">All</button>
            <button class="btn btn-default filter-button" data-filter="conference">#회의실</button>
            <button class="btn btn-default filter-button" data-filter="party">#파티룸</button>
            <button class="btn btn-default filter-button" data-filter="study">#스터디룸</button>
            <button class="btn btn-default filter-button" data-filter="multi">#다목적홀</button>
            <button class="btn btn-default filter-button" data-filter="show">#공연장</button>
            <button class="btn btn-default filter-button" data-filter="training">#연수원</button>
            <button class="btn btn-default filter-button" data-filter="work">#작업실</button>
            <button class="btn btn-default filter-button" data-filter="practice">#연습실</button>
            <button class="btn btn-default filter-button" data-filter="leisure">#레저시설</button>
            <button class="btn btn-default filter-button" data-filter="cafe">#카페</button>
        </div>
    </div>
   </div>

<div class="container-fluid" id="">
   <div class="row">
      <article class="placeListArea">
         <ul class="placeList wow fadeInUp" data-wow-duration="1s" data-wow-delay=".5s">
            <c:forEach items="${list }" var="item" varStatus="loop">
	            <li class="filter ${category[loop.index] } reunion">
	               <a href="<c:url value='/reservation.room9?r_no=${item.r_no }&m_email=${sessionScope.emailid }'/>">
	                  <div class="imgArea">
	                     <img src="<c:url value='upload/${item.r_image_1 }'/>" />                           
	                  </div>
	                  <div class="tagArea">
	                     <span class="btn tag">#${item.r_tag_1 }</span>
	                     <span class="btn tag">#${item.r_tag_2 }</span>
	                     <span class="btn tag">#${item.r_tag_3 }</span>
	                  </div>
	                  <div class="infoArea">
	                     <p class="title_1" style="font-weight: bold">${item.r_name }</p>
	                     <p class="address text-muted" style="font-weight: bold; font-size: 12px" ><i class="fas fa-map-marker-alt"></i> ${item.r_address }</p>                           
	                  </div>
	                  <div class="subInfoArea">
	                     <span class="capacity" style="font-weight: bold;">수용인원 : <span style="color: #333333; font-weight: bold">${item.r_peoplecount}</span> 명</span>
	                     <p class="priceAndTime">
	                        <span class="price">${item.r_money }원</span>
	                        <span class="time">/시간</span>
	                     </p>                     
	                  </div>
	               </a>
	            </li>
            </c:forEach>
           
         </ul>
      </article>
   </div>
</div>
   
<script>
   $(".hover").mouseleave(function() {
      $(this).removeClass("hover");
   });
   
   new WOW().init();
   
   $('#myCarousel').carousel({
       interval: 5000,
   });
    
   $(function () {
       var links = $('.sidebar1-links > div');

      links.on('click', function () {
          links.removeClass('selected');
          $(this).addClass('selected');
       });
    });
   
   $(document).ready(function () {
        $(".filter-button").click(function () {
            var value = $(this).attr('data-filter');
            if (value == "all") {
                $('.filter').show('1000');
            }
            else {
                $(".filter").not('.' + value).hide('3000');
                $('.filter').filter('.' + value).show('3000');
            }
        });
        if ($(".filter-button").removeClass("active")) {
            $(this).removeClass("active");
        } else {
            $(this).addClass("active");
        }
    });

   $('input[name="search"].search').on('focus keyup', function () {
        var textLength = $(this).val().length;
        if (textLength < 1) {
            $('.placeholderText').css('display', 'block');
        } else {
            $('.placeholderText').css('display', 'none');
        }
    }).trigger('keyup').attr('placeholder', '');

    $('.placeholderText').click(function () {
        $('input[name="search"].search').trigger('focus');
    });
</script>
