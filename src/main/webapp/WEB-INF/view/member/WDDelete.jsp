<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../WDHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function removeCheck() {
		/* 		if (confirm("정말 삭제하시겠습니까??") == true) {
		 document.removefrm.submit();
		 alert("그동안 WaitDo 서비스를 이용해주셔서 감사합니다");         NO를 눌러도 삭제가 돼버려서 수정
		 } else {
		 return false;
		 } */
		alert("그동안 WaitDo 서비스를 이용해주셔서 감사합니다");
	}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="loginMargin" id="box"
		style="background-color: white; width: 15%;">
		<form action="/waitdo/member/delete" name="removefrm" method="post">
			<main>
				<article>
					<div class="in-container">
						<div class="acc-div-title">
							<div class="acc-div-title-container">
								<h1>
									<span>계정 삭제</span>
								</h1>
							</div>
						</div>
						<div class="acc-div-delete">
							<div class="delete-Explanation">
								<div>
									<span>계정 삭제 절차를 시작하고 계십니다. 모든 관련 정보는 시스템에서 영원히 삭제됩니다. 이
										작업은 취소되지 않습니다.</span>
								</div>
								<div class="explanation-size32px"></div>
								<div class="explanation-div">
									<span>유의:</span>
								</div>
								<div class="explanation-size20px"></div>
								<div class="explanation-div">
									<span>구매, 반품 및/또는 교환을 추적할 수 없게 됩니다.</span>
								</div>
								<div class="explanation-size12px"></div>
								<div class="explanation-div">
									<span>WaitDo에서 계정에 액세스할 수 없게 됩니다.</span>
								</div>
								<div class="explanation-size12px"></div>
								<div class="explanation-div">
									<span>구매하신 상품의 반품/교환 기간이 만료되면 계정이 삭제될 것입니다.<br> 계속을
										누르게 되면 삭제 요청이 가게 됩니다.진짜로 하시겠습니까?
									</span>
								</div>
							</div>

							<div class="form-column"></div>
							<div class="form-column"></div>

							<div class="logout-footer-body-button">
								<button class="delete-footer-body-block" type="submit"
									onclick="removeCheck()">계속</button>
							</div>
						</div>
					</div>
				</article>
			</main>
		</form>
	</div>
</body>
</html>