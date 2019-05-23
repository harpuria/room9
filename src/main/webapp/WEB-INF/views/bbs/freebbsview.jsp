<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style>
	.table th{
		text-align:center
	}
	
	.hihi{
	clear: both;
	}
	.hiru{
		display: block;
	}
	.hi li{float: left;margin-left:10px;}
</style>

<!-- 실제 내용 시작 -->
<div class="container">

		<h4>
			자유게시판 <small>상세보기 페이지</small>
		</h4>
	<div class="">
		<div class="col-md-offset-3 col-md-6 hiru">
			<table class="table table-bordered">
				<tr>
					<th class="col-md-2" scope="col" style="width: 100px;">글번호</th>
					<td>${cch.no}</td>
				</tr>
				<tr>
					<th class="col-md-2" scope="col" style="width: 100px;">제목</th>
					<td>${cch.title}</td>
				</tr>
				<tr>
					<th class="col-md-2" scope="col" style="width: 100px;">작성자</th>
					<td>${cch.m_name}</td>
				</tr>
				<tr>
					<th class="col-md-2" scope="col" style="width: 100px;">등록일</th>
					<td>${cch.postdate}</td>
				</tr>
				<tr>
					<th class="col-md-2" scope="col" style="width: 100px;">내용</th>
					<td >${cch.content}</td>
				</tr>
				
			</table>
		</div>
		
		
		<div class=" hihi">
			<div class="col-md-offset-2 col-md-8">

				<div class="text-center2">
					<ul id="pillMenu" class="nav nav-pills hi"
						style="display: inline-block">
<%-- 							<li><a href="<c:url value='/views/Edit.bbs?no=${record.no}'/>" class="btn btn-success">수정</a></li> --%>
							<li><a href="<c:url value='/freeEdit.room9?no=${cch.no}'/>" class="btn btn-success">수정</a></li>
							<li><a href="<c:url value='/freeDelete.room9?no=${cch.no}'/>" class="btn btn-success">삭제</a></li>
						<li><a href="<c:url value='/freeboard.room9'/>" class="btn btn-success">목록</a></li>
							
					</ul>
				</div>
			</div>
		</div>
	</div>

</div>


<!-- container -->
<!-- 실제 내용 끝 -->

<script>
// 	var isDelete = function() {
// 		if (confirm("정말로 삭제 하시겠습니까?")) {
// 			location
// 					.replace("<c:url value='/OneMemo/Memo/Delete.bbs?no=${record.no}'/>");
// 		}

// 	};
</script>
