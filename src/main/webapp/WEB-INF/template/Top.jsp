<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<aside class="sidebar1-left-collapse">
	<a href="<c:url value='/home.room9' />" class="company-logo" style="margin-bottom: 20px;">
	<img src="<c:url value='/resources/img/room9logo_op.png'/>" style="width: 100%;" /></a>
    <div class="sidebar1-links">
        <div class="link-blue selected">
            <a href="<c:url value='/home.room9' />">
                <i class="fas fa-home fa-2x" style="color: #487db2"></i>&nbsp;&nbsp;MAIN
            </a>
        </div>
        
        <c:if test="${empty sessionScope.emailid }" var="isLogin">
	        <div class="link-login">
	            <a href="<c:url value='/login.room9'/>">
	                <i class="fas fa-sign-in-alt fa-2x" style="color: #006600"></i>&nbsp;&nbsp;LOGIN
	            </a>
	        </div>
        </c:if>
        
        <c:if test="${not isLogin }" >
	        <div class="link-logout">
	            <a href="<c:url value='/logout.room9' />">
	                <i class="fas fa-sign-out-alt fa-2x" style="color: #6666cc"></i>&nbsp;&nbsp;LOGOUT
	            </a>
	        </div>
	        
	        <div class="link-red">
            <a href="#">
                <i class="far fa-newspaper fa-2x" style="color: #da4545"></i>&nbsp;&nbsp;MY PAGE
            </a>

            <ul class="sub-links">
                <li><a href="<c:url value='/UserInfo.room9?m_email=${sessionScope.emailid }'/>">정보 수정</a></li>
                <li><a href="#">예약 확인</a></li>
            </ul>
        </div>
        </c:if>
        
        

        <div class="link-yellow">
            <a href="<c:url value='/open.room9'/>">
                <i class="far fa-building fa-2x" style="color: #d0d237"></i>&nbsp;&nbsp;ROOM 9
            </a>
        </div>
        
        <div class="link-purple">
            <a href="<c:url value='/host.room9'/>">
                <i class="fas fa-male fa-2x" style="color: #AC58FA; padding: 0 5px;"></i>&nbsp;&nbsp;HOST
            </a>
        </div>
        
        <div class="link-gray">
            <a href="#">
                <i class="fas fa-bullhorn fa-2x" style="color: #828282"></i>&nbsp;&nbsp;CONTACT
            </a>
            
            <ul class="sub-links">
                <li><a href="<c:url value='/notice.room9'/>">공지사항</a></li>
                <li><a href="<c:url value='/question.room9'/>">문의하기</a></li>
                <li><a href="<c:url value='/freeBbs.room9'/>">자유게시판</a></li>
            </ul>
        </div>
        
        <div class="link-green">
            <a href="<c:url value='/coalition.room9'/>">
                <i class="fas fa-handshake fa-2x" style="color: #86be2e"></i>&nbsp;&nbsp;COALITION
            </a>
        </div>
        
        <div class="link-ff">
            <a href="<c:url value='/admin_main.room9?h_no=${h_no }'/>">
                <i class="fas fa-chart-pie fa-2x" style="color: #FF00FF"></i>&nbsp;&nbsp;ADMIN
            </a>
        </div>
    </div>
</aside>
	
