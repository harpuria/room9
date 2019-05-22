<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<link href="<c:url value='/assets/css/styles.css' />" rel="stylesheet" />
<link href="<c:url value='/assets/css/host.css' />" rel="stylesheet" />
<link href="<c:url value='/assets/css/common.css' />" rel="stylesheet" />
<link href="<c:url value='/assets/css/formcommon.css' />" rel="stylesheet" />
<link href="<c:url value='/assets/css/jquery.ui.selectmenu.css' />" rel="stylesheet" />


<style>
p.result {padding-top: 1.5%;}
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



<div id="app">
       <div class="topSkin web">
           <div class="skin" style="background-image: url('resources/img/Notice.png')"></div>
        <h2 class="skinTitle">공지사항</h2>
    </div>
    <section class="content">
        <h3 class="mainTitle">상세보기</h3>
        <form action="<c:url value='/notice.room9'/>" method="POST" class="hostForm" enctype="multipart/form-data"
            data-parsley-validate="true" novalidate="">
            <input type="hidden" name="_token" value="">
            <div class="formBox">
                <article class="placeHostName">
                    <div class="titleArea">
                        <h4>제목</h4>
                    </div>
                    <div class="editArea">
                       <p class="result">${record.r_title }</p>
                    </div>
                </article>
                <article class="placePayInfo">
                    <div class="titleArea">
                        <h4>내용</h4>
                    </div>
                    <div class="editArea">
                        <p class="result">${record.r_content }</p>
                    </div>
     	           </article>
            </div>
            <article class="btnArea">
                <input type="submit" class="submitBtn" value="목록">
            </article>
        </form>
    </section>
</div>

<script>
new WOW().init();
</script>