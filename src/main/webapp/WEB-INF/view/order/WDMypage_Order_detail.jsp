<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ include file="../WDHeader.jsp"%>
<%@ page import="dto.ProductDto" %>
<%@ page import="dto.OrderDto" %>
<%@ page import="dto.CartDto" %>    
<!DOCTYPE html>
<html>
<head>	
<style type="text/css">
.mpMain .mpMain_Tit .sub_tit {
    margin-top: 5px;
    font-size: 13px;
    font-weight: normal;
    color: #9a9a9a;
    border-bottom: 3px solid #141414;
    padding-bottom: 15px;
}
table {
    width: 100%;
    border-collapse: collapse;
    border-spacing: 0;
    table-layout: fixed;
    word-wrap: break-word;
    word-break: keep-all;
}
table {
    display: table;
    border-collapse: separate;
    box-sizing: border-box;
    text-indent: initial;
    border-spacing: 2px;
    border-color: grey;
}
 table {
        width: 100%;
      }
 th, td {
  text-align: center;
}    
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
p.sub_tit {}
h2 {
    display: block;
    font-size: 1.5em;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
h1, h2, h3, h4, h5, h6 {
    font-weight: normal;
} 
img, fieldset,button {
    border:0 none;
}
img {
    vertical-align: top;
}
body {
    margin: 0px;
    padding: 0px;
    font-family: 'Montserrat', 'NanumBarunGothic', 'Noto Sans KR', sans-serif;
    font-size: 14px;
}
col {
    display: table-column;
}
.table-d2-list tbody td {
    line-height: 30px;
    padding: 8px 0 5px;
    border-bottom: 1px dashed #e3e3e3;   
}
.tit-tb-list { margin-top: 30px; font-size: 12px; color: #5f5f5f; padding-left: 10px; }
.table-d2-list { border-top: 2px solid #cdcdcd; border-bottom: 1px solid #cdcdcd; }
.table-d2-list thead th { padding: 6px 0; background-color: #ededed; border-bottom: 2px solid #cdcdcd; }
.table-d2-list tbody td { line-height: 30px; padding: 6px 0 5px; border-bottom: 1px dashed #e3e3e3; }
.table-d2-list {
    border-top: 2px solid #cdcdcd;
    border-bottom: 1px solid #cdcdcd;
}
.tb-bold {
    font-weight: bold;
}
.tb-center {
    text-align: center;
}
#myOrder .table-d2-list thead th {
    padding: 15px 0 15px 0;
    background-color: #ffffff;
    border-bottom: 1px solid #cdcdcd;
}
div {
    display: block;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div class="loginMargin" style="background-color: white;">
  <main>
	<article style="float: middle;">
		<!--????????????-->            
       <div class="mpMain">
      	 <div id="myOrder">
           <h2 class="mpMain_Tit">ORDER INFORMATION
           	<c:set value="${mypageOrderListDetail}" var="orderinfo"/> 
           <p class="sub_tit">${orderinfo[0].mname}????????? 
           		<fmt:formatDate value="${orderinfo[0].indate}" pattern="yyyy-MM-dd"/> ???????????? ???????????????.</p></h2>
          
			  <!-- <h1>My Page(?????? ?????? ??????)</h1> --> 
	     <form method="GET" name="form"> 
	      <div class="table-d2-list">
	      <table id="mypage-orderlist-detail">
	       <colgroup align="center">
                       <col width="150%" />
                       <col width="200%" />
                       <col width="150%" />
                       <col width="400%" />
                        
           </colgroup>
	       		<thead>
                  <tr>
                      <th scope="row"><div class="tb-center">????????????</div></th>
                      <th scope="row"><div class="tb-center">?????????</div></th>
                      <th scope="row"><div class="tb-center">????????????</div></th>
                      <th scope="row"><div class="tb-center">?????????</div></th>                    
                  </tr>
              </thead>
	      <!--    <tr>
	         	<th><label> ???????????? </label> </th>
	            <!--    <th><label> ????????????  </label></th>
	            <th><label> ????????? </label></th>
	            <th><label> ?????? </label></th>
	         </tr> -->
	          <tbody> 
	         <tr>
	         <c:set var="total" value="0"/>
	          <c:forEach items="${mypageOrderListDetail}" var="detailVO">
	          <tr>
	            <td><fmt:formatDate value="${detailVO.indate}" pattern="yyyy-MM-dd"/></td> <%-- ???????????? --%>
	          <!--   <td> ${detailVO.oseq}</td> <%-- ???????????? --%>--> 
	            <td> ${detailVO.pname} </td>  <%-- ????????? --%>
	            <td>  <fmt:formatNumber value="${total + detailVO.price2*detailVO.quantity}" pattern="###,###,###"/>??? </td> 
	             <td> ${detailVO.address1}, ${detailVO.address2}</td>  <%-- ????????? --%>
	         </tr> 
	         </c:forEach> 
	         </tbody>  
	      </table> <br><br>
	      </div>
	      <h1><label> ???????????? ?????? </label></h1>
	      <table>
	         	<tr>
		            <td><label> ????????? ???????????? </label></td>
		            <td><label> ??????  </label></td>
		            <td><label> ?????? </label></td>
		            <td><label> ?????? ???????????? </label></td>
	        	 </tr>
	          <c:set var="total" value="0"/>
	          <c:forEach items="${mypageOrderListDetail}" var="detail_productVO"> 
	         	
		           <a href="/waitdo/product/detail?pseq=${detail_productVO.pseq}">
		            ${detail_productVO.pname} <%-- ????????? --%><br><br>
		            <img src="/waitdo/WDImage/${detail_productVO.image}" width="150"><br>
		           </a>
		           <tr>
		            <td> ${detail_productVO.odseq}</td>   <%-- ????????? ???????????? --%>
		            <td> ${detail_productVO.quantity} </td> <%-- ?????? --%>
		            <td> <fmt:formatNumber value="${total + detail_productVO.price2*detail_productVO.quantity}" pattern="###,###,###"/>???
		            <%--${detail_productVO.price2} </td> <%-- ?????? --%>
	             	<td> ????????? </td> <%--???????????? --%>
	         	</tr>   
	         </c:forEach>
	        </table> 
	      </form>
	      </div>
	      </div>
	   </article>	  
	 </main>
	</div>
	<div class="loginMargin" style="background-color: white;"/>
</body>
</html>