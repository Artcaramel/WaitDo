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
    background-color: #CCEEFF;
  
}

th, td {
	border: 1px solid #444444;
	padding: 10px;
}
</style>
<meta charset="UTF-8">
<title>Admin Member List</title>
</head>
<body>
			<div class="loginMargin" id="box" style="background-color: white;">
				<main class="layout__main" id="main">
					<article class="layout__article">
						<div>
							<div>
								<div>
									<h1>
										<span>회원 리스트</span>
									</h1>
									<span style="color: #ff00ff;">*관리자 계정은 분홍색</span>
								</div>
								<div></div>
							</div>
							<form autocomplete="off" method="POST">

								<div>
									<div>
										<div>
											<div>
												<div
													style="border: 1px solid white; float: left; width: 80%;">
													<table>
														<tr>
															<th>번호</th>
															<th>이메일</th>
															<th>비밀번호</th>
															<th>이름</th>
															<th>생년월일</th>
															<th>전화번호</th>
															<th>가입날짜</th>
															<th>설정</th>
														</tr>
														<c:forEach items="${member}" var="member">
															<tr>
																<td>${member.mno}</td>
																<c:choose>
																<c:when test="${member.adminyn == 'y'}">
																<td><span style="color: #ff00ff;">${member.email}</span></td>															
																</c:when>
																<c:when test="${member.adminyn == 'n'}">
																<td>${member.email}</td>															
																</c:when>							
																</c:choose>
																<td>${member.pwd}</td>															
																<td>${member.name}</td>															
																<td>${member.birth}</td>															
																<td>${member.phone}</td>															
																<td>${member.indate}</td>
																<c:choose>
																<c:when test="${member.useyn == 'n'}">																															
																<td><a class="header-member" href='/waitdo/admin/adminMemberDelete?mno=${member.getMno()}'><span style="color:red;">삭제</span></a></td>
																</c:when>																															
																<c:when test="${member.useyn == 'y'}">																															
																<td><span style="color:black;">요청없음</span></td>
																</c:when>	
																</c:choose>																														
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