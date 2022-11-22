<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../WDHeader.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="search" value="${searchList}" />
	<!-- 전체 박스 -->
	<div class="loginMargin" id="box" style="background-color: white;">
		<!-- 검색바 -->
		<div class="search-bar">
			<!-- div padding -->
			<div class="search-bar-line">
				<!-- form -->
				<h2 class="search-trends">
					<span>상품 검색</span>
				</h2>
				<form action="/waitdo/main/search" name="searchfrm" method="post">
					<div>
						<input type="text" name="searchName" placeholder="검색을 위해 입력하세요">
					</div>
					
					<div class="logout-footer-body-button">
								<button type="submit">검색</button>"${search.content}"
							</div>
				</form>
			</div>
		</div>
		<!-- 인기 검색어 -->
		<!-- <div>
			레이아웃 div
			<div class="search-best-layout">
				<h2 class="search-trends">
					<span>트렌드</span>
				</h2>
				li 안에는 가장 검색 많이한 키워드를 카운트해서 DB에서 가져오기
				<ul>
					<li>
						<button>원피스</button>
					</li>
					<li>
						<button>점프수트</button>
					</li>
					<li>
						<button>가디건	</button>
					</li>
					<li>
						<button>페플럼</button>
					</li>
				</ul>
			</div>
		</div> -->
	</div>
</body>
</html>
