<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="<c:url value='/css/open.css' />" rel="stylesheet" />
<link href="<c:url value='/css/main.css'/>" rel="stylesheet" />

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

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12" style="height: 100px; background-color: white;">

		</div>
	</div>
</div>

<div class="container-fluid" id="hot">
	<div class="row">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="card">
						<figure class="snip1141">
							<img src="<c:url value='resources/img/book.jpg'/>" alt="sq-sample27" />
							<figcaption>
								<div class="circle">
									<i class="ion-ios-plus-empty"> </i>
								</div>
								<h2># 독서</h2>
							</figcaption>
							<a href="<c:url value='/open.room9'/>"></a>
						</figure>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card">
						<figure class="snip1141">
							<img src="<c:url value='resources/img/semina.jpg'/>" alt="sq-sample27" />
							<figcaption>
								<div class="circle">
									<i class="ion-ios-plus-empty"> </i>
								</div>
								<h2># 세미나</h2>
							</figcaption>
							<a href="<c:url value='/open.room9'/>"></a>
						</figure>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card">
						<figure class="snip1141">
							<img src="<c:url value='resources/img/office_1.png'/>" alt="sq-sample27" />
							<figcaption>
								<div class="circle">
									<i class="ion-ios-plus-empty"> </i>
								</div>
								<h2># 오피스</h2>
							</figcaption>
							<a href="<c:url value='/open.room9'/>"></a>
						</figure>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card">
						<figure class="snip1141">
							<img src="<c:url value='resources/img/262603576.jpg'/>" alt="sq-sample27" />
							<figcaption>
								<div class="circle">
									<i class="ion-ios-plus-empty"> </i>
								</div>
								<h2># 동창회</h2>
							</figcaption>
							<a href="<c:url value='/open.room9'/>"></a>
						</figure>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card">
						<figure class="snip1141">
							<img src="<c:url value='resources/img/moim.jpg'/>" alt="sq-sample27" />
							<figcaption>
								<div class="circle">
									<i class="ion-ios-plus-empty"> </i>
								</div>
								<h2># 소모임</h2>
							</figcaption>
							<a href="<c:url value='/open.room9'/>"></a>
						</figure>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card">
						<figure class="snip1141">
							<img src="<c:url value='resources/img/jobs.png'/>" alt="sq-sample27" />
							<figcaption>
								<div class="circle">
									<i class="ion-ios-plus-empty"> </i>
								</div>
								<h2># 강연장</h2>
							</figcaption>
							<a href="<c:url value='/open.room9'/>"></a>
						</figure>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid" id="hot">
	<div class="row">
		<div class="col-md-12 text-center"
			style="height: 70px; background-color: white">
			<input type="button" onclick="location.href='<c:url value='/open.room9'/>'" value="더 보기"
				class="btn btn-success" style="background-color: #61ce4e;" />
		</div>
	</div>
</div>

<div class="container-fluid" id="">
	<div class="row">
		<div class="col-md-12" style="width: 100%; height: 800px;" id="map">

		</div>
	</div>
</div>

<div class="container-fluid" id="download"
	style="background: url('resources/img/phoneback.png'); background-attachment: fixed; background-size: 100% 100%; height: 850px;">
	<div class="row">
		<div class="container">
			<div class="row">
				<div class="col-md-6 text-center  wow fadeInUp"
					data-wow-duration="1.5s" data-wow-delay=".5s">
					<article style="padding-bottom: 12%; padding-top: 50%;">
						<h1>
							" 방구할땐 어디 ? ?<br />
							<br /> ROOM 9 ! ! "
						</h1>
					</article>
				</div>
				<div class="col-md-6 text-center wow fadeInUp"
					data-wow-duration="1.5s" data-wow-delay=".5s"
					style="width: 100%; height: 100%">
					<img src="<c:url value='resources/img/mainview.png'/>"
						style="width: 100%; height: 100%; padding-top: 35%">
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid" id="download"
	style="background: url('resources/img/kakao/kakaoback1.jpg'); background-attachment: fixed; background-size: 100% 100%; height: 850px;">
	<div class="row">
		<div class="container">
			<div class="row">
				<div class="col-md-6 text-center  wow fadeInUp"
					data-wow-duration="1.5s" data-wow-delay=".5s">
					<article style="padding-bottom: 12%; padding-top: 50%;">
						<img src="<c:url value='resources/img/kakao/kakaoqr.png'/>"
						style="width: 20%;">
					</article>
				</div>
				<div class="col-md-6 text-center wow fadeInUp"
					data-wow-duration="1.5s" data-wow-delay=".5s"
					style="width: 100%; height: 100%">
					<img src="<c:url value='resources/img/kakao/kakaoback.png'/>"
						style="width: 100%; height: 100%; padding-top: 20%">
				</div>
			</div>
		</div>
	</div>
