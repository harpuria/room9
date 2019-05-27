<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href=<c:url value="assets/css/styles.css"/> rel="stylesheet" />
<link href=<c:url value="assets/css/add.css"/> rel="stylesheet" />
<link href=<c:url value="assets/css/common.css"/> rel="stylesheet" />
<link href=<c:url value="assets/css/formcommon.css"/> rel="stylesheet" />    

<section class="content" style="padding: 78px 30px 30px 280px;">
   
		<form class="form-horizontal" method="post"
			action="<c:url value='/notice_WriteOK.room9'/>">
	        <div class="formBox" style="border-bottom:none;padding-top: 5%">
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
	                    <textarea name="r_content" class="introText summernote"
	                        placeholder="ROOM9공지사항 / 500자 이내 입력" maxlength="500"
	                        data-parsley-required="true" data-parsley-errors-container=".introErrorWrap"
	                        data-parsley-error-message="ROOM9공지사항"></textarea>
	                    <div class="introErrorWrap"></div>
	                </div>
	            </article>
				<div class="col-md-12 text-center"style="padding-top: 3%">
					<button type="submit" class="btn btn-primary">글쓰기</button>
					<button type="button" onclick="location.href='<c:url value='/admin_notice.room9'/>'" class="btn btn-primary">목록</button>
				</div>
			</div>
		</form>
    </section>