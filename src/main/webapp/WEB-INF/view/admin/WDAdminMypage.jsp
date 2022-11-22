<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="WDAdminHeader.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="member" value="${member}" />
 
  <div class="loginMargin" id="box" style="background-color: white;">
      <div>
         <main>
            <div>
               <!-- 사용자 정보 -->
               <div>
                  <p class="mypage-heder-name">
                     <!-- 사용자 이름  -->
                     ${member.name}
                  </p>
                  <p>
                     <!-- 사용자 이메일  -->
                     ${member.email}
                  </p>
               </div>
               <nav class="mypage-nav">
                  <ul class="mypage-div-ul">
             
                     <li class="mypage-list"><a href="/waitdo/admin/adminMemberlist">
                           <div>
                              <div class="mapage-nav-div">
                                 <span>회원</span>
                              </div>
                              <div>
                                 <p class="mapage-nav-p">
                                    <span>회원 리스트 관리</span>
                                 </p>
                              </div>
                           </div> <svg class="mypage-svg" xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 24 24">
                              <path
                                 d="M14.622 12.31L9.609 6.709l.746-.666L16 12.352l-5.666 5.628-.704-.71 4.992-4.96z"></path></svg>
                     </a></li>
                     <li class="mypage-list"><a href="/waitdo/admin/adminQnaList">
                           <div>
                              <div class="mapage-nav-div">
                                 <span>문의</span>
                              </div>
                              <div>
                                 <p class="mapage-nav-p">
                                    <span>문의내역 리스트 관리</span>
                                 </p>
                              </div>
                           </div> <svg class="mypage-svg" xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 24 24">
                              <path
                                 d="M14.622 12.31L9.609 6.709l.746-.666L16 12.352l-5.666 5.628-.704-.71 4.992-4.96z"></path></svg>
                     </a></li>
      
                  </ul>
               </nav>
            </div>
         </main>
      </div>
   </div>
</body>
</html>