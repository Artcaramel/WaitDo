<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../WDHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function Check() {
		var email = document.getElementById('email');
		var email2 = document.getElementById('email2');
		var pwd = document.getElementById('pwd');
		/* var pwd2 = document.getElmentById('pwdhidden'); */
		if(pwd.value == "") {
			alert("현재 비밀번호를 입력해 주세요");
			pwd.focus();
			return false;
		}else if(email.value == "") {
			alert("새 이메일을 입력해 주세요");
			email.focus();
			return false;
		}else if(email2.value == "") {
			alert("새 이메일 재입력을 입력해 주세요");
			email2.focus();
			return false;
		}else if (email.value != email2.value) {
			alert("새 이메일과 이메일 재입력이 같지 않습니다");
			return false;
		}else{
		}
		return true;				
	}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="member" value="${member}" />

	<div class="loginMargin" id="box" style="background-color: white;">
		<main class="layout__main" id="main">
			<article class="layout__article">
				<div
					class="grid-block grid-block--colums-6 grid-block--margin-left-0 grid-block--display-block layout-user__container">
					<div
						class="main-content-header layout-user__content-header main-content-header--not-screen-reader">
						<div class="main-content-header__info">
							<h1
								class="main-content-header__title main-content-header__title--alone">
								<span>이메일 변경</span>
							</h1>
						</div>
						<div class="main-content-header__actions"></div>
					</div>
					<div class="change-email-view__wrapper">
						<p class="change-email-view__p">
							<span class="change-email-view__email">${member.email}</span>
						</p>
						<form class="form form--one-column"
							action="/waitdo/member/changeEmail" autocomplete="off"
							onsubmit="return Check();" method="post">
							<div class="form__fields">
								<div class="form__column">
									<div
										class="form-input form-input--has-error form-input--has-help">
										<div class="form-input__wrapper">
											<div class="form-input-password">										
											<%-- <input type="hidden" class="" value="${member.pwd}"
												id='pwdhidden'>  --%>
										
												<div class="form-input-label">
													<input
														class="form-input-label__input form-input-password__input"
														id='pwd' name="pwd" placeholder=" " type="password"
														data-qa-input-qualifier="password"
														aria-labelledby="form-input__label-password"
														aria-required="true"
														aria-describedby="form-input__desc-password"><label
														class="form-input-label__label" for="password"
														id="form-input__label-password"><span>현재
															비밀번호</span></label>
												</div>
												<span style="color: red">${error}</span>
												
											</div>
											<div class="form-input__error" id="form-input__desc-password">
												<svg class="form-input__error-icon" width="16" height="16"
													viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
                                       <path
														d="M7.417 9.167v-5.25h1.166v5.25H7.417zM7.417 10.333V11.5h1.166v-1.167H7.417z"></path>
                                       <path fill-rule="evenodd"
														clip-rule="evenodd"
														d="M1 8a7 7 0 1 1 14 0A7 7 0 0 1 1 8zm7-5.833a5.833 5.833 0 1 0 0 11.666A5.833 5.833 0 0 0 8 2.167z"></path></svg>
												<span>필수 입력란입니다.</span>
											</div>
										</div>
									</div>
								</div>
								<div class="form__column">
									<div
										class="form-input form-input--has-error form-input--has-help">
										<div class="form-input__wrapper">
											<div class="form-input-label">
												<input
													class="form-input-label__input form-input-text__input"
													placeholder=" " type="text" id='email' name="email"
													data-qa-input-qualifier="logonId"
													aria-labelledby="form-input__label-logonId"
													aria-required="true" value=""
													aria-describedby="form-input__desc-logonId"><label
													class="form-input-label__label" for="logonId"
													id="form-input__label-logonId"><span>새 이메일
														주소</span></label>
											</div>
											<div class="form-input__error" id="form-input__desc-logonId">
												<svg class="form-input__error-icon" width="16" height="16"
													viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
                                       <path
														d="M7.417 9.167v-5.25h1.166v5.25H7.417zM7.417 10.333V11.5h1.166v-1.167H7.417z"></path>
                                       <path fill-rule="evenodd"
														clip-rule="evenodd"
														d="M1 8a7 7 0 1 1 14 0A7 7 0 0 1 1 8zm7-5.833a5.833 5.833 0 1 0 0 11.666A5.833 5.833 0 0 0 8 2.167z"></path></svg>
												<span>필수 입력란입니다.</span>
											</div>
										</div>
									</div>
								</div>
								<div class="form__column">
									<div class="form-input form-input--has-help">
										<div class="form-input__wrapper">
											<div class="form-input-label">
												<input
													class="form-input-label__input form-input-text__input"
													id='email2' name="email2" placeholder=" " type="text"
													data-qa-input-qualifier="logonIdConfirm"
													aria-labelledby="form-input__label-logonIdConfirm"
													aria-required="true" value=""><label
													class="form-input-label__label" for="logonIdConfirm"
													id="form-input__label-logonIdConfirm"><span>새
														이메일을 다시 입력하세요</span></label>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="logout-footer-body-button">
							<button class="logout-footer-body-block" type="submit" >
							회원 수정
							</button>
						</div>
						</form>
					</div>
				</div>
			</article>
		</main>
	</div>
</body>
</html>