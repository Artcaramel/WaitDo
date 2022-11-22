<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../WDHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function Check(){
		var oldpwd = document.getElementById('oldPwd');
		var pwd = document.getElementById('pwd'); 
		var pwdConfirm = document.getElementById('pwdConfirm');
		if(oldpwd.value == ""){
			alert("현재 비밀번호를 입력해 주세요");
			oldpwd.focus();
			return false;
		}else if(pwd.value == ""){
			alert("새 비밀번호를 입력해 주세요");
			pwd.focus();
			return false;
		}else if(pwdConfirm.value == ""){
			alert("새 비밀번호 재입력을 입력해 주세요");
			pwdConfirm.focus();
			return false;
		}else if(pwd.value != pwdConfirm.value){
			alert("새 비밀번호와 비밀번호 재입력이 같지 않습니다");
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
	<%-- <c:set var="member" value="${member}" /> --%>
	<div class="loginMargin" id="box" style="background-color: white;">
		<main class="layout__main" id="main">
			<article class="layout__article">
				<div>
					<div>
						<div>
							<h1>
								<span>비밀번호 변경</span>
							</h1>
						</div>
						<div></div>
					</div>
					<form autocomplete="off" action="/waitdo/member/changePwd"
						onsubmit="return Check();" method="POST">
						<div>
							<div>
								<div>
									<div>
										<div>
											<div>
												<input
													class="form-input-label__input form-input-password__input"
													id='oldPwd' name="oldPassword" placeholder=" "
													type="password" data-qa-input-qualifier="oldPassword"
													aria-labelledby="form-input__label-oldPassword"
													aria-required="true"><label
													class="form-input-label__label" for="oldPassword"
													id="form-input__label-oldPassword"><span>현재
														비밀번호</span></label>
												<div class="form-input__error"
													id="form-input__desc-password">
													<div>
													<span style="color: red">${error}</span>
													</div>	
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
								</div>
							</div>
							<div>
								<div>
									<div>
										<div>
											<div>
												<input
													class="form-input-label__input form-input-password__input"
													id='pwd' name="pwd" placeholder=" " type="password"
													data-qa-input-qualifier="newPassword"
													aria-labelledby="form-input__label-newPassword"
													aria-required="true"><label
													class="form-input-label__label" for="newPassword"
													id="form-input__label-newPassword"><span>새
														비밀번호</span></label>
												<div class="form-input__error"
													id="form-input__desc-password">
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
								</div>
							</div>
							<div>
								<div>
									<div>
										<div>
											<div>
												<input
													class="form-input-label__input form-input-password__input"
													id='pwdConfirm' name="pwdConfirm" placeholder=" "
													type="password" data-qa-input-qualifier="passwordConfirm"
													aria-labelledby="form-input__label-passwordConfirm"
													aria-required="true"><label
													class="form-input-label__label" for="passwordConfirm"
													id="form-input__label-passwordConfirm"><span>비밀번호를
														한 번 더 입력해 주십시오</span></label>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="logout-footer-body-button">
							<button class="logout-footer-body-block" type="submit">
								회원 수정</button>
						</div>
					</form>
				</div>
			</article>
		</main>
	</div>
</body>
</html>