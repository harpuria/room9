<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 실제 내용 시작 -->
<div class="container">
	<h1>
		한줄답변 게시판<small>글 등록페이지</small>
	</h1>

	<div class="row">
		<div class="col-md-12">
			<form class="form-horizontal" method="post" action="<c:url value='/freeWrite.room9'/>">
				<div class="form-group">
					<label for="title" class="col-sm-2 control-label">제목</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="title" id="title"
							placeholder="제목을 입력하세요" />
					</div>
				</div>
				<div class="form-group">
					<label for="m_content" class="col-sm-2 control-label">작성자</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="m_name" id="m_name"
							placeholder="작성자를 입력하세요" />
					</div>
				</div>
				<div class="form-group">
					<label for="content" class="col-sm-2 control-label">내용</label>
					<div class="col-sm-5">
						<textarea rows="10" id="content" name="content"
							class="form-control" placeholder="내용을 입력하세요"></textarea>
					</div>
				</div>
				<div class="row" style="margin-bottom: 10px">
					<div class="col-md-12 text-right">
						<button type="submit" >버튼</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<!-- container -->
<!-- 실제 내용 끝 -->