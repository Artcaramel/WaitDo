<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   function go_summary(){ 
			document.form.action="/waitdo/order_summary";
			document.form.submit();
				}
			} 
</script>			
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div class="loginMargin" id="box" style="background-color: white;">
	 <main>
	 	<form method="GET" action="/waitdo/order_summary">
	 		<c:set var="total" value="0"/>
			
				<div>
					<h1 style="">
						<span>결제 방법을 선택하세요.</span>
					</h1>			
				</div>
				
				<div style="border: 1px solid white; float: left; width: 15%;">
					<a class="layout_logo_link" href="/waitdo/paymentAdd"> <img
						src="/waitdo/WDImage/payment_creditcard.PNG"/>
					</a>
				</div>
				
				<div style="border: 1px solid white; float: left; width: 15%;">
					<a class="layout_logo_link"> <img
						src="/waitdo/WDImage/payment_in_card.PNG"/>
					</a>
				</div>
				
				<div style="border: 1px solid white; float: left; width: 15%;">
					<a class="layout_logo_link"> <img
						src="/waitdo/WDImage/payment_계좌이체.PNG"/>
					</a>
				</div>
				<div style="border: 1px solid white; float: left; width: 15%;">
					<a class="layout_logo_link"> <img
						src="/waitdo/WDImage/payment_에스크로.PNG"/>
					</a>
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
		                              <td class="cart-order-total"><c:out value="${total}"/> 원</td>
		                           </tr>
		                        </tbody>
		                     </table>
		                     <div class="cart-footer-body-block-1-table-2">
		                        <span>* 부가세 포함</span>
		                     </div>
		                  </div>
		               </div>
		               <div class="cart-footer-body-block-2">
		                  <button type="submit" class="cart-footer-body-button" onclick="go_summary()">계속</button>
		               </div>
		            </div>
		         </div>
      		 </form>
  		</main>
 	</div>      
</body>
</html>