<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../WDHeader.jsp"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find Pwd</title>
</head>
<body>
	<div class="loginMargin" id="box" style="background-color: white;">
		<main class="layout__main" id="main">
			<article class="layout__article">
				<div>
					<div>
						<div>
							<h1>
								<span>비밀번호 찾기</span>
							</h1>
						</div>
						<div></div>
					</div>
					<form autocomplete="off" action="/waitdo/member/findPwdForm"  method="POST">
						
							<div>
								<div>
									<div>
										<div>
											<div>
												<input
													id='email' name="email" placeholder="이메일을 입력하세요"
													type="text" ><span>이메일</span>
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
													id='name' name="name" placeholder="이름을 입력하세요" 
													type="text" ><span>이름</span>
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
													id='birth' name="birth" 
													type="date" ><span>생년월일</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						<div class="form__footer">
							<div class="button__lines-wrapper">
								<input type="submit" value="비밀번호 찾기">
							</div>
						</div>
					</form>
				</div>
			</article>
		</main>
	</div>
</body>
</html>