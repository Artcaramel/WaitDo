<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../WDHeader.jsp"%>
<%@ page import="dto.ProductDto" %>
<%@ page import="dto.OrderDto" %>  
<%@ page import="dto.CartDto" %>
<%@ page import="dto.MemberDto" %>      
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
   function go_checkout(){ 
         document.form.action="/waitdo/cart/orderinsert";
         document.form.submit();
            }
         } 
</script>
<style type="text/css">
	.solid {border:2px solid #F0F;}	
	 table {
        width: 50%;
      }
	 th, td {
  		text-align: center;
			}     
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div class="loginMargin" style="background-color: white;">
   <main>
	<div class="sp-container">
     <article class="sp-article">
 	 <div class="sp-item-info">
		<form method="GET" name="form" action="/waitdo"> 
  		 <div class="cart-nav-layout">
  		 
					<img width="150" src="/waitdo/WDImage/shipping_home.PNG"/>
					 <h4> 물품을 배송받을 장소  </h4> 
			<c:set var="total" value="0"/>
				<c:forEach items="${orderlist}" var="orderVO">
							${orderVO.address1}    
							${orderVO.address2}   <br> <br>  	
	 				<a href="/waitdo/member/address">배송지 수정 및 추가하기</a>		
	 				
	 				<div>
					 <h1> 품목  </h1>
					<a href="/waitdo/product/detail?pseq=${orderVO.pseq}">
					<img width="150" src="/waitdo/WDImage/${orderVO.image}" >
					<!-- <a href="/waitdo/cart/detail?pseq=${cartVO.pseq}">  --><%-- 상품명을 눌렀을 때, 상품으로 이동하는 링크 --%> 	
					${orderVO.pname} 	<%-- 카트에 담은 상품명 --%></a>	<br><br>	
					주문수량 | ${orderVO.quantity} 	<%-- 카트에 담은 수량 --%><br>
				 결제금액 | <fmt:formatNumber value="${total + orderVO.price2*orderVO.quantity}" pattern="###,###,###"/> 원		<%-- 카트에 담은 상품의 가격 --%>
					</div>
					
			
			<!-- <c:set var="total" value="${total + orderVO.price2}"/> -->	
				</c:forEach> 
				</div>
					 <div class="cart-footer">
            <div class="cart-footer-body">
               <div class="cart-footer-body-block-1">
                  <div class="cart-footer-body-block-1-table">
                     <table class="cart-footer-body-block-1-table-1">
                        <tbody>
                           <tr>
                              <th id="cart-order-gun"><span>배송</span></th>
                              	
                              <td class="cart-order-total"></td>
                           </tr>
                        </tbody>
                     </table>
                  </div>
               </div>
               <div class="cart-footer-body-block-2">
                  <button type="submit" class="cart-footer-body-button" onclick="go_checkout()">결제 승인하기</button>
               </div>
            </div>	
         </div>
				</form>
			</div>	
		</article>
	</div> 
</main>
</div>
</body>
</html>