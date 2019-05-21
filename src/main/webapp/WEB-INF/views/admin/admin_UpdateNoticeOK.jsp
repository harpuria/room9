<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<section class="content" style="padding: 78px 30px 30px 280px;">
    <h1>공지사항 작성</h1>
		<form class="form-horizontal" method="post"
			action="<c:url value='/notice_EditOK.room9'/>">
			<input type="hidden" name="no" value="${record.no }" />
	        <div class="formBox" style="border-bottom:none">
	      		<article class="placePhoneNumber">
	                <div class="titleArea">
	                    <h4>제목</h4>
	                </div>
	                <div class="editArea">
	                    <input type="text" value="${record.r_title }" name="r_title" placeholder="공지사항"
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
	                        data-parsley-error-message="ROOM9공지사항">${record.r_content }</textarea>
	                    <div class="introErrorWrap"></div>
	                </div>
	            </article>
				<article class="btnArea">
					<input type="submit" class="btn add" value="수정하기">
					
				</article>
			</div>
		</form>
    </section>
<script>
	var isUpdate = function() {
		if (confirm("수정 하시겠습니까?")) {
			location.replace("<c:url value='/admin_UpdateNoticeOK.room9?no=${record.no}'/>");
		}
	};
</script>