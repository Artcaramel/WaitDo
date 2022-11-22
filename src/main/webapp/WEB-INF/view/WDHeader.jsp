<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="dto.ProductDto"%>
<%@ page import="dto.CartDto"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" type="image/x-icon" href="./WDImage/favicon.ico">
<meta charset="UTF-8">
<title>WaitDo</title>
<link href="/waitdo/WDHeader.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script>
	(function($) {
		$('.cate ul').hide();
		$('.cate .menu .subopen').click(
				function() {
					if ($(this).hasClass('active')) {
						$(this).parent().next().slideUp('fast');
						$(this).removeClass('active');
					} else {
						$('.accordion').find('.active').parent().next()
								.slideUp('fast');
						$('.accordion').find('.active').removeClass('active');
						$(this).parent().next().slideDown('fast');
						$(this).addClass('active');
					}
				});
	})(jQuery);
</script>
</head>
<header>
	<div id="header">
		<div class="head">
			<div class="header_menu">
				<input type="checkbox" id="sideopen"> <label for="sideopen">
					<div class="res-menu">
						<span></span> <span></span> <span></span>
					</div>
				</label>
				<div class="sidebar">
					<div class="accordion">
						<div class="cate">
							<span class="menu"> <a href="/waitdo/product/kind?kind=1"
								class="menulink"></a> <a href="javascript:void(0);"
								class="subopen"><span></span></a>
							</span>
						</div>
						<div class="cate">
							<span class="menu"> <a href="/waitdo/product/kind?kind=1"
								class="menulink">WOMAN</a> <a href="javascript:void(0);"
								class="subopen"><span></span></a>
							</span>
							<ul class="header-ul-kind">
								<a href="/waitdo/product/kind/subcategory?kind=1&subcategory=1"
									class="menulink"><li
									style="padding-top: 10px; padding-bottom: 10px;"
									class="header-list-kind">상의</li></a>
								<a href="/waitdo/product/kind/subcategory?kind=1&subcategory=2"
									class="menulink"><li
									style="padding-top: 10px; padding-bottom: 10px;"
									class="header-list-kind">하의</li></a>
								<a href="/waitdo/product/kind/subcategory?kind=1&subcategory=3"
									class="menulink"><li
									style="padding-top: 10px; padding-bottom: 10px;"
									class="header-list-kind">슈즈</li></a>
								<a href="/waitdo/product/kind/subcategory?kind=1&subcategory=4"
									class="menulink"><li
									style="padding-top: 10px; padding-bottom: 10px;"
									class="header-list-kind">액세서리 및 기타</li></a>
							</ul>
						</div>
						<div class="cate">
							<span class="menu"> <a href="/waitdo/product/kind?kind=2"
								class="menulink">MAN</a> <a href="javascript:void(0);"
								class="subopen"><span></span></a>
							</span>
							<ul class="header-ul-kind">
								<a href="/waitdo/product/kind/subcategory?kind=2&subcategory=5"
									class="menulink"><li
									style="padding-top: 10px; padding-bottom: 10px;"
									class="header-list-kind">상의</li></a>
								<a href="/waitdo/product/kind/subcategory?kind=2&subcategory=6"
									class="menulink"><li
									style="padding-top: 10px; padding-bottom: 10px;"
									class="header-list-kind">하의</li></a>
								<a href="/waitdo/product/kind/subcategory?kind=2&subcategory=7"
									class="menulink"><li
									style="padding-top: 10px; padding-bottom: 10px;"
									class="header-list-kind">슈즈</li></a>
								<a href="/waitdo/product/kind/subcategory?kind=2&subcategory=8"
									class="menulink"><li
									style="padding-top: 10px; padding-bottom: 10px;"
									class="header-list-kind">액세서리 및 기타</li></a>
							</ul>
						</div>
						<div class="cate">
							<span class="menu"> <a href="/waitdo/product/kind?kind=3"
								class="menulink">KIDS</a> <a href="javascript:void(0);"
								class="subopen"><span></span></a>
							</span>
							<ul class="header-ul-kind">
								<a href="/waitdo/product/kind/subcategory?kind=3&subcategory=9"
									class="menulink"><li
									style="padding-top: 10px; padding-bottom: 10px;"
									class="header-list-kind">상의</li></a>
								<a href="/waitdo/product/kind/subcategory?kind=3&subcategory=10"
									class="menulink"><li
									style="padding-top: 10px; padding-bottom: 10px;"
									class="header-list-kind">하의</li></a>
								<a href="/waitdo/product/kind/subcategory?kind=3&subcategory=11"
									class="menulink"><li
									style="padding-top: 10px; padding-bottom: 10px;"
									class="header-list-kind">슈즈</li></a>
								<a href="/waitdo/product/kind/subcategory?kind=3&subcategory=12"
									class="menulink"><li
									style="padding-top: 10px; padding-bottom: 10px;"
									class="header-list-kind">액세서리 및 기타</li></a>
							</ul>
						</div>
					</div>
				</div>
				<!-- sidebar -->
			</div>
			<div itemtype="https://schema.org/Organization" class="right">
				<h1 itemscope>
					<a class="layout_logo_link" href="/waitdo/index"> <img
						class="header-image" src="/waitdo/WDImage/WaitDo.png"
						title="WaitDo South Korea / 대한민국, WD 홈페이지로 이동" />
					</a>
				</h1>
			</div>
		</div>
		<!-- head -->
		<div id="header-right">
			<a class="header-search-bar" href="/waitdo/main/search">검색</a>
			<c:set var="members" value="${authInfo}" />
			<c:choose>
				<c:when test="${authInfo != null}">
					<span> <a href="/waitdo/main/mypage" class="header-member">${members.name}
							님</a> <a href="/waitdo/member/logout" class="header-member">로그아웃</a>
					</span>
				</c:when>
				<c:when test="${authInfo == null}">
					<span> <a style="color: black;" href="/waitdo/member/login"
						class="header-member">로그인</a></span>
				</c:when>
			</c:choose>
			<c:set var="members" value="${authInfo}" />
			<c:choose>
				<c:when test="${authInfo != null}">
					<a class="header-member" style="color: black;"
						href="/waitdo/helpmenu/help">도움말</a>
					<a class="header-cl"> </a>
					<a class="header-cl" href="/waitdo/cart/cartlist" tabindex="0">
				</c:when>
				<c:when test="${authInfo == null}">
					<a class="header-member" style="color: black;"
						href="/waitdo/member/login">도움말</a>
					<a class="header-cl"> </a>
					<a class="header-cl" href="/waitdo/cart/cartlist" tabindex="0">
				</c:when>
			</c:choose>

			<!-- 만약 카트리스트 페이지라면 Choose로 카트 출력 안하기 -->
			<a class="header-cl"> </a> <a class="header-cl"
				href="/waitdo/cart/cartlist" tabindex="0">
				<div id="icon-cross">
					<div class="chlid-cross">
						<svg class="header-icon" viewBox="0 0 24 24"
							xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" clip-rule="evenodd"
								d="M9 5.001V4a2 2 0 0 1 2-2h2a2 2 0 0 1 2 2v1.001h5v7h-1v-6H5v13.9h10v1H4V5h5zM10 4a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v1.001h-4V4z"></path>
            <path fill-rule="evenodd" clip-rule="evenodd"
								d="M22.8 23.4v-9h-5.4v9l2.695-2.827L22.8 23.4zm-4.6-1.998l1.894-1.987L22 21.407V15.2h-3.8v6.202z"></path></svg>
					</div>
					<div class="chlid-cross">
						<span class="cart-size"> ${CartCount}</span>
					</div>
				</div>
			</a>
		</div>
	</div>
	<!-- header -->
</header>
</html>