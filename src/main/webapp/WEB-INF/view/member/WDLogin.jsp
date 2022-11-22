<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../WDHeader.jsp"%>

<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" type="image/x-icon" href="../WDImage/favicon.ico">
<script type="text/javascript">
	function Check() {
		var email = document.getElementById('email');
		var pwd = document.getElementById('pwd');
		if (email.value == "") {
			alert("이메일을 입력해주세요");
			email.focus();
			return false;
		} else if (pwd.value == "") {
			alert("비밀번호를 입력해주세요");
			pwd.focus();
			return false;
		} else {
			return true;
		}
	}
</script>
<link href="/WDCss/WDHeader.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="loginMargin" id="box" style="background-color: white;">
		<div id="login-left">
			<section>
				<h2>로그인</h2>
				<form action="/waitdo/member/login" autocomplete="off"
					onsubmit="return Check();" method="post">
					<c:set var="member" value="${member}" />
					<!-- 로그인 패스워드 묶음 -->
					<div>
						<!-- 로그인 -->
						<div style="margin-top: 24px;">
							<!-- 라벨 분리 -->
							<input type="text" id='email' name="email"> <label>
								<span>이메일</span>
							</label>
						</div>
						<div>
							<span style="color: red">${message}</span>
						</div>
						<!-- 패스워드 -->
						<div style="margin-top: 24px;">
							<!-- 라벨 분리 -->
							<input type="password" id='pwd' name="pwd"> <label>
								<span>비밀번호</span>
							</label>
						</div>
						<div>
							<!-- 로그인 버튼 -->
							<a class="login-color" href="/waitdo/member/findEmailForm"
								style="margin-buttom: 40px;"> 이메일</a>, <a class="login-color"
								href="/waitdo/member/findPwdForm" style="margin-buttom: 40px;">
								비밀번호를 잊어버리셨습니까?</a>
							<div class="login-footer-body-button">
								<button type="submit" class="login-footer-body-block"
									value="로그인">로그인</button>
							</div>
						</div>
					</div>
				</form>
			</section>
		</diV>
		<div id="login-right">
			<!-- 로그인과 가입의 구분 -->
			<section>
				<h2>등록</h2>
				<p>
					WaitDo의 회원으로 가입하시면 더욱 빠르고 편리하게<br> 이용하실 수 있습니다.
				</p>
				<div>
					<span> 아직 "<Strong>WaitDo.Com</Strong>"의 회원이 아니라면 이메일로 간<br>편하게
						가입하실 수 있습니다.
					</span>
				</div>
				<div>
					<div class="login-footer-body-button">
						<button class="login-footer-body-block">
							<a class="join-footer-body-block" href="/waitdo/member/joinForm">
								가입하기 </a>
						</button>
					</div>
				</div>
			</section>
		</div>
	</div>
</body>
</html>