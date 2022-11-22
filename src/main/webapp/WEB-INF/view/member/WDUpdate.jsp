<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../WDHeader.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="loginMargin" id="box" style="background-color: white;">
		<main>
			<article>
				<div class="acc-div">
					<div class="acc-div-title">
						<div class="acc-div-title-container">
							<h1>
								<span>계정</span>
							</h1>
						</div>
					</div>
					<nav>
						<ul class="update-ul-padding">
							<li class="mypage-list"><a class="mypage-a"
								href="/waitdo/member/changeEmail">
									<div class="flex">
										<div class="mapage-nav-div">
											<span>이메일 변경</span>
										</div>
										<div class="right">
											<svg class="mypage-svg" xmlns="http://www.w3.org/2000/svg"
												viewBox="0 0 24 24">
                              <path
													d="M14.622 12.31L9.609 6.709l.746-.666L16 12.352l-5.666 5.628-.704-.71 4.992-4.96z"></path></svg>
										</div>
									</div>
							</a></li>
							<li class="mypage-list"><a class="mypage-a"
								href="/waitdo/member/changePwd">
									<div class="flex">
										<div class="mapage-nav-div">
											<span>비밀번호 변경</span>
										</div>

										<div class="right">
											<svg class="mypage-svg" xmlns="http://www.w3.org/2000/svg"
												viewBox="0 0 24 24">
                              <path
													d="M14.622 12.31L9.609 6.709l.746-.666L16 12.352l-5.666 5.628-.704-.71 4.992-4.96z"></path></svg>
										</div>
									</div>
							</a></li>
							<li class="mypage-list"><a class="mypage-a"
								href="/waitdo/member/delete">
									<div class="flex">
										<div class="mapage-nav-div">
											<span>계정 삭제</span>
										</div>
										<div class="right">
											<svg class="mypage-svg" xmlns="http://www.w3.org/2000/svg"
												viewBox="0 0 24 24">
                              <path
													d="M14.622 12.31L9.609 6.709l.746-.666L16 12.352l-5.666 5.628-.704-.71 4.992-4.96z"></path></svg>
										</div>
									</div>
							</a></li>
						</ul>
					</nav>
					<div class="update-ul-padding"> 
						<div class="logout-footer-body-button">
							<button class="logout-footer-body-block">
								<a class="logout-footer-body-block" href="/waitdo/member/logout">
									세션 종료 </a>
							</button>
						</div>
					</div>
				</div>
			</article>
		</main>
	</div>
</body>
</html>