<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../WDHeader.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript">
	function nullCheck() {
		
		var emailch = $("#email").val();
		var em = emailch.search(/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/);
		var email = document.getElementById('email');
		var pwd = document.getElementById('pwd');
		var pwd2 = document.getElementById('pwd2');
		var pwdch = $("#pwd").val();
		var num = pwdch.search(/[0-9]/g);
		var eng = pwdch.search(/[a-z]/ig);
		var spe = pwdch.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
		var name = document.getElementById('name');
		var namech = $("#name").val();
		var nm = namech.search(/^[ㄱ-ㅎ|가-힣|a-z|A-Z|]+$/);
		var phone = document.getElementById('phone');
		var phonech = $("#phone").val();
		var ph = phonech.search(/^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/);
		var birth = document.getElementById('birth');
		var choice1 = document.getElementById('choice1');
		var choice2 = document.getElementById('choice2');
		var pwdcheck= /^[a-zA-Z0-9]{4,12}$/;
		
		
		if (email.value == "") {
			alert("이메일을 입력해 주세요");
			email.focus();
			return false;
		}else if(em < 0){
			alert("이메일의 양식이 틀립니다");
			return false;
		} else if (pwd.value == "") {

			alert("비밀번호를 입력해 주세요");
			pwd.focus();
			return false;
		} else if (pwd2.value == "") {

			alert("비밀번호 확인을 입력해 주세요");
			pwd2.focus();
			return false;
		} else if (pwd.value != pwd2.value) {
			alert("비밀번호와 비밀번호 확인이 같지 않습니다");
			return false;
		} else if (pwdch.length < 8 || pwdch.length > 20) {
			alert("비밀번호의 양식이 틀립니다");
			return false;
		}else if(num < 0 || eng < 0 || spe < 0 ){
			alert("비밀번호의 양식이 틀립니다");
			return false;
		} else if (name.value == "") {
			alert("이름을 입력해 주세요");
			name.focus();
			return false;
		} else if (namech.length < 2 || namech.length > 20) {
			alert("이름의 양식이 틀립니다");
			return false;
		}else if(nm < 0){
			alert("이름의 양식이 틀립니다");
			return false;	
		} else if (phone.value == "") {
			alert("핸드폰 번호를 입력해 주세요");
			phone.focus();
			return false;
		}else if(ph < 0){
			alert("핸드폰번호의 양식이 틀립니다");
			return false;
		} else if (birth.value == "") {
			alert("생년월일을 입력해 주세요");
			birth.focus();
			return false;
		} else if ($("input:checkbox[id='choice1']").is(":checked") != true) {
			alert("필수선택란을 체크해주세요");
			return false;
		} else if ($("input:checkbox[id='choice1s']").is(":checked") != true) {
			alert("필수선택란을 체크해주세요");
			return false;
		} else {
			return true;
		}

	}
	function selectAll(selectAll)  {
		  const checkboxes 
		       = document.getElementsByName('checkAll');
		  
		  checkboxes.forEach((checkbox) => {
		    checkbox.checked = selectAll.checked;
		  })
		}
	
/* 	function checkBox(obj){
		var checked = obj.checked;
		var choice1 = document.getElementById('choice1');
		var choice2 = document.getElementById('choice2');
		var choice3 = document.getElementById('choice3');
		var choice4 = document.getElementById('choice4');
		
		if($("input:checkbox[id='choice1']").is(":checked") == true){
			obj.value = 'y';
		}else{
			obj.value = 'n';
		}
	} */
	
/* 	function YnCheck(obj){
		var checked = obj.checked;
		if(checked){
			obj.value ='y';
		}else{
			obj.value ='n';
		}
	}; */
	
	
/* 	 function checkbox(){
			if($("#checkAll").is(':checked')==true){
				data.set("checkAll","y");
			}else{
				data.set("checkAll","n");
			}	
		};
			 */
		
/* 	function showHidden() {
		
	if($("#choice3").is(':checked')==true){
		data.set("choice3","y");
	}else{
		data.set("choice3","n");
	}
	
	} */
 	
