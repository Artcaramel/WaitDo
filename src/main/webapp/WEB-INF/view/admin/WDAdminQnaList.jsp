<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./WDAdminHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<style>
table {
	width: 100%;
	border: 1px solid #444444;
	border-collapse: collapse;
    background-color: #F1E76A;
  
}

th, td {
	border: 1px solid #444444;
	padding: 10px;
	font-size: 13px;
}
</style>
<meta charset="UTF-8">
<title>1:1 Qna List</title>
</head>
<body>
<div class="loginMargin" id="box" style="background-color: white;">
				<main class="layout__main" id="main">
					<article class="layout__article">
						<div>
							<div>
								<div>
									<h1>
										<span>1:1 문의내역</span>
									</h1>
								</div>
								<div></div>
							</div>
							<form autocomplete="off" method="POST">

								<div>
									<div>
										<div>
											<div>
												<div
													style="border: 1px solid white; float: left; width: 100%;">
													<table>
														<tr>
															<th>번호</th>
															<th>이메일</th>
															<th>제목</th>
															<th>내용</th>
															<th>사용자 작성 날짜</th>
															<th>설정</th>
															<th>관리</th>
															
														</tr>
														<c:forEach items="${qnalist}" var="qna">
															<tr>
																<td>${qna.qseq}</td>													
																<td>${qna.id}</td>															
																<td>${qna.subject}</td>															
																<td>${qna.content}</td>															
																<td>${qna.indate}</td>
																<c:choose>
																<c:when test="${qna.reply == null}">																															
																<td><a class="header-member" href='/waitdo/admin/adminQnaReply?qseq=${qna.qseq}'><span style="color:blue;">답변하기</span></a></td>
																</c:when>
																
																<c:when test="${qna.reply != null}">
																<td><span style="color:#ED1F73;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;답변완료</span></td>
																</c:when>
																</c:choose>																																											
																<td><a class="header-member"
																	href='/waitdo/admin/qnaAdminDelete?qseq=${qna.qseq}'>
																		<span style="color: red">삭제</span>
																</a></td>																															
															</tr>
														</c:forEach>
													</table>
												</div>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</article>
				</main>
			</div>
	
</body>
</html>