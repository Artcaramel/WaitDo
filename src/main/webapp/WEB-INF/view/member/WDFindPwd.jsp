<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../WDHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function Check() {
		var pwd = document.getElementById('pwd');
		var pwdConfirm = document.getElementById('pwdConfirm');
		if (pwd.value == "") {
			alert("새 비밀번호를 입력해 주세요");
			pwd.focus();
			return false;
		} else if (pwdConfirm.value == "") {
			alert("새 비밀번호 재입력을 입력해 주세요");
			pwdConfirm.focus();
			return false;
		} else if (pwd.value != pwdConfirm.value) {
			alert("새 비밀번호와 비밀번호 재입력이 같지 않습니다");
			return false;
		} else {
			alert("비밀번호 재설정이 완료됐습니다. 다시 로그인 해주세요");
		}
		return true;
	}
</script>
<meta charset="UTF-8">
<title>Change Password</title>
</head>
<body>
	<c:set var="selectPwd" value="${FindPwd}" />
	<c:choose>
		<c:when test="${selectPwd != null}">
			<div class="loginMargin" id="box" style="background-color: white;">
				<main class="layout__main" id="main">
					<article class="layout__article">
						<div>
							<div>
								<div>
									<h1>
										<span>비밀번호 재설정</span>
									</h1>
								</div>
								<div></div>
							</div>
							<form autocomplete="off" action="/waitdo/member/findPwd"
								onsubmit="return Check();" method="POST">
								<div>
									<div>
										<div>
											<div>
												<div>
													<input
														class="form-input-label__input form-input-password__input"
														id='pwd' name="pwd" placeholder="새 비밀번호를 입력해 주세요"
														type="password" data-qa-input-qualifier="newPassword"
														aria-labelledby="form-input__label-newPassword"
														aria-required="true"><label
														class="form-input-label__label" for="newPassword"
														id="form-input__label-newPassword"><span>새
															비밀번호</span></label>
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
														id='pwdConfirm' name="pwdConfirm"
														placeholder="비밀번호를 다시 한번 더 입력해 주세요" type="password"
														data-qa-input-qualifier="passwordConfirm"
														aria-labelledby="form-input__label-passwordConfirm"
														aria-required="true"><label
														class="form-input-label__label" for="passwordConfirm"
														id="form-input__label-passwordConfirm"><span>비밀번호를
															다시 한번 더 입력해 주세요</span></label>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div></div>
								<div class="form__footer">
									<div class="button__lines-wrapper">
										<input type="submit" value="비밀번호 재설정">
									</div>
								</div>
							</form>
						</div>
					</article>
				</main>
			</div>
		</c:when>
		<c:when test="${selectPwd == null}">
			<div class="loginMargin" id="box" style="background-color: white;">
				<main class="layout__main" id="main">
					<article class="layout__article">
						<div>
							<div>
								<div></div>
								<div></div>
							</div>
							<div>
								<div>
									<div>
										<div>
											<div>
												<center>
													<h1>
														<span>해당하는 정보의 회원은 존재하지 않습니다</span>
													</h1>
												</center>
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
												<center>
													<div>
														<a href="/waitdo/member/findEmailForm"
															style="margin-buttom: 40px;"> 이메일 찾기</a> <a
															href="/waitdo/member/findPwdForm"
															style="margin-buttom: 40px;"> 비밀번호 찾기</a>
													</div>
												</center>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div></div>

						</div>
					</article>
				</main>
			</div>
		</c:when>
	</c:choose>

</body>
</html>