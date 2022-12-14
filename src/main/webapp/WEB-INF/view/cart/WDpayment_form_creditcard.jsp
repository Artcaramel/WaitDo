<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../WDHeader.jsp"%>
<!DOCTYPE html>
<html>
<!-- <html lang="en"> -->

<head>
<script type="text/javascript">
	function Check() {	
		var card_number = document.getElementById('cc-number');
 		//var address1 = document.getElementById('address1');
		//var address2 = document.getElementById('address2');
		if(card_number.value == "") {
			alert("카드번호를 입력해 주세요");
			card_number.focus();
			return false;
	//	}else if(address1.value == ""){
	//		alert("주소를 입력해 주세요");
	//		address1.focus();
	//		return false;
	//	}else if(address2.value == ""){
	//		alert("상세주소를 입력해 주세요");
	//		address2.focus();
	//		return false;
		}else {
			alert("결제정보가 저장되었습니다");
		}
			
			return true;
	}  
	
	function complete(){
		alert("주문이 완료되었습니다");
			document.paymentInfo.action="/waitdo/paymentComplete"
			document.paymentInfo.submit();
	}
	
</script>
    <title>Payment form</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE   =edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/main.css">
    <script src="js/main.js" defer></script>
</head>

  <body>
    <div class="loginMargin" id="box" style="background-color: white;">
    <main>
    
      <form action="#" method="get" name="paymentInfo">

        <h1>Payment form</h1>

        <section>        
          <label for="cc-number">Card number</label>
          <!-- Allow for spaces and for shorter and longer payment card numbers -->
       <!-- <input id="cc-number" name="cc-number" autocomplete="cc-number" inputmode="numeric" maxlength="50" pattern="[\d ]{10,30}" required> -->   
        <input id="cc-number" name="card_1" autocomplete="cc-number" inputmode="numeric" maxlength="50" required>
        </section>

   <!--  -->     <section>        
          <label for="cc-name">Name on card</label>
          <input id="cc-name" name="cc-name" autocomplete="cc-name" maxlength="50" pattern="[\p{L} \-\.]+" required>
        </section>
        
        <section id="cc-exp-csc">      
          <div>
            <label for="cc-exp">Expiry date</label>
            <input id="cc-exp" name="cc-exp" autocomplete="cc-exp" placeholder="MM/YY" maxlength="5" required>
          </div> 
          <div>
            <label for="cc-csc">Security code</label>
            <input id="cc-csc" name="cc-csc" inputmode="numeric" maxlength="3" required>
            <div class="explanation">Back of card, last 3 digits</div>
          </div>
        </section>  

        <!-- Alternative using select elements for expiry month and year 🤷🏻‍♂️ -->
        <!-- 
        <section id="cc-exp-csc">
          <div id="exp-month-year">
            <label for="cc-exp-month">Expiry date</label>
            <select id="cc-exp-month" name="cc-exp-month" autocomplete="cc-exp-month" placeholder="MM">
              <option value="">MM</option>
              <option value="01">01</option>
              <option value="02">02</option>
              <option value="03">03</option>
              <option value="04">04</option>
              <option value="05">05</option>
              <option value="06">06</option>
              <option value="07">07</option>
              <option value="08">08</option>
              <option value="09">09</option>
              <option value="10">10</option>
              <option value="11">11</option>
              <option value="12">12</option>
            </select>
            <select id="cc-exp-year" name="cc-exp-year" autocomplete="cc-exp-year" placeholder="YY">
              <option value="">YY</option>
              <option value="20">20</option>
              <option value="21">21</option>
              <option value="22">22</option>
              <option value="23">23</option>
              <option value="24">24</option>
              <option value="25">25</option>
              <option value="26">26</option>
              <option value="27">27</option>
              <option value="28">28</option>
              <option value="29">29</option>
              <option value="30">30</option>
            </select>
          </div>
          <div>
            <label for="cc-csc">Security code</label>
            <input id="cc-csc" name="cc-csc" autocomplete="cc-csc" inputmode="numeric" maxlength="3" required>
            <div class="explanation">Back of card, last 3 digits</div>
          </div>
        </section>
        -->

        <button id="complete-payment" onclick="complete()">
      	Complete payment
        <!-- 	<a href="/waitdo/index" type=submit>Complete payment</a> --></button>

      </form>

      <p>Find out more: <a href="https://web.dev/payment-and-address-form-best-practices">Payment&nbsp;and&nbsp;address&nbsp;form&nbsp;best&nbsp;practices</a></p>
    
    </main>
    
  </body>
</html>