<style>
body {padding-left: 14%;}
@import url('https://fonts.googleapis.com/css?family=Open+Sans:400,700');
.menu {text-align: center;padding-top: 25px;margin-bottom: 200px;}
.menu .arrow {opacity: 0.4;}
.arrow.up,.arrow.down {display: none;margin: 20px 0;}
.menu h1 {margin-top: 0;font: normal 32px/1.5 'Open Sans', sans-serif;color: #3F71AE;padding-bottom: 16px;}
.menu h2 {color: #F05283;}
.menu h2 a {color: inherit;text-decoration: none;display: inline-block;border: 1px solid #F05283;padding: 10px 15px;border-radius: 3px;font: bold 14px/1 'Open Sans', sans-serif;text-transform: uppercase;}
.menu h2 a:hover {background-color: #F05283;transition: 0.2s;color: #fff;}
.menu ul {max-width: 600px;margin: 60px auto 0;}
.menu ul a {text-decoration: none;color: #FFF;text-align: left;background-color: #B9C1CA;padding: 10px 16px;border-radius: 2px;opacity: 0.8;font-size: 16px;display: inline-block;margin: 4px;line-height: 1;outline: none;transition: 0.2s ease;}
.menu ul li a.active {background-color: #66B650;pointer-events: none;}
.menu ul li a:hover {opacity: 1;}
.menu ul {list-style: none;padding: 0;}
.menu ul li {display: inline-block;}
@media (max-height:800px) {}
@media (max-width: 900px) {
	.menu {padding-top: 40px;margin-bottom: 80px;}
	.arrow.left,.arrow.right {display: none;}
	.arrow.up,.arrow.down {display: inline-block;}
	body {padding-left: 0;}
}
/* -- Demo ads -- */
@media (max-width: 1200px) {
	#bsaHolder {display: none;}
}
/* -- Link to Tutorialzine -- */
.tz-link {text-decoration: none;color: #fff !important;font: bold 36px Arial, Helvetica, sans-serif !important;}
.tz-link span {color: #da431c;}

/* The main content */
.main-content {font-family: Arial, Helvetica, sans-serif;max-width: 600px;padding-top: 40px;margin: 0 0 40px 260px;}
/* The left-collapsing sidebar */
.sidebar1-left-collapse {font-family: Arial, Helvetica, sans-serif;position: fixed;top: 0;left: 0;background-color: #292c2f;width: 14%;height: 100%;padding: 20px 0;z-index: 9999;}
.sidebar1-left-collapse > a {display: block;text-decoration: none;font-family: Cookie, cursive;width: 122px;height: 122px;margin: 0 auto;text-align: center;color: #ffffff;font-size: 44px;font-weight: normal;line-height: 2.6;border-radius: 50%;}
.sidebar1-left-collapse .sidebar-links {margin: 30px auto;}
.sidebar1-links div > a {display: block;text-decoration: none;margin: 0 auto 5px auto;padding: 10px 0 10px 5px;background-color: #35393e;text-align: left;color: #b3bcc5;font-size: 12px;font-weight: bold;line-height: 2;border-left-width: 2px;border-left-style: solid;}
.sidebar1-links div.selected > a {background-color: #ffffff;color: #565d63;line-height: 2.3;margin: 0;}
.sidebar1-links div > a i.fa {position: relative;font-size: 20px;top: 3px;width: 40px;text-align: center;}
.sidebar1-links div ul.sub-links {max-height: 0;overflow: hidden;list-style: none;padding: 0 0 0 30px;color: #b3bcc5;font-size: 12px;font-weight: bold;line-height: 24px;margin: 0;transition: 0.4s;}
.sidebar1-links div.selected ul.sub-links {max-height: 150px;padding: 12px 0 12px 30px;}
.sidebar1-links div .sub-links a {text-decoration: none;color: #b3bcc5;display: block;text-align: left;}
/* Link Colors */
.sidebar1-links div.link-blue > a {border-color: #487db2;}
.sidebar1-links div.link-blue > a i.fas {color: #487db2 !important;}
.sidebar1-links div.link-login > a {border-color: #006600;}
.sidebar1-links div.link-logout > a {border-color: #6666cc;}
.sidebar1-links div.link-red > a {border-color: #da4545;}
.sidebar1-links div.link-red > a i.far {color: #da4545 !important;}
.sidebar1-links div.link-yellow > a {border-color: #d0d237;}
.sidebar1-links div.link-yellow > a i.fas {color: #d0d237 !important;}
.sidebar1-links div.link-green > a {border-color: #86be2e;}
.sidebar1-links div.link-green > a i.far {color: #86be2e !important;}
.sidebar1-links div.link-gray > a {border-color: #828282;}
.sidebar1-links div.link-gray > a i.fas {color: #828282 !important;}
.sidebar1-links div.link-purple > a {border-color: #AC58FA;}
.sidebar1-links div.link-purple > a i.fas {color: #AC58FA !important;}
.sidebar1-links div.link-ff > a {border-color: #FF00FF;}
.sidebar1-links div.link-ff > a i.fas {color: #FF00FF !important;}

/* Making the sidebar responsive */
@media (max-width: 900px) {
	.main-content {max-width: none;padding: 70px 20px;margin: 0 0 40px;}
	.sidebar1-left-collapse {width: auto;height: auto;position: static;padding: 20px 0 0;}
	.sidebar1-left-collapse .sidebar-links {text-align: center;margin: 20px auto 0;padding-bottom: 50px;}
	.sidebar1-links div {display: inline-block;width: 100px;}
	.sidebar1-links div > a {text-align: center;margin: 0;padding: 10px 0;border-left: none;border-top-width: 2px;border-top-style: solid;}
	.sidebar1-links div > a i.far {display: block;margin: 0 auto 5px;}
	.sidebar1-links div > a i.fas {display: block;margin: 0 auto 5px;}
	.sidebar1-links div ul.sub-links {display: none;}
	.sidebar1-links div.selected .sub-links {display: block;position: absolute;text-align: center;width: auto;left: 0;right: 0;}
	.sidebar1-links div.selected .sub-links li {display: inline-block;}
	.sidebar1-links div.selected .sub-links a {display: inline-block;margin-right: 20px;font-size: 13px;color: #748290;}
}
/* Smartphone version */
@media (max-width: 450px) {
	.main-content {padding: 90px 20px;}
	.sidebar1-left-collapse {padding: 20px 0;}
	.sidebar1-left-collapse .sidebar-links {text-align: center;margin: 20px auto 0;position: relative;}
	.sidebar1-links div {display: block;width: 240px;margin: 0 auto 5px;}
	.sidebar1-links div > a {text-align: left;padding: 10px 25px;vertical-align: middle;border-top: none;border-left-width: 2px;border-left-style: solid;}
	.sidebar1-links div > a i.far {display: inline-block;font-size: 20px;width: 20px;margin: 0 20px 0 0;}
	.sidebar1-links div > a i.fas {display: inline-block;font-size: 20px;width: 20px;margin: 0 20px 0 0;}
	.sidebar1-links div.selected .sub-links {bottom: -90px;}
}
</style>
<script src="https://use.fontawesome.com/releases/v5.8.1/js/all.js" data-auto-replace-svg="nest"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">

<script>

var links = $('.sidebar1-links > div');

links.on('click', function() {
   links.removeClass('selected');
   $(this).addClass('selected');
});

var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();

(function() {
	var s1 = document.createElement("script"), s0 = document
			.getElementsByTagName("script")[0];
	s1.async = true;
	s1.src = 'https://embed.tawk.to/5cb5e1cfd6e05b735b42df79/default';
	s1.charset = 'UTF-8';
	s1.setAttribute('crossorigin', '*');
	s0.parentNode.insertBefore(s1, s0);
})();

Kakao.init('016468dc8f440427772427c119b7bc1d');

function addPlusFriend() {
    Kakao.PlusFriend.addFriend({
    	plusFriendId: '_bFUxkj' // 플러스친구 홈 URL에 명시된 id로 설정합니다.
    });
}

function plusFriendChat() {
    Kakao.PlusFriend.chat({
    	plusFriendId: '_bFUxkj/chat' // 플러스친구 홈 URL에 명시된 id로 설정합니다.
    });
}

</script>