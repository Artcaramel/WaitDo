<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../WDHeader.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="dto.ProductDto" %>  
<%@ page import="dto.CartDto" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script>
   $("product-detail-size-info__size div").click(function() {
      toggleClass(".active");
   });
</script>

<style>
.swiper-container {
   width: 536px;
   height: 826px;
}

.swiper-slide {
   text-align: center;
   font-size: 18px;
   background: #fff;
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
   <div class="detailMargin" id="box" style="background-color: white;">
    <form method="get" name="form" action="/waitdo/cart/cartinsert"> 
      <div class="detail-flex">
         <div class="detail-left">
            <section class="detail-section">
               <div class="detail-section-image">
                  <div class="swiper-container">
                     <div class="swiper-slide">
                        <div class="swiper-container swiper-container-v">
                        <c:forEach items="${productDetailList}" var="productVO"> 
                           <div class="swiper-wrapper">
                            <input type="hidden" name="pseq" value="${productVO.pseq}">
                              <div class="swiper-slide">
                              <img class="imageMain" src="/waitdo/WDImage/${productVO.image}">
                              </div>
                              <div class="swiper-slide"><img class="imageMain" src="/waitdo/WDImage/${productVO.image_detail}"/></div>
                              <div class="swiper-slide"><img class="imageMain" src="/waitdo/WDImage/${productVO.image_detail2}"/></div>
                              <div class="swiper-slide"><img class="imageMain" src="/waitdo/WDImage/${productVO.image_detail3}"/></div>
                              <div class="swiper-slide"><img class="imageMain" src="/waitdo/WDImage/${productVO.image_detail4}"/></div>
                           </div>
                           </c:forEach>
                           <div class="swiper-pagination swiper-pagination-v"></div>
                        </div>
                     </div>
                     <!-- Add Pagination -->
                     <div class="swiper-pagination"></div>
                  </div>
               </div>
               <div class="detail-section-image-bar"></div>
            </section>
            <div class="detail-expandable">
               <div class="detail-expandable-text">
                  <img class="detail-expandable-text-img" alt=""
                    src="/waitdo/WDImage/Detail.png">
               </div>
            </div>
         </div>
         <div class="detail-right">
            <c:forEach items="${productDetailList}" var="productVO">
            <div class="detail-right-sup">
               <div class="product-detail-info">
                  <div class="product-detail-info__header">
                  <input type="hidden" name="pseq" value="${productVO.pseq}">        
                     <h1 class="product-detail-info__header-name">${productVO.name}</h1>
                  
                  </div>
                  <div class="product-detail-description">
                     <div class="expandable-text">
                        <div class="expandable-text__content">
                           <div class="expandable-text__inner-content">
                             <p>${productVO.content}</p>
                           </div>
                        </div>
                     </div>
                  </div>
                  <p
                     class="product-detail-selected-color-product-detail-info__color">color
                    ${productVO.color} | ${productVO.pseq}
                  <div class="product-detail-info__price">
                     <div class="product-detail-info__price-amount price">
                        <span class="price__amount-wrapper"> <span
                           class="price__amount"> <span
                              class="price-current__amount">
                                 <div class="money-amount">
                                    <span class="money-amount__main">
                                  <fmt:formatNumber value="${productVO.price2}" pattern="###,###,###"/> 원</span>
                                 </div>
                                  <br>         
	                                 <div>
	                     			<input type="text" name="quantity" size="2" value="1">
	                     			</div>
                           </span>
                        </span>
                        </span>
                     </div>
                  </div>
                  <div
                     class="product-detail-size-selector-product-detail-info__size-selector-product-detail-size-selector--is-open-product-detail-size-selector--expanded">
                     <div class="product-detail-size-selector__size-list-wrapper"
                        tabindex="-1" aria-label="사이즈를 선택하세요">
                        <ul class="product-detail-size-selector__size-list">
                           <li tabindex="-1" class="product-detail-size-info__size">
                              <div id="li-1">
                                 <div class="product-detail-size-selector__size-list-item">
                                    <label id="detail-span-1"> <input type="radio" name="size" 
                                    value="${productVO.size}" class="detail-radio">${productVO.size}
                                    </label>
                                 </div>
                              </div>
                           </li>
                           <!-- <li tabindex="-1" class="product-detail-size-info__size"><div
                                 id="li-2" class="active">
                                 <div class="product-detail-size-selector__size-list-item">
                                    <label id="detail-span-2">
                                       <input type="radio" name="size" value="M" class="detail-radio"> M (KR 66)
                                    </label>
                                 </div>
                              </div>
                           </li>
                           <li tabindex="-1" class="product-detail-size-info__size">
                              <div id="li-3">
                                 <div class="product-detail-size-selector__size-list-item">
                                    <label id="detail-span-3">
                                       <input type="radio" name="size" value="L" class="detail-radio"> L (KR 77)
                                    </label>
                                 </div>
                              </div>
                           </li> -->
                        </ul>
                     </div>
                     <div class="product-cart-buttons-cart">
                        <button class="button__lines-wrapper">
                           <span>장바구니</span>
                        </button>
                     </div>
                  </div>
               </div>
            </div>
            </c:forEach>
         </div>
      </div>
      </form>
   </div>
   <script>
      var swiperV = new Swiper('.swiper-container-v', {
         direction : 'vertical',
         spaceBetween : 50,
         pagination : {
            el : '.swiper-pagination',
            type : 'progressbar',
         },
      });
   </script>
   <script type="text/javascript">
function go_cart(){
	if(document.form.quantity.value ==""){
		alert("수량을 입력해 주세요");
		document.form.quantity.focus();	
	}else {
		document.form.action="/waitdo/cart/cartinsert";
		document.form.submit();
	}
}
</script>
</body>
</html>