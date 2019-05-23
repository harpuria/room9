<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- 실제 내용 시작 -->
<div class="container" >
		<h4><small><br>글 수정페이지</small></h4></br>
	<div class="row">
		<div class="col-md-12">
			<form method="post" action="<c:url value='/freeViewAfterEdit.room9?no=${cch.no }'/>">
				<input type="hidden" name="no" value="${cch.no }" />
				<div class="form-group">
					<label for="title" class="col-sm-2 control-label">제목</label>
					<div class="col-sm-5">
						<input value="${cch.title }" type="text" class="form-control"
							name="title" id="title" placeholder="제목을 입력하세요" />
					</div>
				</div>
				<div class="form-group">
					<label for="content" class="col-sm-2 control-label">내용</label>
					<div class="col-sm-5">
						<textarea rows="10" id="content" name="content"
							class="form-control" placeholder="내용을 입력하세요">${cch.content}</textarea>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="submit" value="수정">
<!-- 						<a href="" class="btn btn-success">수정</a> -->
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<!-- container -->
<!-- 실제 내용 끝 -->
