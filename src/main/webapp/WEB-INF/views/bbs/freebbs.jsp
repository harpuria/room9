<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="<c:url value='/css/open.css' />" rel="stylesheet" />
<link href="<c:url value='/css/main.css'/>" rel="stylesheet"a  />

<style>
	th{
	text-align: center;
	border-right: 1px solid #e9ecef;
	}
	td{
		font-weight: bold;
		border-right: 1px solid #e9ecef;
	}
	.topSkin {
  height: 300px;
  min-width: 1280px;
	}
	
.topSkin {
  display: block;
  position: relative;
  width: 100%;
  border-radius: 3px;
  background-color: #000000;
  overflow: hidden;
}
@media (max-width: 767px) {
  .topSkin.responsible {
    height: 120px;
  }
}
@media (min-width: 768px) and (max-width: 1279px) {
  .topSkin.responsible {
    height: 210px;
  }
}
@media (min-width: 1280px) {
  .topSkin.responsible {
    height: 300px;
    min-width: 1280px;
  }
}
.topSkin.web {
  height: 300px;
  min-width: 1280px;
}
.topSkin .skin {
  position: absolute;
  top: 0;
  left: 0;
  opacity: 0.6;
  background-repeat: no-repeat;
  background-position: center center;
}
@media (max-width: 767px) {
  .topSkin.responsible .skin {
    width: 100%;
    height: 120px;
  }
}
@media (min-width: 768px) and (max-width: 1279px) {
  .topSkin.responsible .skin {
    width: 100%;
    height: 210px;
  }
}
	@media (min-width: 1280px) {
	  .topSkin.responsible .skin {
	    width: 100%;
	    height: 300px;
	  }
	}
.topSkin.web .skin {
  width: 100%;
  height: 300px;
}
.topSkin .skinTitle {
  position: relative;
  line-height: normal;
  text-align: center;
}
@media (max-width: 767px) {
  .topSkin.responsible .skinTitle {
    margin-top: 48px;
    font-size: 20px;
    font-weight: bold;
    color: #ffffff;
  }
}
@media (min-width: 768px) and (max-width: 1279px) {
  .topSkin.responsible .skinTitle {
    margin-top: 88px;
    font-size: 28px;
    font-weight: bold;
    color: #ffffff;
  }
}
@media (min-width: 1280px) {
  .topSkin.responsible .skinTitle {
    margin-top: 126px;
    font-size: 36px;
    font-weight: bold;
    color: #ffffff;
  }
}
.topSkin.web .skinTitle {
  margin-top: 126px;
  font-size: 36px;
  font-weight: bold;
  color: #ffffff;
}
</style>


<div class="topSkin web">
    <div class="skin" style="background-image: url('resources/img/topback2.png')"></div>
    <h2 class="skinTitle">ROOM9 자유게시판</h2>
</div>
 <!-- 공지테이블 -->
<div style="height: 50px"></div>
<div class="container wow fadeInUp" data-wow-duration="1s" data-wow-delay=".5s">
<div class="row">
<div class="col-md-12 ">
			<div class="row" style="margin-bottom: 10px">
		<div class="col-md-12 text-right">
			<a href="<c:url value='/freeWrite.room9'/>" class="btn btn-success">등록</a>
		</div>
	</div>
	</div>
			
	<table class="table table-hover" style="text-align: center;margin-bottom:none">
		<thead class="" style="border-collapse:none">
			<tr style="background-color: gray;color:white;">
				<th class="col-md-2" scope="col" style="width: 100px;">글번호</th>
				<th class="col-md-2" scope="col" style="width: 500px;">제목</th>
				<th class="col-md-2" scope="col" style="width: 100px;">작성자</th>
				<th class="col-md-2" scope="col" style="width: 100px;">날짜</th>
			</tr>
		</thead>
		 <tbody style="color:black">
		 <c:forEach items="${list }" var="items">
			<tr>
				<td scope="row">${items.no }</td>
				<td><a href="<c:url value='/freeView.room9?no=${items.no}'/>" style="color:black;">${items.title}</a></td>
				<td>${items.m_name}</td>
				<td>${items.postdate}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>

</div>


</div></div>

<script>
new WOW().init();
</script>