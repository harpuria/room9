<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href=<c:url value="assets/css/styles.css"/> rel="stylesheet" />
<link href=<c:url value="assets/css/add.css"/> rel="stylesheet" />
<link href=<c:url value="assets/css/common.css"/> rel="stylesheet" />
<link href=<c:url value="assets/css/formcommon.css"/> rel="stylesheet" />    

<section class="content" style="padding: 78px 30px 30px 280px;">
    <h3 class="mainTitle">ROOM9 정보 입력<span class="tips">* 모든 항목 필수</span></h3>
    <form action="<c:url value='/admin_room9_joinProcess.room9'/>" class="placeAddForm" method="POST" enctype="multipart/form-data">
        <input type="hidden" name="_token" value="#">
        <div class="formBox commonForm">
            <article class="placeName">
                <div class="titleArea">
                    <h4>ROOM9 명</h4>
                </div>
                <div class="editArea">
                    <input type="text" name="title" placeholder="최대 100자 이내 입력" maxlength="100"
                        data-parsley-required="true" data-parsley-error-message="ROOM9 명을 입력해 주세요">
                </div>
            </article>
            <article class="placeLocation">
                <div class="titleArea">
                    <h4>위치</h4>
                    <input type="hidden" name="mapX" id="lng" size="" maxlength="64" value="126.9018877" required=""
                        alias="지도좌표_X_를" confirm="123.">
                    <input type="hidden" name="mapY" id="lat" size="" maxlength="64" value="37.4526029" required=""
                        alias="지도좌표_Y_를" confirm="123.">
                    <input type="hidden" name="locality" id="sido" value="서울특별시">
                    <input type="hidden" name="sublocality1" id="gugun" value="금천구">
                    <input type="hidden" name="sublocality2" id="dong" value="시흥동">
                </div>
                <div class="editArea">
                    <input type="text" placeholder="주소 검색 / 예) 강남구 영동대로" id="mapAddr" name="addr"
                        class="search ui-autocomplete-input" data-parsley-required="true"
                        data-parsley-error-message="플레이스 위치를 입력해 주세요" autocomplete="off">
                    <input type="text" placeholder="상세주소 입력" class="detail" id="location" name="addr_detail">
 
                    <div class="col-md-12" style="width: 100%; height: 800px;" id="map"></div>
                    
                    <!-- 지도 시작 (클릭시 마커 표시 하고 주소값 받아오기) -->
                    <script>
                    	// 좌표 > 주소 변환하기 위한 객체 생성
                    	var geocoder = new daum.maps.services.Geocoder();
                    
						var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
						    mapOption = { 
						        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
						        level: 3 // 지도의 확대 레벨
						    };
						
						var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
						
						// 지도를 클릭한 위치에 표출할 마커입니다
						var marker = new daum.maps.Marker({ 
						    // 지도 중심좌표에 마커를 생성합니다 
						    position: map.getCenter() 
						}); 
						// 지도에 마커를 표시합니다
						marker.setMap(map);
						
						// 지도에 클릭 이벤트를 등록합니다
						// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
						daum.maps.event.addListener(map, 'click', function(mouseEvent) {        
							 searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
						        if (status === daum.maps.services.Status.OK) {
						            // 마커를 클릭한 위치에 표시합니다 
						            marker.setPosition(mouseEvent.latLng);
						            marker.setMap(map);
						            
						            $("#mapAddr").val(result[0].address.address_name);
						        }   
						    });
						});
						
						function searchDetailAddrFromCoords(coords, callback) {
						    // 좌표로 법정동 상세 주소 정보를 요청합니다
						    geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
						}
					</script>
					
				</div>
            </article>
            <article class="placeImgUpload">
                <div class="titleArea">
                    <h4>사진등록</h4>
                </div>
                <div class="editArea">
                    <ul class="imgArea">
                        <li class="img" style="display: inline-flex" >
							<input type="text" class="imgFile" name="imgfiles" style="display: none"/>
                        </li>
                    </ul>
                    <input type="text" class="imgListCount" style="display: none" value="0" readonly=""
                        data-parsley-required="true" data-parsley-min="1" data-parsley-class-handler=".imgArea"
                        data-parsley-errors-container=".imgUploadErrorWrap"
                        data-parsley-error-message="사진을 등록해 주세요">
                  		
	                    <input type="file" id="imgUpload" class="fileUpload" name="imgname" onchange="uploadImg(this)" multiple>
	                    <label for="imgUpload" class="uploadBtn">등록하기</label>
	                    <script>
	                    var names = "";
	                    
							var uploadImg = function(value){
								
								names += $('#imgUpload').val().replace("C:\\fakepath\\" ,"")+",";
								console.log(names);
								$('.imgFile').val(names);
								console.log("네임즈 val: " + $('.imgFile').val());
								
								var form = $("form")[0];
								var formData = new FormData(form);
								var fileInput = document.getElementById("imgUpload"); // 파일 태그 호출
								var files = fileInput.files; //업로드한 파일의 정보를 넣는다.
								
								for(var i = 0; i<files.length; i++)
								{
									formData.append("file-",files[i]); // 업로드한 파일을 하나하나 읽어서 FormData에 넣는다.	
								}
								
								$.ajax({
									url:"<c:url value='/fileUpload.room9'/>",
									type:"POST",
									data: formData,
									processData: false,
							        contentType: false,
									error:function(data){
										console.log("에러");
									},
									success:function(data){
										
										console.log("성공");
										var reader = new FileReader();
									
										for(var i=0; i<files.length; i++)
										{
											$('.img').append("<img src='<c:url value='upload/"+files[i].name+"'/>'/ style='display:inline-block'>");
											//$('.imgFile_'+i+'').val(files[i].name);
										}	
// 											reader.onload = function(e)
// 											{
// 												$('.imgload'+i+'').attr('src',e.target.result);
// 											}
// 											reader.readAsDataURL(value.files[i]);

										
// 										reader.onload = function(e){
// 											$('#ImageLoad').attr('src',e.target.result);
// 										}
// 										reader.readAsDataURL(value.files[0]);
								
									}
								});	
				
							}
						
						</script>
                    <div class="imgUploadErrorWrap"></div>

                    <p class="tips">
                        * 사진 권장사항 : 최대 5장, 사이즈 : 840 X 480픽셀(가로 X 세로), 용량 2MB 이하, 포맷 : Jpeg, gif, png<br>
                        * 대표이미지는 실제 장소 사진으로 선택해 주세요 (장소가 아닌 경우 임의 변경)<br>
                        * 인물, 특정 상표 등이 포함된 사진은 권리침해 등의 사유로 게재가 중단될 수 있으니 사전에 확인해 주세요
                    </p>
                </div>
            </article>
            <article class="placeType">
                <div class="titleArea">
                    <h4>유형선택</h4>
                </div>
                <div class="editArea">
                    <ul class="tagList">
                        <li>
                            <label>
                                <input type="checkbox" name="AreaType" value="회의실" data-parsley-required="true"
                                    data-parsley-class-handler=".tagList"
                                    data-parsley-errors-container=".typeErrorWrap"
                                    data-parsley-error-message="플레이스 성격에 맞는 유형을 선택해 주세요"
                                    data-parsley-multiple="type">
                                <span>회의실 </span>
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" name="AreaType" value="파티룸" data-parsley-required="true"
                                    data-parsley-class-handler=".tagList"
                                    data-parsley-errors-container=".typeErrorWrap"
                                    data-parsley-error-message="플레이스 성격에 맞는 유형을 선택해 주세요"
                                    data-parsley-multiple="type">
                                <span>파티룸 </span>
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" name="AreaType" value="스터디룸" data-parsley-required="true"
                                    data-parsley-class-handler=".tagList"
                                    data-parsley-errors-container=".typeErrorWrap"
                                    data-parsley-error-message="플레이스 성격에 맞는 유형을 선택해 주세요"
                                    data-parsley-multiple="type">
                                <span>스터디룸 </span>
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" name="AreaType" value="다목적홀" data-parsley-required="true"
                                    data-parsley-class-handler=".tagList"
                                    data-parsley-errors-container=".typeErrorWrap"
                                    data-parsley-error-message="플레이스 성격에 맞는 유형을 선택해 주세요"
                                    data-parsley-multiple="type">
                                <span>다목적홀 </span>
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" name="AreaType" value="공연장" data-parsley-required="true"
                                    data-parsley-class-handler=".tagList"
                                    data-parsley-errors-container=".typeErrorWrap"
                                    data-parsley-error-message="플레이스 성격에 맞는 유형을 선택해 주세요"
                                    data-parsley-multiple="type">
                                <span>공연장 </span>
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" name="AreaType" value="연수원" data-parsley-required="true"
                                    data-parsley-class-handler=".tagList"
                                    data-parsley-errors-container=".typeErrorWrap"
                                    data-parsley-error-message="플레이스 성격에 맞는 유형을 선택해 주세요"
                                    data-parsley-multiple="type">
                                <span>연수원 </span>
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" name="AreaType" value="작업실" data-parsley-required="true"
                                    data-parsley-class-handler=".tagList"
                                    data-parsley-errors-container=".typeErrorWrap"
                                    data-parsley-error-message="플레이스 성격에 맞는 유형을 선택해 주세요"
                                    data-parsley-multiple="type">
                                <span>작업실 </span>
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" name="AreaType" value="연습실" data-parsley-required="true"
                                    data-parsley-class-handler=".tagList"
                                    data-parsley-errors-container=".typeErrorWrap"
                                    data-parsley-error-message="플레이스 성격에 맞는 유형을 선택해 주세요"
                                    data-parsley-multiple="type">
                                <span>연습실 </span>
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" name="AreaType" value="레저시설" data-parsley-required="true"
                                    data-parsley-class-handler=".tagList"
                                    data-parsley-errors-container=".typeErrorWrap"
                                    data-parsley-error-message="플레이스 성격에 맞는 유형을 선택해 주세요"
                                    data-parsley-multiple="type">
                                <span>레저시설 </span>
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" name="AreaType" value="카페" data-parsley-required="true"
                                    data-parsley-class-handler=".tagList"
                                    data-parsley-errors-container=".typeErrorWrap"
                                    data-parsley-error-message="플레이스 성격에 맞는 유형을 선택해 주세요"
                                    data-parsley-multiple="type">
                                <span>카페 </span>
                            </label>
                        </li>
                    </ul>
                    <div class="typeErrorWrap"></div>
                    <p class="tips">* 다중선택 가능</p>
                </div>
            </article>
            <article class="placeDuration">
                <div class="titleArea">
                    <h4>대관가능 시간</h4>
                </div>
                <div class="editArea">
                    <select class="form-control" id="exampleFormControlSelect1" name="start_time" style="width: 180px; height: 38px; background-color: white; color: black;display: inline;" >
                         <option value="00:00">0시 00분</option>
                              <option value="00:30">0시 30분</option>
                              <option value="01:00">1시 00분</option>
                              <option value="01:30">1시 30분</option>
                              <option value="02:00">2시 00분</option>
                              <option value="02:30">2시 30분</option>
                              <option value="03:00">3시 00분</option>
                              <option value="03:30">3시 30분</option>
                              <option value="04:00">4시 00분</option>
                              <option value="04:30">4시 30분</option>
                              <option value="05:00">5시 00분</option>
                              <option value="05:30">5시 30분</option>
                              <option value="06:00">6시 00분</option>
                              <option value="06:30">6시 30분</option>
                              <option value="07:00">7시 00분</option>
                              <option value="07:30">7시 30분</option>
                              <option value="08:00">8시 00분</option>
                              <option value="08:30">8시 30분</option>
                              <option value="09:00">9시 00분</option>
                              <option value="09:30">9시 30분</option>
                              <option value="10:00" selected="selected">10시 00분</option>
                              <option value="10:30">10시 30분</option>
                              <option value="11:00">11시 00분</option>
                              <option value="11:30">11시 30분</option>
                              <option value="12:00">12시 00분</option>
                              <option value="12:30">12시 30분</option>
                              <option value="13:00">13시 00분</option>
                              <option value="13:30">13시 30분</option>
                              <option value="14:00">14시 00분</option>
                              <option value="14:30">14시 30분</option>
                              <option value="15:00">15시 00분</option>
                              <option value="15:30">15시 30분</option>
                              <option value="16:00">16시 00분</option>
                              <option value="16:30">16시 30분</option>
                              <option value="17:00">17시 00분</option>
                              <option value="17:30">17시 30분</option>
                              <option value="18:00">18시 00분</option>
                              <option value="18:30">18시 30분</option>
                              <option value="19:00">19시 00분</option>
                              <option value="19:30">19시 30분</option>
                              <option value="20:00">20시 00분</option>
                              <option value="20:30">20시 30분</option>
                              <option value="21:00">21시 00분</option>
                              <option value="21:30">21시 30분</option>
                              <option value="22:00">22시 00분</option>
                              <option value="22:30">22시 30분</option>
                              <option value="23:00">23시 00분</option>
                              <option value="23:30">23시 30분</option>
                       </select>
                            ~
                            <select class="form-control" id="exampleFormControlSelect1" name="end_time" style="width: 180px; height: 38px; background-color: white; color: black;display: inline;">
                        	  <option value="00:00">0시 00분</option>
                              <option value="00:30">0시 30분</option>
                              <option value="01:00">1시 00분</option>
                              <option value="01:30">1시 30분</option>
                              <option value="02:00">2시 00분</option>
                              <option value="02:30">2시 30분</option>
                              <option value="03:00">3시 00분</option>
                              <option value="03:30">3시 30분</option>
                              <option value="04:00">4시 00분</option>
                              <option value="04:30">4시 30분</option>
                              <option value="05:00">5시 00분</option>
                              <option value="05:30">5시 30분</option>
                              <option value="06:00">6시 00분</option>
                              <option value="06:30">6시 30분</option>
                              <option value="07:00">7시 00분</option>
                              <option value="07:30">7시 30분</option>
                              <option value="08:00">8시 00분</option>
                              <option value="08:30">8시 30분</option>
                              <option value="09:00">9시 00분</option>
                              <option value="09:30">9시 30분</option>
                              <option value="10:00" selected="selected">10시 00분</option>
                              <option value="10:30">10시 30분</option>
                              <option value="11:00">11시 00분</option>
                              <option value="11:30">11시 30분</option>
                              <option value="12:00">12시 00분</option>
                              <option value="12:30">12시 30분</option>
                              <option value="13:00">13시 00분</option>
                              <option value="13:30">13시 30분</option>
                              <option value="14:00">14시 00분</option>
                              <option value="14:30">14시 30분</option>
                              <option value="15:00">15시 00분</option>
                              <option value="15:30">15시 30분</option>
                              <option value="16:00">16시 00분</option>
                              <option value="16:30">16시 30분</option>
                              <option value="17:00">17시 00분</option>
                              <option value="17:30">17시 30분</option>
                              <option value="18:00">18시 00분</option>
                              <option value="18:30">18시 30분</option>
                              <option value="19:00">19시 00분</option>
                              <option value="19:30">19시 30분</option>
                              <option value="20:00">20시 00분</option>
                              <option value="20:30">20시 30분</option>
                              <option value="21:00">21시 00분</option>
                              <option value="21:30">21시 30분</option>
                              <option value="22:00">22시 00분</option>
                              <option value="22:30">22시 30분</option>
                              <option value="23:00">23시 00분</option>
                              <option value="23:30">23시 30분</option>
                       </select>
                    <div class="durationErrorWrap"></div>
                </div>
            </article>
            <article class="placeDays">
                <div class="titleArea">
                    <h4>대관가능 요일</h4>
                </div>
                <div class="editArea">
                    <ul class="dayList">
                        <li>
                            <label>
                                <input type="checkbox" value="월" name="days" data-parsley-required="true"
                                    data-parsley-class-handler=".dayList"
                                    data-parsley-errors-container=".daysErrorWrap"
                                    data-parsley-error-message="대관가능 요일을 선택해 주세요" data-parsley-multiple="days">
                                <span>월</span>
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" value="화" name="days" data-parsley-required="true"
                                    data-parsley-class-handler=".dayList"
                                    data-parsley-errors-container=".daysErrorWrap"
                                    data-parsley-error-message="대관가능 요일을 선택해 주세요" data-parsley-multiple="days">
                                <span>화</span>
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" value="수" name="days" data-parsley-required="true"
                                    data-parsley-class-handler=".dayList"
                                    data-parsley-errors-container=".daysErrorWrap"
                                    data-parsley-error-message="대관가능 요일을 선택해 주세요" data-parsley-multiple="days">
                                <span>수</span>
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" value="목" name="days" data-parsley-required="true"
                                    data-parsley-class-handler=".dayList"
                                    data-parsley-errors-container=".daysErrorWrap"
                                    data-parsley-error-message="대관가능 요일을 선택해 주세요" data-parsley-multiple="days">
                                <span>목</span>
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" value="금" name="days" data-parsley-required="true"
                                    data-parsley-class-handler=".dayList"
                                    data-parsley-errors-container=".daysErrorWrap"
                                    data-parsley-error-message="대관가능 요일을 선택해 주세요" data-parsley-multiple="days">
                                <span>금</span>
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" value="토" name="days" data-parsley-required="true"
                                    data-parsley-class-handler=".dayList"
                                    data-parsley-errors-container=".daysErrorWrap"
                                    data-parsley-error-message="대관가능 요일을 선택해 주세요" data-parsley-multiple="days">
                                <span>토</span>
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" value="일" name="days" data-parsley-required="true"
                                    data-parsley-class-handler=".dayList"
                                    data-parsley-errors-container=".daysErrorWrap"
                                    data-parsley-error-message="대관가능 요일을 선택해 주세요" data-parsley-multiple="days">
                                <span>일</span>
                            </label>
                        </li>
                    </ul>
                    <div class="daysErrorWrap"></div>
                    <p class="tips">* 대관가능 요일 다중 선택</p>
                </div>
            </article>
            <article class="placeFacility">
                <div class="titleArea">
                    <h4>편의시설</h4>
                </div>
                <div class="editArea">
                    <ul class="facilityList">
                        <li>
                            <label>
                                <input type="checkbox" class="facilityCheck" name="opt" value="1"
                                    data-parsley-required="true" data-parsley-class-handler=".facilityList"
                                    data-parsley-errors-container=".facilityErrorWrap"
                                    data-parsley-error-message="편의시설을 선택해 주세요" data-parsley-multiple="opt">
                                <span class="facility1"
                                    style="background-image: url('assets/img/icon/facilityIcon1.png')"></span>
                            </label>
                            <p>TV/프로젝터</p>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" class="facilityCheck" name="opt" value="2"
                                    data-parsley-required="true" data-parsley-class-handler=".facilityList"
                                    data-parsley-errors-container=".facilityErrorWrap"
                                    data-parsley-error-message="편의시설을 선택해 주세요" data-parsley-multiple="opt">
                                <span class="facility2"
                                    style="background-image: url('assets/img/icon/facilityIcon2.png')"></span>
                            </label>
                            <p>인터넷/WiFi</p>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" class="facilityCheck" name="opt" value="3"
                                    data-parsley-required="true" data-parsley-class-handler=".facilityList"
                                    data-parsley-errors-container=".facilityErrorWrap"
                                    data-parsley-error-message="편의시설을 선택해 주세요" data-parsley-multiple="opt">
                                <span class="facility3"
                                    style="background-image: url('assets/img/icon/facilityIcon3.png')"></span>
                            </label>
                            <p>복사/인쇄기</p>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" class="facilityCheck" name="opt" value="4"
                                    data-parsley-required="true" data-parsley-class-handler=".facilityList"
                                    data-parsley-errors-container=".facilityErrorWrap"
                                    data-parsley-error-message="편의시설을 선택해 주세요" data-parsley-multiple="opt">
                                <span class="facility4"
                                    style="background-image: url('assets/img/icon/facilityIcon4.png')"></span>
                            </label>
                            <p>화이트보드</p>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" class="facilityCheck" name="opt" value="5"
                                    data-parsley-required="true" data-parsley-class-handler=".facilityList"
                                    data-parsley-errors-container=".facilityErrorWrap"
                                    data-parsley-error-message="편의시설을 선택해 주세요" data-parsley-multiple="opt">
                                <span class="facility5"
                                    style="background-image: url('assets/img/icon/facilityIcon5.png')"></span>
                            </label>
                            <p>음향/마이크</p>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" class="facilityCheck" name="opt[]" value="6"
                                    data-parsley-required="true" data-parsley-class-handler=".facilityList"
                                    data-parsley-errors-container=".facilityErrorWrap"
                                    data-parsley-error-message="편의시설을 선택해 주세요" data-parsley-multiple="opt">
                                <span class="facility6"
                                    style="background-image: url('assets/img/icon/facilityIcon6.png')"></span>
                            </label>
                            <p>취사시설</p>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" class="facilityCheck" name="opt" value="7"
                                    data-parsley-required="true" data-parsley-class-handler=".facilityList"
                                    data-parsley-errors-container=".facilityErrorWrap"
                                    data-parsley-error-message="편의시설을 선택해 주세요" data-parsley-multiple="opt">
                                <span class="facility7"
                                    style="background-image: url('assets/img/icon/facilityIcon7.png')"></span>
                            </label>
                            <p>음식물반입가능</p>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" class="facilityCheck" name="opt" value="8"
                                    data-parsley-required="true" data-parsley-class-handler=".facilityList"
                                    data-parsley-errors-container=".facilityErrorWrap"
                                    data-parsley-error-message="편의시설을 선택해 주세요" data-parsley-multiple="opt">
                                <span class="facility8"
                                    style="background-image: url('assets/img/icon/facilityIcon8.png')"></span>
                            </label>
                            <p>주류반입가능</p>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" class="facilityCheck" name="opt" value="9"
                                    data-parsley-required="true" data-parsley-class-handler=".facilityList"
                                    data-parsley-errors-container=".facilityErrorWrap"
                                    data-parsley-error-message="편의시설을 선택해 주세요" data-parsley-multiple="opt">
                                <span class="facility9"
                                    style="background-image: url('assets/img/icon/facilityIcon9.png')"></span>
                            </label>
                            <p>샤워시설</p>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" class="facilityCheck" name="opt" value="10"
                                    data-parsley-required="true" data-parsley-class-handler=".facilityList"
                                    data-parsley-errors-container=".facilityErrorWrap"
                                    data-parsley-error-message="편의시설을 선택해 주세요" data-parsley-multiple="opt">
                                <span class="facility10"
                                    style="background-image: url('assets/img/icon/facilityIcon10.png')"></span>
                            </label>
                            <p>주차가능</p>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" class="facilityCheck" name="opt" value="11"
                                    data-parsley-required="true" data-parsley-class-handler=".facilityList"
                                    data-parsley-errors-container=".facilityErrorWrap"
                                    data-parsley-error-message="편의시설을 선택해 주세요" data-parsley-multiple="opt">
                                <span class="facility11"
                                    style="background-image: url('assets/img/icon/facilityIcon11.png')"></span>
                            </label>
                            <p>금연</p>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" class="facilityCheck" name="opt" value="12"
                                    data-parsley-required="true" data-parsley-class-handler=".facilityList"
                                    data-parsley-errors-container=".facilityErrorWrap"
                                    data-parsley-error-message="편의시설을 선택해 주세요" data-parsley-multiple="opt">
                                <span class="facility12"
                                    style="background-image: url('assets/img/icon/facilityIcon12.png')"></span>
                            </label>
                            <p>반려동물동반가능</p>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" class="facilityCheck" name="opt[]" value="13"
                                    data-parsley-required="true" data-parsley-class-handler=".facilityList"
                                    data-parsley-errors-container=".facilityErrorWrap"
                                    data-parsley-error-message="편의시설을 선택해 주세요" data-parsley-multiple="opt">
                                <span class="facility13"
                                    style="background-image: url('assets/img/icon/facilityIcon13.png')"></span>
                            </label>
                            <p>PC/노트북</p>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" class="facilityCheck" name="opt" value="14"
                                    data-parsley-required="true" data-parsley-class-handler=".facilityList"
                                    data-parsley-errors-container=".facilityErrorWrap"
                                    data-parsley-error-message="편의시설을 선택해 주세요" data-parsley-multiple="opt">
                                <span class="facility14"
                                    style="background-image: url('assets/img/icon/facilityIcon14.png')"></span>
                            </label>
                            <p>의자/테이블</p>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" class="facilityCheck" name="opt" value="15"
                                    data-parsley-required="true" data-parsley-class-handler=".facilityList"
                                    data-parsley-errors-container=".facilityErrorWrap"
                                    data-parsley-error-message="편의시설을 선택해 주세요" data-parsley-multiple="opt">
                                <span class="facility15"
                                    style="background-image: url('assets/img/icon/facilityIcon15.png')"></span>
                            </label>
                            <p>내부화장실</p>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" class="facilityCheck" name="opt" value="16"
                                    data-parsley-required="true" data-parsley-class-handler=".facilityList"
                                    data-parsley-errors-container=".facilityErrorWrap"
                                    data-parsley-error-message="편의시설을 선택해 주세요" data-parsley-multiple="opt">
                                <span class="facility16"
                                    style="background-image: url('assets/img/icon/facilityIcon16.png')"></span>
                            </label>
                            <p>남여화장실분리</p>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" class="facilityCheck" name="opt" value="17"
                                    data-parsley-required="true" data-parsley-class-handler=".facilityList"
                                    data-parsley-errors-container=".facilityErrorWrap"
                                    data-parsley-error-message="편의시설을 선택해 주세요" data-parsley-multiple="opt">
                                <span class="facility17"
                                    style="background-image: url('assets/img/icon/facilityIcon17.png')"></span>
                            </label>
                            <p>남여공용화장실</p>
                        </li>
                    </ul>
                    <div class="facilityErrorWrap"></div>
                </div>
            </article>
        </div>
        <div class="formBox">
            <article class="placePrice">
                <div class="titleArea">
                    <h4>시간별 금액설정<br>(시간 단위 / 1시간)</h4>
                </div>
                <div class="editArea">
                    <div class="priceInput priceBasic">
                        <input type="text" class="priceInputLength" value="0" style="display: none" 
                            data-parsley-required="true" data-parsley-min="1"
                            data-parsley-class-handler=".priceBasic" data-parsley-errors-container=".priceErrorWrap"
                            data-parsley-error-message="시간별 대관 가격과 수용가능 인원을 추가해 주세요">
                        <input type="text" class="price" placeholder="대관 가격" name="price">
                        <span class="txt">원</span>
                        <input type="text" class="placeSpace" placeholder="공간명 입력 / 예) 라운지 홀, 회의실 A, 1층 파티룸" name="placeSpace">
                        <input type="text" class="people" placeholder="인원수" name="peoplecount">
                        <span class="txt">인</span>
                    </div>
                    <div class="priceErrorWrap"></div>
                    <p class="tips">* 금액, 공간명, 인원수 모두 입력</p>
                </div>
            </article>
      		<article class="placePhoneNumber">
                <div class="titleArea">
                    <h4>한줄 소개</h4>
                </div>
                <div class="editArea">
                    <input type="text" name="contact" placeholder="간단한 소개를 입력해 주세요"
                        data-parsley-required="true" data-parsley-error-message="간단한 소개를 입력해 주세요">
                </div>
            </article>
            <article class="placeIntro">
                <div class="titleArea">
                    <h4>소개</h4>
                </div>
                <div class="editArea">
                    <textarea name="content" class="introText"
                        placeholder="ROOM9를 이용하는 분들을 위해 자세히 소개해 주세요 / 500자 이내 입력" maxlength="500"
                        data-parsley-required="true" data-parsley-errors-container=".introErrorWrap"
                        data-parsley-error-message="ROOM9를 자세히 소개해 주세요"></textarea>
                    <div class="introErrorWrap"></div>
                </div>
            </article>
            <article class="placeTag">
                <div class="titleArea">
                    <h4>태그 입력</h4>
                </div>
                <div class="editArea">
                    <span class="txt">#</span>
                    <input type="text" name="tag_1" data-parsley-required="true" data-parsley-group="tag"
                        data-parsley-class-handler=".placeTag" data-parsley-errors-container=".tagErrorWrap"
                        data-parsley-error-message="태그를 입력해 주세요">
                    <span class="txt">#</span>
                    <input type="text" name="tag_2">
                    <span class="txt">#</span>
                    <input type="text" name="tag_3">
                    <div class="tagErrorWrap"></div>
                    <p class="tips">* 최대 3개 등록 (예 #서울, #세미나, #송년회)</p>
                    <p class="tips">* 첫 태그는 지역을 적어주세요 (예 서울/경기/충청/경상/강원/전라)</p>
                </div>
            </article>
            <article class="placeRefund">
                <div class="titleArea">
                    <h4>안내 및 주의사항</h4>
                </div>
                <div class="editArea">
                    <textarea name="warning" placeholder="안내 및 주의사항을 입력해 주세요" data-parsley-required="true"
                        data-parsley-error-message="안내 및 주의사항을 입력해 주세요"></textarea>
                </div>
            </article>
        </div>
        <div class="formBox">
            <article class="placePhoneNumber">
                <div class="titleArea">
                    <h4>문의처</h4>
                </div>
                <div class="editArea">
                    <input type="text" name="warning_tel" placeholder="사용자와 소통 가능한 연락처를 입력해 주세요"
                        data-parsley-required="true" data-parsley-error-message="문의 연락처를 입력해 주세요">
                </div>
            </article>
            <article class="placeRefund">
                <div class="titleArea">
                    <h4>환불기준</h4>
                </div>
                <div class="editArea">
                    <textarea name="refund" placeholder="환불 정책을 입력해 주세요" data-parsley-required="true"
                        data-parsley-error-message="환불 기준이 되는 정책을 입력해 주세요"></textarea>
                </div>
            </article>
        </div>

        <article class="btnArea">
            <input type="submit" class="btn add" value="등록하기">
        </article>
    </form>
</section>


