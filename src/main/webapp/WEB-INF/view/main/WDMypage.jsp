<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../WDHeader.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="member" value="${member}" />
	<div class="loginMargin" id="box" style="background-color: white;">
		<div>
			<main>
				<div>
					<!-- 사용자 정보 -->
					<div>
						<p class="mypage-heder-name">
							<!-- 사용자 이름  -->
							${member.name}
						</p>
						<p>
							<!-- 사용자 이메일  -->
							${member.email}
						</p>
					</div>
					<nav class="mypage-nav">
						<ul class="mypage-div-ul">
							<li class="mypage-list"><a class="mypage-a" href="/waitdo/member/update">
									<div class="flex">
										<div>
											<div class="mapage-nav-div">
												<span class="mypage-span-bold">계정</span>
											</div>
											<div>
												<p class="mapage-nav-p">
													<span>이메일, 비밀번호, 로그아웃 . . .</span>
												</p>
											</div>
										</div>
										<div class="right">
											<svg class="mypage-svg" xmlns="http://www.w3.org/2000/svg"
												viewBox="0 0 24 24">
                              <path
													d="M14.622 12.31L9.609 6.709l.746-.666L16 12.352l-5.666 5.628-.704-.71 4.992-4.96z"></path></svg>
										</div>
									</div>
							</a></li>

							<li class="mypage-list"><a class="mypage-a" href="/waitdo/member/address">
									<div class="flex">
										<div>
											<div class="mapage-nav-div">
												<span class="mypage-span-bold">주소</span>
											</div>
											<div>
												<p class="mapage-nav-p">
													<span>배송 및 청구서 주소</span>
												</p>
											</div>
										</div>
										<div class="right">
											<svg class="mypage-svg" xmlns="http://www.w3.org/2000/svg"
												viewBox="0 0 24 24">
                              <path
													d="M14.622 12.31L9.609 6.709l.746-.666L16 12.352l-5.666 5.628-.704-.71 4.992-4.96z"></path></svg>
										</div>
									</div>
							</a></li>
							<li class="mypage-list"><a class="mypage-a" href="/waitdo/orderlist">
									<div class="flex">
										<div>
											<div class="mapage-nav-div">
												<span class="mypage-span-bold">주문 조회</span>
											</div>
											<div>
												<p class="mapage-nav-p">
													<span>주문 조회 및 구매내역 관리</span>
												</p>
											</div>
										</div>
										<div class="right">
											<svg class="mypage-svg" xmlns="http://www.w3.org/2000/svg"
												viewBox="0 0 24 24">
                              <path
													d="M14.622 12.31L9.609 6.709l.746-.666L16 12.352l-5.666 5.628-.704-.71 4.992-4.96z"></path></svg>
										</div>
									</div>
							</a></li>
							<li class="mypage-list"><a class="mypage-a" href="/waitdo/helpmenu/qnalist">
									<div class="flex">
										<div>
											<div class="mapage-nav-div">
												<span class="mypage-span-bold">1:1 문의</span>
											</div>
											<div>
												<p class="mapage-nav-p">
													<span>내 문의 내역</span>
												</p>
											</div>
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
				</div>
			</main>
		</div>
	</div>
</body>
</html>