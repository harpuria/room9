<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Room9</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
<link href="https://fonts.googleapis.com/css?family=Montserrat|Sunflower:300" rel="stylesheet">
<link href="<c:url value='/css/bootstrap.min.css'/>" rel="stylesheet" />
<link href="<c:url value='/css/paper-kit.css'/>" rel="stylesheet" />
<link href="<c:url value='/css/animate.min.css'/>" rel="stylesheet" />
<link href="<c:url value='/css/owl.carousel.min.css'/>" rel="stylesheet" />

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">

<script src="<c:url value='/js/wow.min.js' />"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<script src="<c:url value='/js/jquery-3.2.1.js'/>" type="text/javascript"></script>
<script src="<c:url value='/js/jquery-ui-1.12.1.custom.min.js'/>" type="text/javascript"></script>
<script src="<c:url value='/js/popper.js'/>" type="text/javascript"></script>
<script src="<c:url value='/js/bootstrap.min.js'/>" type="text/javascript"></script>
<script src="<c:url value='/js/bootstrap-switch.min.js'/>"></script>
<script src="<c:url value='/js/bootstrap-datetimepicker.min.js'/>"></script>
<script src="<c:url value='/js/nouislider.js'/>"></script>
<script src="<c:url value='/js/moment.min.js'/>"></script>
<script src="<c:url value='/js/paper-kit.js'/>"></script>
<script src="<c:url value='/js/owl.carousel.min.js'/>"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bae907e078c4dd929177071c5ed2263c&libraries=services,clusterer,drawing"></script>

</head>
<body>
	<!-- 탑메뉴 : 네비게이션 바 -->
	<tiles:insertAttribute name="Top"/>
	<!-- 바디 부분 -->
	<tiles:insertAttribute name="Body"/>
	<!-- 푸터 부분 -->
	<tiles:insertAttribute name="Footer"/>	
</body>
</html>