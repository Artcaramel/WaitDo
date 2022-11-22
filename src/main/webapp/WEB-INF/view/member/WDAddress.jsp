<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../WDHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="loginMargin" id="box" style="background-color: white;">
		<main>
			<article>
				<div class="in-container">
					<div class="acc-add-title">
						<div class="acc-div-title-container">
							<h1>
								<span>주소</span>
							</h1>
						</div>
						<c:set var="member" value="${member}" />
						<div class="address-list-footer-body-button">
							<a class="header-member" href="/waitdo/member/addressAdd"> <span
								class="
					qna-footer-body-block">주소 추가</span>
							</a>
						</div>
					</div>
					<div>${member.name}</div>
					<p>
						<span dir="ltr" class="phone-size">+82 ${member.phone}</span>
					</p>

					<div class="address-box">
						<div>
							<div>
								<c:forEach var="address" items="${addressList}">
									<p class="contents-p">${address.getZipcode() }</p>
									<p class="contents-p">${address.getAddress1() }</p>
									<p class="contents-p">${address.getAddress2() }</p>
									<div class="address-list-footer-body-button">
										<a class="header-member"
											href="/waitdo/member/addressDelete?mno=${address.getMno()}">
											<span class="
					qna-footer-body-block">주소 삭제</span>
										</a>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</article>
		</main>
	</div>
</body>
</html>