<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../WDHeader.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
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

p.sub_tit {
	
}

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
	font-family: 'Montserrat', 'NanumBarunGothic', 'Noto Sans KR',
		sans-serif;
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

table {
	
}

h1, h2, h3, h4, h5, h6 {
	font-weight: normal;
}

img, fieldset, button {
	border: 0 none;
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

.tit-tb-list {
	margin-top: 30px;
	font-size: 12px;
	color: #5f5f5f;
	padding-left: 10px;
}

.table-d2-list {
	border-top: 2px solid #cdcdcd;
	border-bottom: 1px solid #cdcdcd;
}

.table-d2-list thead th {
	padding: 6px 0;
	background-color: #ededed;
	border-bottom: 2px solid #cdcdcd;
}

.table-d2-list tbody td {
	line-height: 30px;
	padding: 6px 0 5px;
	border-bottom: 1px dashed #e3e3e3;
}

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

.hidden {
	position: absolute;
	left: -9999px;
}

#footer {
	min-width: 1920px;
}
</style>
<meta charset="UTF-8">
<title>Qna List</title>
</head>
<body>
	<article style="float: middle;">
		<div class="loginMargin" style="background-color: white;">
			<!--주문내역-->
			<div class="mpMain">
				<h2 class="mpMain_Tit">
					문의내역
					<p class="sub_tit">문의하신 내역과 답변 내용을 확인하실 수 있습니다</p>
				</h2>
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
												<col width="20%" />
												<col width="20%" />
												<col width="20%" />
												<col width="20%" />
											</colgroup>
											<thead>
												<tr>
													<th scope="row"><div class="tb-center">작성 날짜</div></th>
													<th scope="row"><div class="tb-center">제목</div></th>
													<th scope="row"><div class="tb-center">내용</div></th>
													<th scope="row"><div class="tb-center">답변현황</div></th>
													<th scope="row"><div class="tb-center">관리</div></th>
												</tr>
											</thead>
											<tbody>

												<c:forEach items="${qna}" var="qnalist">
													<tr>
														<td><div class="tb-center">${qnalist.indate}</div></td>
														<td><div class="tb-left pr_name tb-bold">${qnalist.subject}
															</div></td>
														<td><div class="tb-center">${qnalist.content}</div></td>
														<c:choose>
															<c:when test="${qnalist.reply == null}">
																<td><span style="color: blue">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;진행중</span></td>
															</c:when>
															<c:when test="${qnalist.reply != null}">
																<td><a class="header-member"
																	href='/waitdo/helpmenu/qnaReply?qseq=${qnalist.qseq}'><span
																		style="color: #29B213;">답변 완료</span></a></td>
															</c:when>
														</c:choose>
														<c:choose>
															<c:when test="${qnalist.reply == null}">
																<td><a class="header-member"
																	href='/waitdo/helpmenu/qnaDelete?qseq=${qnalist.qseq}'>
																		<span style="color: red">취소</span>
																</a></td>
															</c:when>
															<c:when test="${qnalist.reply != null}">
																<td><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-</span></td>
															</c:when>
														</c:choose>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
									<div class="qna-list-footer-body-button">
										<a class="header-member" href="/waitdo/helpmenu/qnaInsert">
											<span class="
					qna-footer-body-block">1:1 문의 작성</span>
										</a>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</article>
</body>
</html>