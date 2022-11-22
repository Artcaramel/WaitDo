<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./WDAdminHeader.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function nullCheck() {

		var resubject = document.getElementById('resubject');
		var reply = document.getElementById('reply');

		if (resubject.value == "") {
			alert("제목을 입력해 주세요");
			resubject.focus();
			return false;
		} else if (reply.value == "") {

			alert("내용을 입력해 주세요");
			reply.focus();
			return false;
		} else {
			alert("답변이 완료 됐습니다");
		}
		return true;

	}
</script>
<meta charset="UTF-8">
<title>Reply</title>
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
								<span>1:1 문의 답변</span>
							</h1>
						</div>
						<div></div>
					</div>
					<form autocomplete="off" action="/waitdo/admin/adminQnaReply?qseq=${qseq}"
						onsubmit="return nullCheck();" method="POST">
						<div>
							<div>
								<div>
									<div>
										<div>
											<span>ID</span>&nbsp;<input id='reid' name="reid"
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
											<input id='resubject' name="resubject"
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
												placeholder="내용을 입력하세요" id='reply' name="reply"></textarea>


										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="form__footer">
							<div class="button__lines-wrapper">
								<input type="submit" value="답변 등록">
							</div>
						</div>
					</form>
				</div>
			</article>
		</main>
	</div>