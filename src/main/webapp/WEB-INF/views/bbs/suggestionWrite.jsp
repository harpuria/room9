<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 섬머노트 -->
<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

<!-- 실제 내용 시작 -->
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<form class="form-horizontal" action="<c:url value='/WriteProcess.room9'/>">
				<div class="form-group">
					<label for="title" class="col-sm-2 control-label">제목</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력하세요" />
					</div>
				</div>
				<div class="form-group">
					<label for="name" class="col-sm-2 control-label">이름</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="name" id="name" placeholder="이름을 입력하세요" />
					</div>
				</div>
				<div class="form-group">
					<label for="content" class="col-sm-2 control-label">내용</label>
					<div class="col-sm-5">
						<textarea class="summernote" id="content" name="content"></textarea>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="submit" class="btn btn-info" value="등록" />
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<!-- container -->

<script>
  $('.summernote').summernote({
	  height: 300,
	  focus: true,
	  lang : 'ko-KR',
	  placeholder:"본문 내용을 입력해 주세요"
  }); 
</script>

<!-- 실제 내용 끝 -->