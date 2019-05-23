<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="<c:url value='/assets/css/styles.css' />" rel="stylesheet" />
<link href="<c:url value='/assets/css/add.css' />" rel="stylesheet" />
<link href="<c:url value='/assets/css/common.css' />" rel="stylesheet" />
<link href="<c:url value='/assets/css/formcommon.css' />" rel="stylesheet" /> 

<style>
p.result {padding-top: 1.5%;}
</style>

<div id="app">
   <section class="content" style="padding: 78px 30px 30px 280px;">
       <h3 class="mainTitle">상세보기</h3>
       <form action="#" method="POST" class="hostForm" enctype="multipart/form-data"
           data-parsley-validate="true" novalidate="">
           <input type="hidden" name="_token" value="">
           <div class="formBox" style="">
               <article class="placeHostName">
                   <div class="titleArea">
                       <h4>제목</h4>
                   </div>
                   <div class="editArea">
                      <p class="result">${record.r_title}</p>
                   </div>
               </article>
               <article class="placePayInfo">
                   <div class="titleArea">
                       <h4>내용</h4>
                   </div>
                   <div class="editArea">
                       <p class="result" style="padding-bottom: 1.5%">${record.r_content}</p>
                   </div>
               </article>
           </div>
           <div class="col-md-12 text-center" style="padding-top:10%">
		       <button type="button" onclick="location.href='<c:url value='/admin_notice.room9'/>'" class="btn btn-primary">목록</button>
		       <button type="button" onclick="location.href='<c:url value='/admin_UpdateNotice.room9?no=${record.no}'/>'" class="btn btn-primary">수정</button>
		       <button type="button" onclick="location.href='javascript:isDelete()'" class="btn btn-primary">삭제</button>
	       </div>
       </form>
   </section>
</div>
<script>
	var isDelete = function() {
		if (confirm("정말로 삭제 하시겠습니까?")) {
			location.replace("<c:url value='/admin_DeleteNotice.room9?no=${record.no}'/>");
		}
	}
</script>