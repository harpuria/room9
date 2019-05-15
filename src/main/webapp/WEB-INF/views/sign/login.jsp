<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="ko">
<head>
<title>Room9 Login</title>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<script src="<c:url value='/js/jquery-3.2.1.js'/>" type="text/javascript"></script>
<script src="<c:url value='/js/jquery-ui-1.12.1.custom.min.js'/>" type="text/javascript"></script>
<script src="<c:url value='/js/popper.js'/>" type="text/javascript"></script>
<script src="<c:url value='/js/bootstrap.min.js'/>" type="text/javascript"></script>
<script src="<c:url value='/js/bootstrap-switch.min.js'/>"></script>
<script src="<c:url value='/js/nouislider.js'/>"></script>
<script src="<c:url value='/js/moment.min.js'/>"></script>
<script src="<c:url value='/js/paper-kit.js'/>"></script>
<script src="<c:url value='/js/owl.carousel.min.js'/>"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
<link href="https://fonts.googleapis.com/css?family=Montserrat|Sunflower:300" rel="stylesheet">
<link href="<c:url value='/css/bootstrap.min.css' />" rel="stylesheet" />
<link href="<c:url value='/css/paper-kit.css' /> " rel="stylesheet" />
<link href="<c:url value='/css/animate.min.css' />" rel="stylesheet" />
<link href="<c:url value='/css/owl.carousel.min.css' />" rel="stylesheet" />
<link href="<c:url value='/css/login.css'/>" rel="stylesheet" />

<!-- 밸리데이션 -->
<script type="text/javascript" src="<c:url value='resources/validation/jquery.validate.js'/>"></script>
<script type="text/javascript" src="<c:url value='resources/validation/additional-methods.js'/>"></script>
<script type="text/javascript" src="<c:url value='resources/validation/messages_ko.min.js'/>"></script>
<!-- 밸리데이션 -->

<script src="assets/js/wow.min.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<link href="<c:url value='/css/login.css' />" rel="stylesheet" />

<style>
body {
	font-family: "HelveticaNeue-Light", "Helvetica Neue Light",
		"Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
	color: white;
	font-size: 12px;
	background: #333 url('resources/img/fabio.jpg');
	background-size: 100%;
	padding: 5%;
}

input.error, textarea.error {
	border: 1px solid red;
}

label.error {
	display: block;
	color: red;
}

.home {
	float: left;
	padding-top: 15px;
}

.top {
	padding-top: 15px;
}

.top ul {
	text-align: right;
}

.top ul li {
	display: inline-block;
	margin-right: 15px;
}

.signOn {
	background-color: white;
	border: 1px solid rgba(234, 234, 234);
	margin: 0 auto;
}

.category_checkbox {
	padding: 10px;
}

