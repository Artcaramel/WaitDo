<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../WDHeader.jsp"%>
<%@ page import="dto.ProductDto" %>
<%@ page import="dto.OrderDto" %>  
<%@ page import="dto.CartDto" %>
<%@ page import="dto.MemberDto" %>      
<!DOCTYPE html>
<html>
<head>
  <script type="text/javascript">
   function go_pay(){ 
			document.form.action="/waitdo/payment";
			document.form.submit();
				}
			} 
   </script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div class="loginMargin" style="background-color: white;">
   <main>
	<div class="sp-container">
  <article class="sp-article">
 	 <div class="sp-item-info">
		<form method="GET" name="form" action="/waitdo/payment"> 
  		 <div class="cart-nav-layout">
			<c:set var="total" value="0"/>
				<c:forEach items="${orderlist}" var="orderVO">
					<p> 물품을 배송받을 장소 </p> 
							${orderVO.address1}    
							${orderVO.address2}   <br>   
	 				<p><a href="/waitdo/member/address"> 배송지 선택 및 추가 </a></p>
					<p> 품목 </p>
					<a href="/waitdo/cart/detail?pseq=${orderVO.pseq}">
					<img width="150" src="/waitdo/WDImage/${orderVO.image}" >
					<!-- <a href="/waitdo/cart/detail?pseq=${cartVO.pseq}">  --><%-- 상품명을 눌렀을 때, 상품으로 이동하는 링크 --%> 	
					${orderVO.pname} 	<%-- 카트에 담은 상품명 --%></a>	<br><br>	
					${orderVO.quantity} 	<%-- 카트에 담은 수량 --%>
					₩ ${orderVO.price2} 	<%-- 카트에 담은 상품의 가격 --%>
					 <input type="checkbox" name="oseq" data-toggle="checkbox" value="${orderVO.oseq}">
			
				<c:set var="total" value="${total + orderVO.price2}"/>
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
                  <button type="submit" class="cart-footer-body-button" onclick="go_pay()">계속</button>
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