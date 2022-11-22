<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../WDHeader.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="dto.ProductDto"%>
<%@ page import="dto.CartDto"%>
<%@ page import="dto.OrderDto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WDCartListPage</title>
<link href="../WDCart.css" rel="stylesheet">
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<script type="text/javascript"
   src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
function count(type,pseq)  {
     // 결과를 표시할 element
     const resultElement = document.getElementById(pseq);
     // 현재 화면에 표시된 값
     let number = resultElement.innerText;
     var sum= 0;
     // 더하기/빼기
     if(type === 'plus') {
       number = parseInt(number) + 1;
      
     }else if(type === 'minus')  {
        if(number==1){
           const target = document.getElementById('minus_button');
           target.disabled = true;
        }else{
           number = parseInt(number) - 1;
          
        }
     }
        update(number,pseq)        
     function update(number,pseq){
        window.location.href="updateCart?pseq="+pseq+"&quantity="+number;
     }    
   }   
</script>
<script type="text/javascript">
   function go_order(){ 
         document.form.action="/waitdo/cart/orderinsert";
         document.form.submit();
            }
         } 
   </script>
<script type="text/javascript">
   $("document").ready(function() {
      // 문서의 dom이 준비되면
      // .mySwiper 클래스를 swiper 슬라이더로 만듦
      // 이후에 swiper변수에 할당했기 때문에 스크립트로 제어할 수도 있음.
      var swiper = new Swiper(".mySwiper", {
         slidesPerView : 'auto',
         spaceBetween : 80,
         loop : false,
         // pagination 기본은 bullet
         pagination : {
            el : ".swiper-pagination"
         },
         // 좌우 화살표 navigation element 지정
         navigation : {
            nextEl : ".swiper-button-next",
            prevEl : ".swiper-button-prev"
         },
         // 반응형
         breakpoints : {
            // 600px 이하가 되면 슬라이드 간 간격을 0으로
            600 : {
               spaceBetween : 0
            },
         },
         on : {
            init : function() {
               $('.swiper-slide').addClass('changed');
               // fraction에 현재 인덱스와 전체 인덱스 표시
               // this.loopedSlides는 loop, slidesPerView: 'auto'일 때 제대로 동작
               $('.custom-fraction .current').text(this.realIndex + 1);
               $('.custom-fraction .all').text(this.loopedSlides);
               // console.log(this);
               // console.log(this.loopedSlides)
            },
            slideChangeTransitionStart : function() {
               // 기본적으로 제공하는 swiper-slide-active 클래스를 이용해
               // css transition 애니메이션 작성 가능하다.
               // 다만 루프 모드일 때에는 루프 픽스를 하며 slide를 바꿔치기를 하는데,
               // 이 때 플리커링이 발생할 수 있다.
               // css transition을 서로 다르게 설정한 changed, changing 클래스를 이용
               $('.swiper-slide').addClass('changing');
               $('.swiper-slide').removeClass('changed');
               // 페이지 넘어갈 때마다 fraction 현재 인덱스 변경
               $('.custom-fraction .current').text(this.realIndex + 1);
            },
            slideChangeTransitionEnd : function() {
               // changing : transition O
               // changed : transition X
               $('.swiper-slide').removeClass('changing');
               $('.swiper-slide').addClass('changed');
            }
         },
      });
      // 슬라이더 할당한 swiper로 슬라이더 제어
      $(".auto-start").on("click", function() {
         // 기본 설정으로 autoplay 시작
         console.log("autoplay start");
         swiper.autoplay.start();
      });

      $(".auto-stop").on("click", function() {
         console.log("autoplay stop");
         swiper.autoplay.stop();
      });
   });
