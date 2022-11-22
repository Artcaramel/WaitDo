<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
body {
    margin: 0px;
    padding: 0px;
    font-family: 'Montserrat', 'NanumBarunGothic', 'Noto Sans KR', sans-serif;
    font-size: 14px;
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
table {}

h1, h2, h3, h4, h5, h6 {
    font-weight: normal;
}
img, fieldset,button {
    border:0 none;
}
img {
    vertical-align: top;
}
li {
    list-style: none;
}
hr, caption, legend {
    display: none;
}
a { 
    color: #000;
    text-decoration: none;
}
a:hover {
}
tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}
td {
    display: table-cell;
    vertical-align: inherit;
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
.tit-tb-list { margin-top: 30px; font-size: 12px; color: #5f5f5f; padding-left: 10px; }
.table-d2-list { border-top: 2px solid #cdcdcd; border-bottom: 1px solid #cdcdcd; }
.table-d2-list thead th { padding: 6px 0; background-color: #ededed; border-bottom: 2px solid #cdcdcd; }
.table-d2-list tbody td { line-height: 30px; padding: 6px 0 5px; border-bottom: 1px dashed #e3e3e3; }
.table-d2-list {
    border-top: 2px solid #cdcdcd;
    border-bottom: 1px solid #cdcdcd;
}
.table-d2-list tbody td {
    line-height: 30px;
    padding: 6px 0 5px;
    border-bottom: 1px dashed #e3e3e3;   
}
div {
    display: block;
}
col {
    display: table-column;
}
.hidden { position: absolute; left: -9999px; }

#footer{ min-width: 1920px;}    

}

</style>
</head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<article style="float: middle;">
     <div class="loginMargin" style="background-color: white;">
     <!--주문내역-->            
       <div class="mpMain">
           <h2 class="mpMain_Tit">주문내역
           <p class="sub_tit">상품명 또는 조회 버튼을 클릭하여 상세 내역을 확인하실 수 있습니다</p></h2>
         <div class="content">      
           <div id="myOrder">
             <div class="page-body">
               <div class="">   
              <!--  <h1>My Order</h1>--> 
                <form method="GET" name="form" action="/waitdo/orderlist_detail"> 
                  <div class="table-d2-list">
                      <table summary="주문일자, 상품명, 결제금액, 주문상세">
                      <colgroup>
                          <col width="20%" />
                          <col width="100%" />
                          <col width="20%" />
                          <col width="20%" />
                      </colgroup>
                         <thead>
                              <tr>
                                  <th scope="row"><div class="tb-center">주문일자</div></th>
                                  <th scope="row"><div class="tb-center">상품명</div></th>
                                  <th scope="row"><div class="tb-center">결제금액</div></th>
                                  <th scope="row"><div class="tb-center">주문조회</div></th>
                      
                              </tr>
                          </thead>
                  <!--   <tr>
                         <th><label> 주문일자 </label> </th>
                        <th><label> 주문번호  </label></th>
                        <th><label> 상품명 </label></th>
                        <th><label> 결제 금액 </label></th>
                        <th><label> 상세정보</label></th>
                     </tr> --> 
                     <tbody>
                        <c:set var="total" value="0"/>
                         <c:forEach items="${mypageOrderList}" var="mypageVO"> 
                           <tr>
                               <td><div class="tb-center">
                                  <fmt:formatDate value="${mypageVO.indate}" pattern="yyyy-MM-dd"/>
                               </div></td>
                               <td><div class="tb-left pr_name">${mypageVO.pname} </div></td>   
                               <td><div class="tb-center tb-bold">
                              
                                    <fmt:formatNumber value="${total + mypageVO.price2*mypageVO.quantity}" pattern="###,###,###"/>원</div></td>
                               <td><div class="tb-center">
                               <a href="orderlist_detail?oseq=${mypageVO.oseq}"><u>조회</u></a></div></td>
                                  
                           </tr>
                        </c:forEach>
                   </tbody>
            
             <%--    <c:set var="total" value="0"/>
                <c:forEach items="${mypageOrderList}" var="mypageVO"> 
                <tr>
               <td width="100"> <fmt:formatDate value="${mypageVO.indate}" pattern="yyyy-MM-dd"/></td> 
                 <!-- <td width="100">${mypageVO.oseq} </td>   
                  <td> ${mypageVO.pname} </td> 
                  <td> ₩ ${mypageVO.price2} </td> 
                  <td><a href="orderlist_detail?oseq=${mypageVO.oseq}"> 
                  조회</a></td>
               </tr>
               </c:forEach>   --%>   
               </table>      

             </div>	
           					 </form>
          				 </div>
        			 </div> 
      			 </div>  
     		 </div>
     	 </div>
      </div>
   </article>
   <div class="loginMargin" style="background-color: white;"/>
</body>
</html>