</div>

<style>
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
</style>

<script>
	$(".hover").mouseleave(function() {
		$(this).removeClass("hover");
	});
	
	new WOW().init();
    
    $('#myCarousel').carousel({
	    interval: 5000,
	});
    
    $('.owl-carousel').owlCarousel({
	    items:2,
	    loop:true,
	    center:true,
	    autoplay:true,
	    autoplayTimeout:5000,
	    autoplayHoverPause:true
	});
    
	var links = $('.sidebar1-links > div');

	links.on('click', function() {
		links.removeClass('selected');
		$(this).addClass('selected');
	});

	// --- 지도 클러스터링 시작 --- //
	var map = new daum.maps.Map(document.getElementById('map'), { // 지도를 표시할 div
		center : new daum.maps.LatLng(36.2683, 127.6358), // 지도의 중심좌표 
		level : 14
	// 지도의 확대 레벨 
	});

	// 마커 클러스터러를 생성합니다 
	var clusterer = new daum.maps.MarkerClusterer({
		map : map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
		averageCenter : true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
		minLevel : 10
	// 클러스터 할 최소 지도 레벨 
	});

	//주소-좌표 변환 객체를 생성합니다
	var geocoder = new daum.maps.services.Geocoder();

	// JSON 에 있는 주소 읽어오기
	$.getJSON("<c:url value='resources/JSON/room9.json'/>", function(data) {
		$.each(data, function(i, elt) {
			//주소로 좌표를 검색합니다
			geocoder.addressSearch(elt.addr, function(result, status) {
				// 정상적으로 검색이 완료됐으면 
				if (status === daum.maps.services.Status.OK) {
					console.log("좌표 확인 : " + result[0].y, result[0].x);
					console.log("img check :" + elt.img);

					// 해당 위치의 마커를 만들고...
					var marker = new daum.maps.Marker({
						position : new daum.maps.LatLng(result[0].y, result[0].x)
					});

					// 그 마커를 클러스터에 추가하기
					clusterer.addMarker(marker);
					
					// 커스텀 오버레이에 표시할 컨텐츠 입니다
					// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
					// 별도의 이벤트 메소드를 제공하지 않습니다 
					var content = '<div class="wrap">' + 
					            '    <div class="info">' + 
					            '        <div class="title">' + 
					            '            ' + elt.name + ' ' + 
					            '        </div>' + 
					            '        <div class="body">' + 
					            '            <div class="img">' +
					            '                <img src="<c:url value=' + "upload/" + elt.img + '/>" width="73" height="70">' +
					            '           </div>' + 
					            '            <div class="desc">' + 
					            '                <div class="ellipsis">' + elt.addr + '</div>' + 
					            '                <div class="jibun ellipsis">(우) 63309 (지번) 영평동 2181</div>' + 
					            '                <div><a href="http://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a></div>' + 
					            '            </div>' + 
					            '        </div>' + 
					            '    </div>' +    
					            '</div>';
					            
					
				    // 마커 위에 커스텀오버레이를 표시합니다
				    // 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
				    var overlay = new daum.maps.CustomOverlay({
				        content: content,
				        map: map,
				        position: marker.getPosition()       
				    });
				    
				    overlay.setMap(null); // 일단 처음에는 모든 오버레이가 보이지 않게 해야함.

				    // 마커를 클릭했을 때 커스텀 오버레이를 보였다가, 안보였다가 토글 처리
				    daum.maps.event.addListener(marker, 'click', function() {
				    	if(overlay.getMap() == null)
				    		overlay.setMap(map);
				    	else
				    		overlay.setMap(null);
				    });

				    // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
				    function closeOverlay() {
				        overlay.setMap(null);     
				    }
				}
			});
		});
	});
	// --- 지도 클러스터링 끝 --- //
</script>