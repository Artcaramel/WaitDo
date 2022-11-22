<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../WDHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function Check() {
		var zipcode = document.getElementById('zipcode');
		var address1 = document.getElementById('address1');
		var address2 = document.getElementById('address2');
		if (zipcode.value == "") {
			alert("우편번호를 입력해 주세요");
			zipcode.focus();
			return false;
		} else if (address1.value == "") {
			alert("주소를 입력해 주세요");
			address1.focus();
			return false;
		} else if (address2.value == "") {
			alert("상세주소를 입력해 주세요");
			address2.focus();
			return false;
		} else {
			alert("주소등록이 완료 됐습니다");
		}

		return true;
	}
</script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>주소록 추가</title>
</head>
<body>
	<c:set var="member" value="${member}" />
	<div class="loginMargin" id="box" style="background-color: white;">
		<main class="layout__main" id="main">
			<article class="layout__article">

				<div class="in-container">
					<div class="acc-div-title">
						<div class="acc-div-title-container">
							<h1>
								<span>새로운 주소</span>
							</h1>
						</div>
					</div>
					<form class="" id="address-form" autocomplete="off"
						action="/waitdo/member/addressAdd" onsubmit="return Check();"
						method="POST">
						<div class="">
							<div class="">
								<div class="">
									<div class="">
										<div class="">							
										<div class="address-div-hihi">
											<input type="hidden" class="" value="${member.email}"
												id='email' name="email" readonly>
										</div>
										<div class="address-div-hihi">
											<input class="" value="${member.name}" readonly><label
												class="">이름</label>
										</div>
									</div>
								</div>
							</div>
							<div class="">
								<div class="">
									<div class="">
										<div class="address-div-hihi">
											<input type="text" class="" id='zipcode' name="zipcode"><label
												class="">우편번호</label>
										</div>
									</div>
								</div>
								<div class="logout-footer-body-button">
									<button class="logout-footer-body-block" type="button"
										id="address_kakao">우편번호 찾기</button>
								</div>
							</div>
							<div class="">
								<div class="">
									<div class="">
										<div class="address-div-hihi">
											<input type="text" class="" id='address1' name="address1"><label
												class="">주소</label>
										</div>
									</div>
								</div>
							</div>
							<div class="">
								<div class="">
									<div class="">
										<div class="address-div-hihi">
											<input type="text" class="" id='address2' name="address2"><label
												class="">상세 주소</label>
										</div>
									</div>
								</div>
							</div>
							<div class="">
								<div class=""> 
									<div class="">
										<div class="">
											<div class="address-div-hihi">
												<!--                                    <select
                                       class=""
                                       ><option
                                          value="KR">대한민국</option></select><label
                                       class="">지역</label> -->
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="">
								<div class="" style="max-width: 80px;">
									<div class="form-input__wrapper">
										<div class="form-input-label">
											<!-- <input class="">지역 번호</label> -->
										</div>
									</div>
								</div>
								<div class="">
									<div class="">
										<div class="address-div-hihi">
											<input class="" value="${member.phone}" readonly><label
												class="">전화</label>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="logout-footer-body-button">
							<button class="logout-footer-body-block" type="submit">
								주소 저장</button>
						</div>
						<!-- <input type="submit" id="" class=""> -->
					</form>
				</div>
			</article>
		</main>
	</div>
</body>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	window.onload = function() {
		document
				.getElementById("address_kakao")
				.addEventListener(
						"click",
						function() { //주소입력칸을 클릭하면
							//카카오 지도 발생
							new daum.Postcode(
									{
										oncomplete : function(data) { //선택시 입력값 세팅
											document.getElementById('address1').value = data.address; // 주소 넣기
											document.getElementById('zipcode').value = data.zonecode; // 주소 넣기
											document.querySelector(
													"input[name=address2]")
													.focus(); //상세입력 포커싱
										}
									}).open();
						});
	}
</script>
</html>