.category_checkbox input {
	padding-right: 10px;
	`
}

.check {
	display: inline;
	padding-right: 20px;
}

.signin {
	color: darkgray;
	padding: 10px 0 10px 0
}

.close {
	color: white;
	padding-top: 45px !important;
}

#room9:hover {
	cursor: pointer;
}

#room9 {
	padding: 20px 0 !important;
	margin: 0 !important;
}

#room9>img {
	width: 45% !important;
}

.class {
	cursor: pointer !important;
}
</style>

<body>

<h1 onclick='loginWithKakao("connect")'>카카오 연동하기 (test)</h1>

<form action="<c:url value='/loginProcess.room9'/>">
	<h1 onclick="location.href='<c:url value='/home.room9'/>'" id="room9">
		<img src="<c:url value='/resources/img/room9logo_op.png'/>" />
	</h1>
	<div class="inset">
		<p>
			<label for="email">EMAIL or ID</label> 
			<input type="text" name="emailid" id="email">
		</p>
		<p>
			<label for="password">PASSWORD</label> 
			<input type="password" name="pwd" id="password">
		</p>
		<p class="loginimg">
			<a id="custom-login-btn" href="<c:url value='naverlogin.room9'/>"> 
			<img src="<c:url value='/resources/img/naverlogin.png'/>" alt="네이버로그인버튼">
			</a> 
			<a id="custom-login-btn" href="javascript:loginWithKakao()"> 
			<img src="<c:url value='/resources/img/kakaologin.png'/>" alt="카카오로그인버튼">
			</a> 
			

			<script type='text/javascript'>
				// 사용할 앱의 JavaScript 키를 설정해 주세요.
				Kakao.init('bae907e078c4dd929177071c5ed2263c');
				function loginWithKakao(str) {
					// 로그인 창을 띄웁니다.
					// accesstoken 으로 로그인 처리 및 로그인 여부 확인하면 될 듯 함.
					Kakao.Auth.loginForm({
						success : function(authObj) {
							// 로그인 후 토큰을 이용하기 위해 토큰부분만 추출
							var accessToken = JSON.stringify(authObj).substring(17, JSON.stringify(authObj).indexOf('","'));
							// 카카오 로그인시에는 리캡차 적용 안되도 로그인이 됨
							if(str == "connect"){
								// 여기는 기존 유저가 카카오 연동할 때
								location.href = "<c:url value='/kakaoConnect.room9?accessToken="	+ accessToken + "'/>";
							}
							else{
								// 여기는 카카오 로그인할 때
								location.href = "<c:url value='/kakaoLogin.room9?accessToken="	+ accessToken + "'/>"	
							}
						},
						fail : function(err) {
							alert(JSON.stringify(err));
						}
					});
				};
			</script>
			
			<a id="custom-login-btn" href="javascript:loginWithKakao()"> 
			<img src="<c:url value='/resources/img/googlelogin.png'/>" alt="구글로그인버튼">
			</a> 
			<a id="custom-login-btn" href="javascript:loginWithKakao()"> 
			<img src="<c:url value='/resources/img/facebooklogin.png'/>" alt="페이스북로그인버튼">
			</a>
		</p>
	</div>
	<p class="p-container">
		<input type="button" name="sign" id="sign" value="sign in"
			data-toggle="modal" data-target="#myModal"> <input
			type="submit" name="go" id="go" value="Log in">
	</p>
	<p class="p-container">
		<span><a class="forgot" data-toggle="modal"
			data-target="#myModal1">Forgot email/password ?</a></span>
	</p>
</form>

<!-- 회원가입Modal -->
<form method="post" action="<c:url value='/signOnProcess.room9' />" id="registerform">
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" style="width: 20%;">
			<div class="modal-content">
				<div class="col-md-12" style="padding: 0px 0px;">
					<div class="modal-header" style="border-bottom: none">
						<button type="button" class="close" data-dismiss="modal"aria-label="Close" style="color: white;">
							<span aria-hidden="true">&times;</span>
						</button>
						<h2 class="title mb-3 mt-3" style="color: white !important; text-align: center">Sign in</h2>
					</div>
					<div class="modal-body">
						<p class="signin" style="padding-bottom: 0px !important;">이메일(아이디)</p>
						<input type="email" class="form-control" placeholder="주소입력" id="sign-email" name="emailid" style="display: inline; width: 65%" />
						<input value="중복 체크" class="btn inputbutton" id="idck"type="button" style="display: inline; padding: 8px 20px; margin: 0;" />
						<p class="signin">비밀번호</p>
						<input type="password" class="form-control password" name="signpwd" id="signpassword" placeholder="비밀번호 입력" style="margin-bottom: 8px;" />
						<p class="signin">비밀번호 확인</p>
						<input type="password" class="form-control re-password" name="repwd" id="repassword" placeholder="비밀번호 확인" style="margin-bottom: 8px;" />
						<p class="signin">이름</p>
						<input type="text" value="" class="form-control name" name="name" placeholder="이름 입력" id="name" style="margin-bottom: 8px;" />
						<p class="signin">휴대전화 번호</p>
						<input type="text" class="form-control phoneNumber"name="phonenumber" id="phoneNumber" placeholder='"-"을 빼고 입력해주세요' maxlength="13" />
					</div>
					<div class="modal-footer"
						style="border-top: none; padding-right: 20%; padding-bottom: 8%">
						<div class="col-md-12"
							style="text-align: center !important; padding: 10px 0 10px 0">
							<button class="btn inputbutton" type="button"
								data-dismiss="modal" style="padding-bottom: 10px;">Cancel</button>
							<button class="btn inputbutton" style="padding-bottom: 10px;">OK</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>

<!-- 아이디 비번 찾기Modal -->
<form method="get" action="<c:url value='/sendpw.room9'/>" id="registerform">
   <div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
      aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog" style="padding-top: 5%">
         <div class="modal-content">
            <div class="modal-body" style="padding: 10px 30px">
               <div class="modal-header" style="border-bottom: none">
                  <button type="button" class="close" data-dismiss="modal"
                     aria-label="Close" style="color: white;">
                     <span aria-hidden="true">&times;</span>
                  </button>
                  <h3 class="title mb-3 mt-3"
                     style="color: white !important; text-align: center">Forget Email / Password</h3>
               </div>
               <!-- <div style="padding-bottom: 5%">   
                  <h3 style="color: gray">아이디찾기</h3>
                  <p class="signin" style="padding-bottom: 0px !important;">등록한이메일</p>
                  <input type="email" class="form-control" placeholder="이메일주소입력"
                     id="email" name="emailid" style="display: inline; width: 65%" />
                  <button class="btn inputbutton" style="padding: 30px;margin-top: 8%">메일전송</button>
                  <p class="signin">이름</p>
                  <input type="text" value="" class="form-control name" name="name"
                     placeholder="이름 입력" id="name" style="margin-bottom: 8px; width: 65%" />
               </div> -->
               <hr/>
               <div style="padding-bottom: 5%">
                  <h3 style="color: gray">비밀번호찾기</h3>   
                  <p class="signin" style="padding-bottom: 0px !important;">이메일(아이디)</p>
                  <input type="email" class="form-control" placeholder="이메일주소입력"
                     id="emailid" name="emailid" style="display: inline; width: 65%" />
                  <button class="btn inputbutton" style="padding: 30px;margin-top: 8%">메일전송</button>
                  <p class="signin">휴대전화 번호</p>
                  <input type="text" class="form-control phoneNumber"
                     name="phonenumber" id="phoneNumber" placeholder='"-"을 빼고 입력해주세요'
                     maxlength="13" style=" width: 65%"/>
               </div>
            </div>
         </div>
      </div>
   </div>
</form>

</body>
<!-- 아이디 중복체크 -->
<script>
var idchk = false;
$('#idck').click(function(){
	if($('#sign-email').val() == '')
	{
		alert('아이디를 입력해 주세요');
		return;
	}
	var userid = $('#sign-email').prop('value');
	$.ajax({
		url:"<c:url value='/idcheck.room9'/>",
		type:"post",
		datatype:"text",
		data : {emailid : userid},
		success : function(data){
			if(data == "true")
			{
				alert("중복된 아이디 입니다.");	
				idchk = true;
			}
			else			
			{
				alert("사용가능한 아이디 입니다.");
				idchk = false;
			}
		},
		error : function(){
			console.log("실패")
		}
	});
});
</script>
<script>
$('#registerform').validate({
	//validation이 끝난 이후의 submit 직전 추가 작업할 부분
	submitHandler : function() {
		var f = confirm("회원가입을 완료하겠습니까?");
		if (f) {
			return true;
		} else {
			return false;
		}
	},
	rules : {
		emailid : {
			required : true
		},
		signpwd : {
			required : true,
			maxlength : 9,
			minlength : 4
		},
		repwd: {
			required : true,
			maxlength : 9,
			minlength : 4,
			equalTo : signpassword
		},
		name : {
			required : true,
			minlength : 2,
			maxlength : 15
		},
		phonenumber : {
			required : true,
			digits : true
		}
	},
	messages : {
		emailid : {
			required : "필수사항입니다. 이메일을 입력해 주세요"
		},
		signpwd : {
			required : "필수사항입니다. 비밀번호를 입력해 주세요",
			maxlength : "비밀번호는 9자 이내로 입력해 주세요",
			minlength : "비밀번호는 최소 4자 이상 입력해 주세요"
		},
		repwd : {
			required : "비밀번호 확인을 위해서 입력해 주세요",
			maxlength : "비밀번호는 9자 이내로 입력해 주세요",
			minlength : "비밀번호는 최소 4자 이상 입력해 주세요",
			equalTo : "비밀번호가 일치 하지 않습니다."
		},
		name : {
			required : "이름을 입력해 주세요",
			minlength : "이름은 최소 2자 이상 입력해 주세요",
			maxlength : "이름은 15자 이내로 입력해 주세요"
		},
		phonenumber : {
			required : "휴대전화 번호를 입력해 주세요",
			digits : "숫자만 입력해주세요"
		}
	}
});
</script>	



</html>