/* 	function showHidden() {
	if($('input:checkbox[id=choice3]').is(':checked') == true){

		$('[id=choice3]').attr('value', 'Y');
	} 
	
} */


	/*         } else if(email11 == email.value) {
	 console.log("!eff"+email11);
	 alert("이미 존재하는 이메일이 있습니다. 다시 입력해주세요"+email11);
	 return false;			
	 } else if(email11 != email.value ){
	 console.log("!!!!"+email11);
	 alert("회원가입이 완료됐습니다"+email11);
	 return true; */
	/* 		} else if(${member.email} == email.value){
	 alert("이미 존재하는 이메일이 있습니다. 다시 입력해주세요");
	 return false; */

	/* 	function bincan() {
	 document.getElementById('a').innerText = "";
	 } */

	/* 	$(".form-column").on("click", "#choice1", function () {
	 var checked = $(this).is(":checked");

	 if(checked){
	 $(this).parents(".form-column").find('input').prop("checked", true);
	 } else {
	 $(this).parents(".form-column").find('input').prop("checked", false);
	 }
	 }); */
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="loginMargin" style="background-color: white;">
		<!-- 개인정보 -->
		<div>
			<h1 style="">
				<span>개인 정보</span>
			</h1>
		</div>
		<!-- Form -->
		<form style="margin-top: 32px;" action="/waitdo/member/join"
			onsubmit="return nullCheck();" method="post">
			<div class="wrapper ">
				<!-- Email div -->
				<div class="form-column">
					<div>
						<input type="text" id='email' name="email" placeholder="E-Mail"
							value='${ param.email }'> <span style="color: red">${existEmail}</span>
						<!-- <input type="text" id='email' name="email" placeholder="E-Mail"> -->
						<%-- <div class="a" id ="a">
	                  ${existEmail}
                  </div> --%>
					</div>
					<span style="font-size: 8pt">*이메일 양식에 맞게끔 입력해주세요
						ex)waitdo@test.com</span>
				</div>
				<!-- 공백 div -->
				<div class="form-column"></div>
				<!-- password div -->
				<div class="form-column">
					<div>
						<input type="password" id='pwd' name="pwd" value='${ param.pwd }'
							placeholder="비밀번호">

					</div>
					<span style="font-size: 8pt">*8자리 ~ 20자리 이내와 영문,숫자,특수문자를
						혼합하여 입력해주세요</span>
				</div>
				<!-- rePassword div -->
				<div class="form-column">
					<div>
						<input type="password" id='pwd2' value='${ param.pwd }'
							placeholder="비밀번호를 한번 더 입력해주세요">
					</div>

				</div>
				<!-- name div-->
				<div class="form-column">
					<div>
						<input type="text" id='name' name="name" value='${ param.mname }'
							placeholder="이름">
					</div>
					<span style="font-size: 8pt"> *2자리 ~ 20자리 이내와 영문 또는 한글만 입력이
						가능합니다</span>
				</div>
				<!-- 공백 div -->
				<div class="form-column"></div>
				<!-- checkbox -->

				<!-- name div-->
				<div class="form-column">
					<div>
						<input type="text" id='phone' name="phone" placeholder="전화번호">
					</div>
					<span style="font-size: 8pt">*'-'를 제외하고 입력해주세요</span>
				</div>
				<!-- name div-->
				<div class="form-column">
					<div>
						<input type="date" id='birth' name="birth">
					</div>
				</div>
				<!-- 모든 약관 동의 -->
				<div class="form-column" id="joinCheckbox">
					<div class="form-wrapper">
						<label class="form-checkbox"> </label>
					</div>
					<!-- 만 14세 -->
					<div class="form-wrapper">
						<label class="form-checkbox">
							<div class="form-input-wrapper">
								<input type="checkbox" name="checkAll" class="checkAll"
									value="selectall" onchange='selectAll(this)' />
							</div> <span class="form-input-wrapper-span">모든 항목 체크</span>
						</label>
					</div>
					<div class="form-wrapper">
						<label class="form-checkbox">
							<div class="form-input-wrapper">
								<input type="checkbox" id='choice1' name="checkAll"
									class="checkAll" value="false" />
							</div> <span class="form-input-wrapper-span">* 만 14세 이상입니다</span>
						</label>
					</div>
					<!-- 필수적 개인정보 동의 -->
					<div class="form-wrapper">
						<label class="form-checkbox">
							<div class="form-input-wrapper">
								<input type="checkbox" id='choice1s' name="checkAll"
									class="checkAll" value="false" />
							</div> <span class="form-input-wrapper-span">* 필수적 개인정보의 수집 및
								이용에 대한 동의</span>
						</label>
					</div>
					<!-- 선택적 개인정보 -->
					<div class="form-wrapper">
						<label class="form-checkbox">
							<div class="form-input-wrapper">
								<input type="checkbox" name="checkAll" id="choice2"
									class="checkAll" value="false" />
							</div> <span class="form-input-wrapper-span">선택적 개인정보의 수집 및 이용에
								대한 동의 </span>
						</label>
					</div>
					<!-- 광고성 정보 수신 -->
					<div class="form-wrapper">
						<label class="form-checkbox" for="choice3">
							<div class="form-input-wrapper">
								<input type="checkbox" name="checkAll" id='choice3'
									class="checkAll" value="false" />
								<!-- class="checkAll" value="false"/> -->

							</div> <span class="form-input-wrapper-span">광고성 정보 수신에 대한 동의</span>
						</label>
					</div>
					<!-- 야간성 알림 동의 -->
					<div class="form-wrapper">
						<label class="form-checkbox">
							<div class="form-input-wrapper">
								<input type="checkbox" class="check" id="choice4"
									name="checkAll" value="false" />
							</div> <span class="form-input-wrapper-span">야간 광고성 알림 수신</span>
						</label>
					</div>
					<!-- 계정 만들기 버튼 -->
					<!-- 나중에 button과 input을 겹쳐서  -->
					<div class="login-footer-body-button">
						<input type="submit" class="login-footer-body-block" value=계정만들기>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
<%-- <%@ include file="../WDFooter.jsp"%> --%>
</html>