</script>
</head>
<body>
   <div class="loginMargin" style="background-color: white;">
      <main>
         <form method="get" name="form" action="/waitdo/cart/orderinsert">
            <div class="cart-nav-layout">
           <%--  <c:when test=" "></c:when> 에러로 인하여 주석 --%>
               <nav>
                  <div class="cart-nav-row">
                     <ul class="cart-nav-row-ul">
                        <li class="cart-nav-row-li"><a class="layout_link"
                           href="/waitdo/cart/cartlist" tabindex="0"><span
                              class="cart-nav-row-active"><span>Cart List  (${CartCount})</span>
                                 <div class="bigtext right-align sumcount" id="sum_p_num">
                                 <!--   (9) --> <!-- 이부분은 카트리스트 값 DB에서 가져오기 --></span></a></li>
                        <li class="cart-nav-row-li"><a class="layout_link"
                           href="wishlist" tabindex="0">
                          <!-- <span class="cart-nav-row-none"><span>Wishlist</span>  --> <svg
                                    class="header-icon" xmlns="http://www.w3.org/2000/svg"
                                    width="24" height="24" fill="none" viewBox="0 0 24 24">
                                 <path
                                       d="M6 4h12v16.707l-6-6-6 6V4zm1 1v13.293l5-5 5 5V5H7z"
                                       clip-rule="evenodd"></path>
                                 </svg></span></a></li>
                     </ul>
                  </div>
               </nav>
            </div>
            <div class="fade-in-cart">
               <div class="cart-header">
                  <p class="cartMsg">장바구니에 담긴 상품은 구매가 완료될 때까지 예약되지 않습니다.</p>
               </div>
            </div>
            <div>
               <div class="carousel-header">
                  <div class="carousel-header-control"></div>
               </div>
               <div class="cart-view-div">
                  <div class="wrapper">
                     <!-- Swiper -->
                     <div class="swiper mySwiper">
                        <div class="swiper-wrapper">
                           <c:set var="total" value="0" />
                           <c:set var="count" value="0" />
                           <%!int i = 1;%>
                           <c:set var="i" value="<%=i%>" />
                           <c:forEach items="${listCartProduct}" var="cartVO">
                              <div class="swiper-slide" id="slide${i}">
                                 <div class="cart-item-view">
                                    <div class="cart-item-header">
                                       <a class="cart-item-header-a"></a>
                                    </div>
                                    <div class="cart-item-header-image-container">
                                       <div class="cart-item-header">
                                          <a class="cart-item-header-a"
                                             href="/waitdo/product/detail?pseq=${cartVO.pseq}">${cartVO.pname}</a>
                                       </div>
                                       <!-- <a href="/waitdo/cart/cartdelete?cseq=${cartVO.cseq}"> 삭제 </a> -->
                                       <a class="cart-item-header-image-link"
                                          href="/waitdo/product/detail?pseq=${cartVO.pseq}">
                                          <div class="cart-item-header-image">
                                             <img class="cart-item-header-image-img"
                                                src="/waitdo/WDImage/${cartVO.image}">
                                             <!-- 해당 이미지 DB에서 가져오기 -->
                                          </div>
                                       </a>
                                    </div>
                                 </div>
                                 <div class="cart-item-header-deails-content">
                                    <div class="cart-item-header-b">
                                       <a class="cart-item-header-a"></a>
                                    </div>
                                    <div class="cart-item-header-deails-content-base">
                                       <span class="cart-base-reference"><span>상품번호</span>
                                          | ${cartVO.pseq} / ${cartVO.cseq}</span> <br> <span
                                          class="cart-base-color">${cartVO.color}</span> <br> <span
                                          class="cart-base-size">${cartVO.size}</span>
                                       <div>
                                          <!--    <button type="minus" id="minus_button" aria-label="한 개 삭제하기"
                                             class="cart-item-quantity-decrease" onclick="count(minus, ${cartVO.pseq})">-</button>-->

                                          <button type="button" id="minus_button"
                                             aria-label="한 개 삭제하기" class="cart-item-quantity-decrease"
                                             onclick='count("minus", ${cartVO.pseq})'>-</button>

                                          <%--  <span class="cart-item-units" id="${cartVO.pseq}">${cartVO.quantity}<!-- DB에서 담아놓은 갯수 가져오기 --></span> --%>
                                          <div class="cart-item-units" id="${cartVO.pseq}">${cartVO.quantity}<!-- DB에서 담아놓은 갯수 가져오기 -->
                                          </div>
                                          <button type="button" id="plus_button"
                                             aria-label="한 개 더 추가하기"
                                             class="cart-item-quantity-increase"
                                             onclick="count('plus', ${cartVO.pseq})">+</button>
                                       </div>
                                    </div>
                                    <c:set var="total" value="${total + cartVO.price2*cartVO.quantity}" />
                                    <div class="cart-item-header-deails-content-pricing">
                                       <p class="cart-item-header-deails-content-pricing-p">
                                          <fmt:formatNumber value="${cartVO.price2}"
                                             pattern="###,###,###" />
                                          원
                                          <!-- 개수의 따른 가격 연산 후 출력 -->
                                       </p>
                                    </div>
                                    <!--  <div class="cart-item-actions">
                                       <button class="cart-item-action">좋아요</button>
                                       <button class="cart-item-action">Cart에서 삭제하기</button>
                                    </div> -->
                                    <button class="cart-item-action">
                                       <a href="/waitdo/cart/cartdelete?cseq=${cartVO.cseq}">
                                          Cart에서 삭제하기</a>
                                    </button>
                                 </div>
                              </div>
                           </c:forEach>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="cart-footer">
               <div class="cart-footer-body">
                  <div class="cart-footer-body-block-1">
                     <div class="cart-footer-body-block-1-table">
                        <table class="cart-footer-body-block-1-table-1">
                           <tbody>
                              <tr>
                                 <th id="cart-order-gun"><span>총</span></th>
                                 <!-- 총합 가져오기 -->
                                 <td class="cart-order-total"><c:out value="${total}" />
                                    원</td>
                              </tr>
                           </tbody>
                        </table>
                        <div class="cart-footer-body-block-1-table-2">
                           <span>* 부가세 포함</span>
                        </div>
                     </div>
                  </div>
                  <div class="cart-footer-body-block-2">
                     <button type="submit" class="cart-footer-body-button"
                        onclick="go_order()">계속</button>
                  </div>
               </div>
            </div>
         </form>
      </main>
   </div>
</body>
</html>