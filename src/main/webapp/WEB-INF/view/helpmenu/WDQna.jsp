<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../WDHeader.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function nullCheck() {

		var subject = document.getElementById('subject');
		var content = document.getElementById('content');

		if (subject.value == "") {
			alert("제목을 입력해 주세요");
			subject.focus();
			return false;
		} else if (content.value == "") {

			alert("내용을 입력해 주세요");
			content.focus();
			return false;
		} else {
			alert("문의가 등록 됐습니다");
		}
		return true;

	}
</script>
<meta charset="UTF-8">
<title>1:1 Qna</title>
</head>
<body>
	<c:set var="member" value="${member}" />
	<div class="loginMargin" id="box" style="background-color: white;">
		<main class="layout__main" id="main">
			<article class="layout__article">
				<div>
					<div>
						<div>
							<h1>
								<span>1:1 질문</span>
							</h1>
						</div>
						<div></div>
					</div>
					<form autocomplete="off" action="/waitdo/helpmenu/qnaInsert"
						onsubmit="return nullCheck();" method="POST">

						<div>
							<div>
								<div>
									<div>
										<div>
											<input class="qna-size" id='id' name="id"
												value="${member.email}" type="text" readonly>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div>
							<div>
								<div>
									<div>
										<div>
											<input class="qna-size" id='subject' name="subject"
												placeholder="제목을 입력하세요" type="text">
										</div>
									</div>
								</div>
							</div>
						</div>
						<div>
							<div>
								<div>
									<div>
										<div>
											<textarea row="20" cols="80"
												style="width: 300px; height: 200px; font-size: 15px;"
												placeholder="내용을 입력하세요" id='content' name="content"></textarea>


										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="form__footer">
							<div class="login-footer-body-button">
								<input type="submit" class="qna-footer-body-block"
									value="문의 등록">
							</div>
						</div>
					</form>
				</div>
			</article>
		</main>
	</div>
</body>
</html>