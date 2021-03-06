<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
	var msgType = "${msgType}";
	switch(msgType){
	case "kakaoLoginFail":
		alert("${msg}");
		location.href = "<c:url value='/login.room9'/>";
		break;
		
	case "mailSendingComplete":
		alert("${msg}");
		location.href = "<c:url value='/login.room9'/>";
		break;
		
	case "mailSendingComplete_q":
		alert("${msg}");
		location.href = "<c:url value='/question.room9'/>";
		break;
		
	case "mailSendingFail":
		alert("${msg}");
		location.href = "<c:url value='/login.room9'/>";
		break;
		
	case "infoUpdateComplete":
		alert("${msg}");
		location.href = "<c:url value='/home.room9'/>";
		break;
		
	case "infoUpdateFail":
		alert("${msg}");
		location.href = "<c:url value='/UserInfo.room9?m_email=${sessionScope.emailid }'/>";
		break;
	}
	
</script>