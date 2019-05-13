<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<p style="margin-top:-12px">
    사용한 데이터를 보시려면 
    <em class="link">
       <a href="http://apis.map.daum.net/download/web/data/chicken.json" target="_blank">여기를 클릭하세요!</a>
    </em>
</p>
<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bae907e078c4dd929177071c5ed2263c&libraries=services,clusterer,drawing"></script>
<script>
    var map = new daum.maps.Map(document.getElementById('map'), { // 지도를 표시할 div
        center : new daum.maps.LatLng(36.2683, 127.6358), // 지도의 중심좌표 
        level : 14 // 지도의 확대 레벨 
    });
    
    // 마커 클러스터러를 생성합니다 
    var clusterer = new daum.maps.MarkerClusterer({
        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
        minLevel: 10 // 클러스터 할 최소 지도 레벨 
    });
    
    //주소-좌표 변환 객체를 생성합니다
	var geocoder = new daum.maps.services.Geocoder();
	
    // JSON 에 있는 주소 읽어오기
    // test.json 에는 모임장소의 주소들이 들어가야함. 이거 처리는 또 어케하지... ㅅㅂ..
    $.getJSON("<c:url value='resources/test.json'/>", function(data) {	
    	$.each(data, function(i, elt) {
    		console.log("test : " + elt.addr);
    		
    	 	//주소로 좌표를 검색합니다
    		geocoder.addressSearch(elt.addr, function(result, status) {
    			// 정상적으로 검색이 완료됐으면 
    			if (status === daum.maps.services.Status.OK) {
    				
    				console.log(result[0].y, result[0].x);
    				
    				var marker = new daum.maps.Marker({
    				    position: new daum.maps.LatLng(result[0].y, result[0].x)
    				});
    				
    				clusterer.addMarker(marker);
    			}
    		});
    	});
    });
</script>