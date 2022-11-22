<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../WDHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="loginMargin" id="box" style="background-color: white;">
		<main class="layout__main" id="main">
			<article class="layout__article">
				<div>
					<div>
						<div>
							<div>
								<div>
									<div>
										<c:set var="selectEmail" value="${FindEmail}" />
										<c:choose>
											<c:when test="${selectEmail != null}">
												<center>
													<div>
													<h1>
														<span>찾으시는 이메일은 </span>"${selectEmail.email}" <span>입니다</span>
													</h1>
													</div>
												</center>
												<center>
													<div>
														<a href="/waitdo/member/findPwdForm"
															style="margin-buttom: 40px;"> 비밀번호 찾기</a>
													</div>
												</center>
											</c:when>
											<c:when test="${selectEmail == null}">
												<center>
													<div>
														<h1>
														<span>해당하는 정보의 이메일은 존재하지 않습니다</span>
														</h1>
													</div>
												</center>
												<center>
													<div>
														<a href="/waitdo/member/findEmailForm"
															style="margin-buttom: 40px;"> 이메일 찾기</a>
													</div>
												</center>
											</c:when>
										</c:choose>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</article>
		</main>
	</div>

</body>
</html>