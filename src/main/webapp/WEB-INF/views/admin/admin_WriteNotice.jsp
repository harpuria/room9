<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href=<c:url value="assets/css/styles.css"/> rel="stylesheet" />
<link href=<c:url value="assets/css/add.css"/> rel="stylesheet" />
<link href=<c:url value="assets/css/common.css"/> rel="stylesheet" />
<link href=<c:url value="assets/css/formcommon.css"/> rel="stylesheet" />    

<section class="content" style="padding: 78px 30px 30px 280px;">
    <h1>공지사항 작성</h1>
		<form class="form-horizontal" method="post"
			action="<c:url value='/notice_WriteOK.room9'/>">
	        <div class="formBox" style="border-bottom:none">
	        	<article class="placePhoneNumber">
	                <div class="titleArea">
	                    <h4>카테고리</h4>
	                </div>
	                <div class="editArea">
	                    <input type="text" value="[공지사항]" name="r_category" placeholder="공지사항"
	                        data-parsley-required="true" data-parsley-error-message="간단한 소개를 입력해 주세요">
	                </div>
	            </article>
	      		<article class="placePhoneNumber">
	                <div class="titleArea">
	                    <h4>제목</h4>
	                </div>
	                <div class="editArea">
	                    <input type="text" name="r_title" placeholder="공지사항"
	                        data-parsley-required="true" data-parsley-error-message="간단한 소개를 입력해 주세요">
	                </div>
	            </article>
	            <article class="placeIntro">
	                <div class="titleArea">
	                    <h4>내용</h4>
	                </div>
	                <div class="editArea">
	                    <textarea name="r_content" class="introText"
	                        placeholder="ROOM9공지사항 / 500자 이내 입력" maxlength="500"
	                        data-parsley-required="true" data-parsley-errors-container=".introErrorWrap"
	                        data-parsley-error-message="ROOM9공지사항"></textarea>
	                    <div class="introErrorWrap"></div>
	                </div>
	            </article>
				<article class="btnArea">
					<input type="submit" class="btn add" value="등록하기">
				</article>
			</div>
		</form>
    </section>