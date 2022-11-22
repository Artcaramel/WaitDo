<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="./WDAdminHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Index</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

<!-- Link Swiper's CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">

<!-- Demo styles -->
<style>
html, body {
	position: relative;
	height: 100%;
}

body {
	background: #fff;
	font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
	font-size: 14px;
	color: #000;
	margin: 0;
	padding: 0;
}

.swiper-container {
	width: 300px;
	height: 300px;
	position: absolute;
	left: 50%;
	top: 50%;
	margin-left: -150px;
	margin-top: -150px;
}

.swiper-slide {
	background-position: center;
	background-size: cover;
}
</style>
</head>
<body>
	<!-- Swiper -->
	<div class="swiper-container">
		<div class="swiper-wrapper">
			<div class="swiper-slide"
				style="background-image: url(/waitdo/WDImage/WaitDoadd.png)"></div>
			<% 
			for (int i = 1; i <= 3; i++) {
			%>
			<c:set var="i" value="<%=i%>" />
			<div class="swiper-slide"
				style="background-image: url(/waitdo/WDImage/admin-${i}.png)"></div>
			<%
			}
			%>
		</div>
	</div>

	<!-- Swiper JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>

	<!-- Initialize Swiper -->
	<script>
		var swiper = new Swiper('.swiper-container', {
			effect : 'cube',
			grabCursor : true,
			loop : true,
			loopAdditionalSlides : 1,
			keyboard : {
				enabled : true,
			},
			cubeEffect : {
				shadow : true,
				slideShadows : true,
				shadowOffset : 20,
				shadowScale : 0.94,
			},
			pagination : {
				el : '.swiper-pagination',
			},
			autoplay : {
				delay : 2500,
				disableOnInteraction : false,
			},
		});
	</script>
</body>
</html>