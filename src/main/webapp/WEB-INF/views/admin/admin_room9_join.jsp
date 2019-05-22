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
                    <!--
                <input type="submit" class="mapSearchBtn" value="검색"/>
                -->
                    <div class="mapArea" id="mapzone" data-lat="" data-lon="" data-key="wz8tkie1uh"
                        style="height: 300px; position: relative; overflow: hidden; background: url(&quot;https://ssl.pstatic.net/static/maps/mantle/1x/pattern_1.png&quot;) 0px 0px repeat transparent;">
                        <div
                            style="position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); z-index: 0; cursor: url(&quot;https://ssl.pstatic.net/static/maps/mantle/1x/openhand.cur&quot;), default;">
                            <div
                                style="position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); z-index: 0;">
                                <div
                                    style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 1; zoom: 1;">
                                    <div
                                        style="overflow: visible; width: 100%; height: 0px; position: absolute; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 1; user-select: none; zoom: 1;">
                                        <div
                                            style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 0px; height: 0px; overflow: visible; box-sizing: content-box !important;">
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: -227px; left: 342px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-161"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/9/418/365/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: 285px; left: 86px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-163"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/9/417/363/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: 29px; left: 342px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-164"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/9/418/364/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: 29px; left: 86px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-165"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/9/417/364/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: 285px; left: 342px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-166"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/9/418/363/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: -227px; left: 86px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-167"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/9/417/365/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: -227px; left: 598px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-168"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/9/419/365/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: 285px; left: -170px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-162"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/9/416/363/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: 29px; left: 598px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-169"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/9/419/364/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: 29px; left: -170px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-170"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/9/416/364/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: 285px; left: 598px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-171"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/9/419/363/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: -227px; left: -170px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-172"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/9/416/365/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                        </div>
                                    </div>
                                    <div
                                        style="overflow: visible; width: 100%; height: 0px; position: absolute; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 0; user-select: none; zoom: 1; display: none;">
                                        <div
                                            style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 0px; height: 0px; overflow: visible; box-sizing: content-box !important;">
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: 161px; left: 157px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: none; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-141"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/10/836/728/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: -95px; left: 157px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: none; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-142"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/10/836/729/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: 417px; left: 157px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: none; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-143"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/10/836/727/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: -351px; left: 157px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: none; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-144"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/10/836/730/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: -351px; left: 413px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: none; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-145"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/10/837/730/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: 417px; left: -99px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: none; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-146"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/10/835/727/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: -95px; left: 413px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: none; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-147"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/10/837/729/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: 161px; left: -99px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: none; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-148"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/10/835/728/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: 161px; left: 413px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: none; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-149"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/10/837/728/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: -95px; left: -99px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: none; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-150"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/10/835/729/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: 417px; left: 413px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: none; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-151"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/10/837/727/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: -351px; left: -99px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: none; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-152"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/10/835/730/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: -351px; left: 669px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: none; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-153"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/10/838/730/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: 417px; left: -355px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: none; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-154"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/10/834/727/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: -95px; left: 669px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: none; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-155"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/10/838/729/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: 161px; left: -355px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: none; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-156"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/10/834/728/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: 161px; left: 669px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: none; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-157"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/10/838/728/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: -95px; left: -355px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: none; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-158"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/10/834/729/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: 417px; left: 669px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: none; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-159"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/10/838/727/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                            <div draggable="false" unselectable="on"
                                                style="position: absolute; top: -351px; left: -355px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: none; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"
                                                data-ntranid="NTran-160"><img draggable="false" unselectable="on"
                                                    alt="" width="256" height="256"
                                                    src="https://simg.pstatic.net/onetile/get/201/0/0/10/834/730/bl_vc_bg/ol_vc_an"
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
                                            </div>
                                        </div>
                                    </div>
                                    <div
                                        style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 100;">
                                        <div
                                            style="overflow: visible; width: 100%; height: 0px; position: absolute; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 101;">
                                        </div>
                                        <div
                                            style="overflow: visible; width: 100%; height: 0px; position: absolute; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 103;">
                                            <div title=""
                                                style="position: absolute; overflow: hidden; box-sizing: content-box !important; cursor: inherit; z-index: 9; width: 34px; height: 37px; left: 443px; top: 114px;">
                                                <img draggable="false" unselectable="on"
                                                    src="/images/global/map_pin.png" alt=""
                                                    style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; position: absolute; cursor: pointer; width: 34px; height: 37px; left: 0px; top: 0px;">
                                            </div>
                                        </div>
                                        <div
                                            style="overflow: visible; width: 100%; height: 0px; position: absolute; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 106;">
                                        </div>
                                    </div>
                                </div>
                                <div
                                    style="position: absolute; display: none; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); background-color: rgb(255, 255, 255); z-index: 10000; opacity: 0.5;">
                                </div>
                            </div>
                        </div>
                        <div
                            style="position: absolute; z-index: 100; margin: 0px; padding: 0px; pointer-events: none; bottom: 0px; right: 0px;">
                            <div
                                style="border: 0px none; margin: 0px; padding: 0px; pointer-events: none; float: right; height: 21px;">
                                <div
                                    style="position: relative; width: 52px; height: 14px; margin: 0px 12px 7px 2px; overflow: hidden; pointer-events: auto;">
                                    <span
                                        style="display:block;margin:0;padding:0 4px;text-align:center;font-size:10px;line-height:11px;font-family:Helvetica,AppleSDGothicNeo-Light,nanumgothic,NanumGothic,&quot;나눔고딕&quot;,Dotum,&quot;돋움&quot;,sans-serif;font-weight:bold;color:#000;text-shadow:-1px 0 rgba(255, 255, 255, 0.3), 0 1px rgba(255, 255, 255, 0.3), 1px 0 rgba(255, 255, 255, 0.3), 0 -1px rgba(255, 255, 255, 0.3);">400m</span><img
                                        src="https://ssl.pstatic.net/static/maps/mantle/1x/scale-normal-b.png"
                                        width="44" height="4" alt=""
                                        style="position:absolute;left:4px;;bottom:0;z-index:2;display:block;width:44px;height:4px;overflow:hidden;margin:0;padding:0;border:0 none;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"><img
                                        src="https://ssl.pstatic.net/static/maps/mantle/1x/scale-normal-l.png"
                                        width="4" height="10" alt=""
                                        style="position:absolute;left:0;bottom:0;z-index:2;display:block;width:4px;height:10px;overflow:hidden;margin:0;padding:0;border:0 none;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"><img
                                        src="https://ssl.pstatic.net/static/maps/mantle/1x/scale-normal-r.png"
                                        width="4" height="10" alt=""
                                        style="position:absolute;right:0;bottom:0;z-index:2;display:block;width:4px;height:10px;overflow:hidden;margin:0;padding:0;border:0 none;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;">
                                </div>
                            </div>
                            <div
                                style="border: 0px none; margin: -1px 0px 0px; padding: 0px; pointer-events: none; float: right; height: 22px;">
                                <a href="https://ssl.pstatic.net/static/maps/mantle/notice/legal.html"
                                    target="_blank"
                                    style="display: block; width: 48px; height: 17px; overflow: hidden; margin: 0px 5px 5px 12px; pointer-events: auto;"><img
                                        src="https://ssl.pstatic.net/static/maps/mantle/1x/naver-normal-new.png"
                                        width="48" height="17" alt="NAVER"
                                        style="display:block;width:48px;height:17px;overflow:hidden;border:0 none;margin:0;padding:0;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"></a>
                            </div>
                        </div>
                        <div
                            style="position: absolute; z-index: 100; margin: 0px; padding: 0px; pointer-events: none; bottom: 0px; left: 0px;">
                            <div
                                style="border: 0px none; margin: 0px; padding: 0px; pointer-events: none; float: left; height: 21px;">
                                <div class="map_copyright"
                                    style="margin: 0px; padding: 0px 0px 2px 10px; height: 19px; line-height: 19px; color: rgb(68, 68, 68); font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; font-size: 11px; clear: both; white-space: nowrap; pointer-events: none;">
                                    <div style="float: left;"><span
                                            style="white-space: pre; color: rgb(68, 68, 68);">© NAVER Corp.</span>
                                    </div><a href="#"
                                        style="font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; font-size: 11px; line-height: 19px; margin: 0px 0px 0px 5px; padding: 0px; color: rgb(68, 68, 68); float: left; pointer-events: auto; text-decoration: underline; display: none;">더보기</a>
                                    <div style="float: left;"><a target="_blank"
                                            href="http://www.openstreetmap.org/copyright"
                                            style="pointer-events: auto; white-space: pre; display: none; color: rgb(68, 68, 68);">
                                            /OpenStreetMap</a></div>
                                </div>
                            </div>
                        </div>
                        <div
                            style="border: 1px solid rgb(41, 41, 48); background: rgb(255, 255, 255); padding: 15px; color: rgb(51, 51, 51); position: absolute; font-size: 11px; line-height: 1.5; clear: both; display: none; max-width: 350px !important; max-height: 300px !important;">
                            <h5 style="font-size: 12px; margin-top: 0px; margin-bottom: 10px;">지도 데이터</h5><a
                                href="#"
                                style="position: absolute; top: 8px; right: 8px; width: 14px; height: 14px; font-size: 14px; line-height: 14px; display: block; overflow: hidden; color: rgb(68, 68, 68); text-decoration: none; font-weight: bold; text-align: center;">╳</a>
                            <div><span style="white-space: pre; color: rgb(68, 68, 68); float: left;">© NAVER
                                    Corp.</span><a target="_blank" href="http://www.openstreetmap.org/copyright"
                                    style="pointer-events: auto; white-space: pre; color: rgb(68, 68, 68); float: left; display: none;">
                                    /OpenStreetMap</a></div>
                        </div>
                        <div
                            style="position: absolute; z-index: 100; margin: 0px; padding: 0px; pointer-events: none; top: 0px; left: 0px;">
                            <div
                                style="border: 0px none; margin: 0px; padding: 0px; pointer-events: none; float: left;">
                                <div style="position: relative; z-index: 9; margin: 10px; pointer-events: auto;">
                                    <ul
                                        style="position: relative; z-index: 1; padding: 0px; margin: 0px; list-style: none; display: block; height: 30px; box-sizing: content-box !important; border-right: 1px solid rgb(68, 68, 68);">
                                        <li
                                            style="position: relative; z-index: 1; float: left; display: block; margin: 0px; padding: 0px; list-style: none; border-width: 1px 0px 1px 1px; border-style: solid none solid solid; border-top-color: rgb(68, 68, 68); border-right-color: initial; border-bottom-color: rgb(68, 68, 68); border-left-color: rgb(68, 68, 68); border-image: initial; box-sizing: content-box !important;">
                                            <a href="#"
                                                style="margin: 0px; padding: 0px 7px; display: block; height: 26px; line-height: 26px; border: 1px solid rgb(42, 124, 221); background-color: rgb(47, 135, 236); text-decoration: none; color: rgb(255, 255, 255); font-size: 13px; letter-spacing: -1px; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; box-sizing: content-box !important;">일반</a>
                                        </li>
                                        <li
                                            style="position: relative; z-index: 1; float: left; display: block; margin: 0px; padding: 0px; list-style: none; border-width: 1px 0px 1px 1px; border-style: solid none solid solid; border-top-color: rgb(68, 68, 68); border-right-color: initial; border-bottom-color: rgb(68, 68, 68); border-left-color: rgb(68, 68, 68); border-image: initial; box-sizing: content-box !important;">
                                            <a href="#"
                                                style="margin: 0px; padding: 0px 7px; display: block; height: 26px; line-height: 26px; border: 1px solid rgb(255, 255, 255); background-color: rgb(255, 255, 255); text-decoration: none; color: rgb(0, 0, 0); font-size: 13px; letter-spacing: -1px; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; box-sizing: content-box !important;">위성</a>
                                        </li>
                                    </ul>
                                    <ul
                                        style="position: absolute; z-index: 1; padding: 0px; margin: 0px; list-style: none; display: none; height: 30px; left: 0px; width: 100%; box-sizing: content-box !important; top: 32px;">
                                        <li
                                            style="position: relative; z-index: 1; display: none; margin: 0px; padding: 0px; list-style: none; border: 1px solid rgb(68, 68, 68); box-sizing: content-box !important;">
                                            <a href="#"
                                                style="margin: 0px; padding: 0px 0px 0px 25px; display: block; height: 26px; line-height: 26px; border: 1px solid rgb(255, 255, 255); background-color: rgb(255, 255, 255); text-decoration: none; color: rgb(102, 102, 102); font-size: 13px; letter-spacing: -1px; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; box-sizing: content-box !important; position: relative;"
                                                title="지형도"><img
                                                    src="https://ssl.pstatic.net/static/maps/mantle/1x/maptype-unchecked.png"
                                                    width="13" height="13" alt=""
                                                    style="position:absolute;display:block;top:7px;left:7px;width:13px;height:13px;border:0 none;cursor:pointer;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"><span
                                                    style="display:block;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;margin:0;padding:0;color:#666;font-size:13px;letter-spacing:-1px;font-family:Helvetica,AppleSDGothicNeo-Light,nanumgothic,NanumGothic,&quot;나눔고딕&quot;,Dotum,&quot;돋움&quot;,sans-serif;">지형도</span></a>
                                        </li>
                                        <li
                                            style="position: relative; z-index: 1; display: none; margin: 0px; padding: 0px; list-style: none; border: 1px solid rgb(68, 68, 68); box-sizing: content-box !important;">
                                            <a href="#"
                                                style="margin: 0px; padding: 0px 0px 0px 25px; display: block; height: 26px; line-height: 26px; border: 1px solid rgb(255, 255, 255); background-color: rgb(255, 255, 255); text-decoration: none; color: rgb(102, 102, 102); font-size: 13px; letter-spacing: -1px; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; box-sizing: content-box !important; position: relative;"
                                                title="겹쳐보기"><img
                                                    src="https://ssl.pstatic.net/static/maps/mantle/1x/maptype-checked.png"
                                                    width="13" height="13" alt=""
                                                    style="position:absolute;display:block;top:7px;left:7px;width:13px;height:13px;border:0 none;cursor:pointer;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"><span
                                                    style="display:block;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;margin:0;padding:0;color:#666;font-size:13px;letter-spacing:-1px;font-family:Helvetica,AppleSDGothicNeo-Light,nanumgothic,NanumGothic,&quot;나눔고딕&quot;,Dotum,&quot;돋움&quot;,sans-serif;">겹쳐보기</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <ul id="ui-id-3" tabindex="0"
                        class="ui-menu ui-widget ui-widget-content ui-autocomplete ui-front"
                        style="display: none; position: relative; top: -359px; left: 0px; width: 712px;">
                        <li class="ui-menu-item">
                            <div id="ui-id-29" tabindex="-1" class="ui-menu-item-wrapper">[한국국토정보공사 서울시금천구청]서울특별시
                                금천구 시흥대로73길 70</div>
                        </li>
                        <li class="ui-menu-item">
                            <div id="ui-id-30" tabindex="-1" class="ui-menu-item-wrapper">[서울시 금천구청 보건소 전기차충전소]서울특별시
                                금천구 시흥대로73길 70</div>
                        </li>
                        <li class="ui-menu-item">
                            <div id="ui-id-31" tabindex="-1" class="ui-menu-item-wrapper">서울특별시 금천구</div>
                        </li>
                    </ul>
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
                        * 사진 권장사항 : 최대 10장, 사이즈 : 840 X 480픽셀(가로 X 세로), 용량 2MB 이하, 포맷 : Jpeg, gif, png<br>
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
                                <input type="checkbox" class="facilityCheck" name="opt value="1"
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


