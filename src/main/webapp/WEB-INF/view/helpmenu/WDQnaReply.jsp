<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../WDHeader.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA Reply</title>
</head>
<body>
	<c:set var="qnalist" value="${qnalist}" />
	<div class="loginMargin" id="box" style="background-color: white;">
		<main class="layout__main" id="main">
			<article class="layout__article">
				<div>
					<div>
						<div>
							<h1>
								<span>답변 확인</span>
							</h1>
						</div>
						<div></div>
					</div>		
							<div>
								<div>
									<div>
										<div>
											<div >
												<span>답변날짜</span>&nbsp;<input style="background-color:#EED3BF;"
													
													value="${qnalist.moddate}"
													type="text" readonly>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div>
								<div>
									<div>
										<div>
											<div >
												<span>작성자</span>&nbsp;<input style="background-color:#EED3BF;"
													
													value="${qnalist.reid}"
													type="text" readonly>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div>
								<div>
									<div>
										<div>
											<div >
												<input
													style="background-color:#EED3BF;" value="${qnalist.resubject}"
													type="text" readonly>
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
												<textarea row="20" cols="80" style = "background-color:#EED3BF; width:300px;height:200px;font-size:15px;" readonly  
												>${qnalist.reply}</textarea>
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