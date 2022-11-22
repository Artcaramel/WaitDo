<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../WDHeader.jsp"%>
<!doctype html>
<html lang="en">
<head>
<link rel="shortcut icon" type="image/x-icon" href="WDImage/favicon.ico">
<meta charset="UTF-8">
<meta name="Generator" content="EditPlus®">
<meta name="Author" content="">
<meta name="Keywords" content="">
<meta name="Description" content="">
<title>WD Index</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script>
	window.onload = function() {
		var elm = ".box";
		$(elm).each(function(index) {
			// 개별적으로 Wheel 이벤트 적용
			$(this).on("mousewheel DOMMouseScroll", function(e) {
				e.preventDefault();
				var delta = 0;
				if (!event)
					event = window.event;
				if (event.wheelDelta) {
					delta = event.wheelDelta / 120;
					if (window.opera)
						delta = -delta;
				} else if (event.detail)
					delta = -event.detail / 3;
				var moveTop = $(window).scrollTop();
				var elmSelecter = $(elm).eq(index);
				// 마우스휠을 위에서 아래로
				if (delta < 0) {
					if ($(elmSelecter).next() != undefined) {
						try {
							moveTop = $(elmSelecter).next().offset().top;
						} catch (e) {
						}
					}
					// 마우스휠을 아래에서 위로
				} else {
					if ($(elmSelecter).prev() != undefined) {
						try {
							moveTop = $(elmSelecter).prev().offset().top;
						} catch (e) {
						}
					}
				}

				// 화면 이동 0.8초(800)
				$("html,body").stop().animate({
					scrollTop : moveTop + 'px'
				}, {
					duration : 800,
					complete : function() {
					}
				});
			});
		});
	}

	/* 해당 위치로 이동*/
	function fnMove(seq) {
		var offset = $("#box" + seq).offset();
		$('html, body').animate({
			scrollTop : offset.top
		}, 400);
	}

	/* 하단 nav바 */
	$('#slider-nav nav a').on('click', function(event) { // 클릭 이벤트
		$(this).parent().find('a').removeClass('active'); // a태그를 찾아 active를 지운다
		$(this).addClass('active'); //클릭된 곳에 active를 추가해준다
	});

	$(window).on('scroll', function() {
		$('.imageMargin').each(function() {
			if ($(window).scrollTop() >= $(this).offset().top) {
				var id = $(this).attr('id');
				$('#slider-nav nav a').removeClass('active');
				$('#slider-nav nav a[id=#' + id + ']').addClass('active');
			}
		});
	});
</script>
</head>
<body>

	<c:set var="members" value="${authInfo}" />
	<c:choose>
		<c:when test="${members.adminyn == 'n'}">
			<div id="slider-nav">
				<nav class="slider-nav">
					<ul class="slider-ul">
						<li class="slider-spot"><a id="#1" onclick="fnMove('1')"
							class="active">NEW</a></li>
						<li class="slider-spot"><a id="#2" onclick="fnMove('2')">NEW
								COLLECTION</a></li>
						<li class="slider-spot"><a id="#3" onclick="fnMove('3')">SHOES</a></li>
						<li class="slider-spot"><a id="#4" onclick="fnMove('4')">SALE</a></li>
					</ul>
				</nav>
			</div>
			<%
			for (int i = 1; i <= 3; i++) {
				for(int j = 1; j <=6; j++ ) {
			%>
			<c:set var="i" value="<%=i%>" />
			<section class="box" id="box${i}">
				<div class="imageMargin" id="${i}" style="background-color: white;">
					<div class="imageSet">
						<img class="imageMain" src="./WDImage/Main${i}.jpg">
					</div>
				</div>
			</section>
			<%}
				
			}
			%>
		</c:when>

		<c:when test="${members == null}">
			<div id="slider-nav">
				<nav class="slider-nav">
					<ul class="slider-ul">
						<li class="slider-spot"><a id="#1" onclick="fnMove('1')"
							class="active">NEW</a></li>
						<li class="slider-spot"><a id="#2" onclick="fnMove('2')">NEW
								COLLECTION</a></li>
						<li class="slider-spot"><a id="#3" onclick="fnMove('3')">
								SHOES</a></li>
						<li class="slider-spot"><a id="#4" onclick="fnMove('4')">SALE</a></li>
					</ul>
				</nav>
			</div>
			<%
			for (int i = 1; i <= 6; i++) {
			%>
			<c:set var="i" value="<%=i%>" />
			<section class="box" id="box${i}">
				<div class="imageMargin" id="${i}" style="background-color: white;">
					<div class="imageSet">
						<a href="/waitdo/product/kind/subcategory?kind=2&subcategory=${i}">
							<img class="imageMain" src="./WDImage/Main${i}.jpg">
						</a>
					</div>
				</div>
			</section>
			<%
			}
			%>
		</c:when>

		<c:when test="${members.adminyn == 'y'}">
			<%
			response.sendRedirect("admin/adminMain");
			%>
		</c:when>

	</c:choose>

</body>
</html>