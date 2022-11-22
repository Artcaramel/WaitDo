<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="dto.ProductDto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
         
         <div itemtype="https://schema.org/Organization" class="right" style="padding-left: 50px;">
            <h1 itemscope>
               <a class="layout_logo_link"
                  href="/waitdo/admin/adminMain"> <img
                  class="header-image" src="/waitdo/WDImage/WaitDo.png"
                  title="WaitDo South Korea / 대한민국, WD 홈페이지로 이동" />
               </a>
            </h1>
         </div>
      </div>
      <!-- head -->

               
      <div id="header-right">
		<c:set var="members" value="${authInfo}" />
		<c:choose>
			<c:when test="${members.adminyn != 'y' }">
			<%response.sendRedirect("/waitdo/admin/error");%>
			</c:when>
			<c:when test="${authInfo != null}">
				<span><a href="/waitdo/admin/adminMypage" class="header-member">${members.name}
						님</a> <a href="/waitdo/member/logout" class="header-member">로그아웃</a>
				</span>
			</c:when>
			<c:when test="${authInfo == null}">
				<span> <a style="color: blue;" href="/waitdo/member/login"
					class="header-member">로그인</a></span>
			</c:when>
			
		</c:choose>

		<a class="header-member" style="color: black;" href= "/waitdo/admin/adminRead">필독사항</a> <a class="header-cl"> </a> <a
			class="header-cl" href="/waitdo/cart/cartlist" tabindex="0">		

         <!-- 만약 카트리스트 페이지라면 Choose로 카트 출력 안하기 -->
         <a class="header-cl"> </a>
            
        
      </div>
   </div>
   <!-- header -->
</header>
</html>