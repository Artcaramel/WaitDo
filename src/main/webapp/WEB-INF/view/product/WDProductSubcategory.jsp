<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../WDHeader.jsp"%>
<%@ page import="dto.ProductDto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WD Product</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<style>
.swiper-container {
	width: 80%;
	height: auto;
	margin-left: auto;
	margin-right: auto;
}

.swiper-slide {
	text-align: center;
	font-size: 18px;
	height: auto;
	/* Center slide text vertically */
	display: -webkit-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	-webkit-align-items: center;
	align-items: center;
}
</style>
</head>
<body>
	<%!int i = 0;%>
	<div class="productMargin" id="box" style="background-color: white;">
		<article class="product__main">
			<div>
		<%-- <c:choose>
					<c:when test="${authInfo != null}">--%>	
				<div class="product-base-img-div">
					<img class="product-base-img-img"
						src="/waitdo/WDImage/product-1.jpg">
				</div>
				<div class="product-base-img-text">
					<h3 class="product-base-img-text-main">남성을 위한 수트</h3>
					<p class="product-base-img-text-sub">포멀함과 세심한 디자인의 기능성이 만난 남성
						수트를 소개합니다. 포멀 & 캐주얼 스타일을 선보이는 우아한 컬렉션에서 소개하는 WaitDo만의 실루엣을 발견해보세요.
						슬림핏과 가벼운 여름 스타일부터 턱시도와 스리피스 디자인까지, 세심한 스타일링에 중점을 둔 수트 컬렉션을 지금
						확인해보세요.</p>
				</div>
				<%--	</c:when>
					<c:when test="${authInfo != null}">
					</c:when>--%>	
				<div class="product-main-view">
					<div class="product-main-container">
						<c:forEach items="${subcategoryProduct}" var="subcategoryVO"
							begin="1" end="2">
							<div class="product-main-container-sub">
								<div class="product-main-view-main">
									<a href="/waitdo/product/detail?pseq=${subcategoryVO.pseq}">
										<img class="product-main-view-main-img"
										src="/waitdo/WDImage/${subcategoryVO.image}"> <!--     <img class="product-main-view-main-img"
                           src="/waitdo/WDImage/product-sub-1-1.jpg">-->
										<p class="left">${subcategoryVO.name}</p>
									</a>
									<p class="right">
										<fmt:formatNumber value="${subcategoryVO.price2}"
											pattern="###,###,###" />
										원
									</p>
								</div>
							</div>
						</c:forEach>
					</div>
					<div class="product-main-container">
						<c:forEach items="${subcategoryProduct}" var="subcategoryVO"
							begin="8" end="8">
							<div class="product-main-container-sub">
								<div class="product-main-view-main">
									<a href="/waitdo/product/detail?pseq=${subcategoryVO.pseq}">
										<img class="product-main-view-main-img"
										src="/waitdo/WDImage/${subcategoryVO.image}">
										<p class="left">${subcategoryVO.name}</p>
									</a>
									<p class="right">
										<fmt:formatNumber value="${subcategoryVO.price2}"
											pattern="###,###,###" />
										원
									</p>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="product-base-img-div">
					<img class="product-base-img-img"
						src="/waitdo/WDImage/product-2.jpg">
				</div>
				<div class="product-main-container-view">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<c:forEach items="${subcategoryProduct}" var="subcategoryVO"
								begin="5" end="15">
								<div class="swiper-slide">
									<div class="product-main-view-swiper-container">
										<a href="/waitdo/product/detail?pseq=${subcategoryVO.pseq}">
											<img class="product-main-view-swiper-container-img"
											src="/waitdo/WDImage/${subcategoryVO.image}">
											<p class="left">${subcategoryVO.name}</p>
										</a>
										<p class="right">
											<fmt:formatNumber value="${subcategoryVO.price2}"
												pattern="###,###,###" />
											원
										</p>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
				<div class="product-main-view">
					<div class="product-main-container">
						<c:forEach items="${subcategoryProduct}" var="subcategoryVO"
							begin="16" end="16">
							<div class="product-main-container-sub">
								<div class="product-main-view-main">
									<a href="/waitdo/product/detail?pseq=${subcategoryVO.pseq}">
										<img class="product-main-view-main-img"
										src="/waitdo/WDImage/${subcategoryVO.image}">
									</a>
									<p class="left">${subcategoryVO.name}</p>
									<p class="right">
										<fmt:formatNumber value="${subcategoryVO.price2}"
											pattern="###,###,###" />
										원
									</p>
								</div>
							</div>
						</c:forEach>
					</div>
					<div class="product-main-container">
						<c:forEach items="${subcategoryProduct}" var="subcategoryVO"
							begin="15" end="17">
							<div class="product-main-container-sub">
								<div class="product-main-view-main">
									<img class="product-main-view-main-img"
										src="/waitdo/WDImage/${subcategoryVO.image}" /></a>
									<!--     <img class="product-main-view-main-img"
                           src="/waitdo/WDImage/product-sub-1-1.jpg">-->
									<p class="left">${subcategoryVO.name}</p>
									<p class="right">
										<fmt:formatNumber value="${subcategoryVO.price2}"
											pattern="###,###,###" />
										원
									</p>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
						<div class="product-main-view">
							<div class="product-main-container">
								<div class="product-main-container-sub">
									<div class="product-main-view-main">
										<img class="product-main-view-main-img"
											src="/waitdo/WDImage/product-sub-1-1.jpg">
										<p class="left">버드 아이즈 수트 팬츠</p>
										<p class="right">89,000원</p>
									</div>
								</div>
								<div class="product-main-container-sub">
									<div class="product-main-view-main">
										<img class="product-main-view-main-img"
											src="/waitdo/WDImage/product-sub-1-2.jpg">
										<p class="left">버드 아이즈 수트 팬츠</p>
										<p class="right">89,000원</p>
									</div>
								</div>
							</div>
							<div class="product-main-container">
								<div class="product-main-container-sub">
									<div class="product-main-view-main">
										<img class="product-main-view-main-img"
											src="/waitdo/WDImage/product-sub-2-1.jpg">
										<p class="left">버드 아이즈 수트 블레이저</p>
										<p class="right">89,000원</p>
									</div>
								</div>
								<div class="product-main-container-sub">
									<div class="product-main-view-main">
										<img class="product-main-view-main-img"
											src="/waitdo/WDImage/product-sub-2-2.jpg">
										<p class="left">버드 아이즈 수트 블레이저</p>
										<p class="right">89,000원</p>
									</div>
								</div>
							</div>
						</div>
				
			</div>
		</article>
	</div>
	<!-- Initialize Swiper -->
	<script>
		var swiper = new Swiper('.swiper-container', {
			slidesPerView : 4,
			slidesPerColumn : 1,
			spaceBetween : 30,
			pagination : {
				el : '.swiper-pagination',
				clickable : true,
			},
		});
	</script>
</body>
</html>