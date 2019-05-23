<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 실제 내용 시작 -->
<div class="container">
	<div class="page-header">
		<h1>
			한줄댓글 게시판<small>목록 페이지</small>
		</h1>
	</div>

	<div class="row" style="margin-bottom: 10px">
		<div class="col-md-12 text-right">
			<a href="<c:url value='/OneMemo/Memo/Write.bbs'/>"
				class="btn btn-success">등록</a>
		</div>
	</div>
	<div class="row">
		<!-- 테이블 전체 가로폭은 테이블을 감싸는  div에 col-*-*로 조정 -->
		<div class="col-md-12">
			<table class="table table-hover table-bordered text-center">
				<tr>
					<!-- 각 컬럼의 폭은 <td>계열에 class="col-*-*"추가 -->
					<th class="col-md-1 text-center">번호</th>
					<th class="text-center">제목</th>
					<th class="col-md-2 text-center">작성자</th>
					<th class="col-md-2 text-center">등록일</th>
				</tr>
				<c:if test="${empty list }" var="isEmpty">
					<tr>
						<td colspan="4">등록된 게시물이 없어요</td>
					</tr>
				</c:if>
				<c:if test="${not isEmpty }">
					<c:forEach var="item" items="${list}" varStatus="loop">
						<tr>
							<td>${totalRecordCount - (((nowPage - 1) * pageSize) + loop.index)}</td>
							<td class="text-left">
							<a href="<c:url value='/OneMemo/Memo/View.bbs?no=${item.no}'/>">${item.title}</a>
							<span class="badge">${item.commentCount}</span>
								
							</td>
							<td>${item.name}</td>
							<td>${item.postdate}</td>
						</tr>
					</c:forEach>
				</c:if>

			</table>
		</div>
	</div>
	<!-- 페이징 -->
	<div class="row">
		<!-- 페이지네이션 가운데 배치:text-center -->
		<div class="col-md-12 text-center">${pagingString}</div>
	</div>
	<!-- 검색용 UI -->
	<div class="row">
		<div class="text-center">
			<form class="form-inline" method="post"
				action="<c:url value='/OneMemo/Memo/List.bbs'/>">
				<div class="form-group">
					<select name="searchColumn" class="form-control">
						<option value="title">제목</option>
						<option value="name">작성자</option>
						<option value="content">내용</option>
					</select>
				</div>
				<div class="form-group">
					<input type="text" name="searchWord" class="form-control" />
				</div>
				<button type="submit" class="btn btn-primary">검색</button>

			</form>
		</div>
	</div>
</div>
<!-- container -->
<!-- 실제 내용 끝 -->
