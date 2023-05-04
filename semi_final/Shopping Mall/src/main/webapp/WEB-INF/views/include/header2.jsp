<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Insert title here</title>
</head>
<body>
<input type="hidden" name="userid" value="${login.userID }">
<input type="hidden" name="kind" id="kind" />
   <Header>
      <!-- Header -->
      <div id="header-wrap">
         <div class="state-loginOff">            
         	<c:if test="${login.userID == null}">
            	<a href="/login/loginform" class="topbtn">로그인</a> 
            	<a href="/login/registerform" class="topbtn">회원가입</a> 
            	<a href="/login/loginform" class="topbtn">장바구니</a> 
            	<a href="/mypage" class="topbtn">마이페이지</a>
            </c:if>
               
            <c:if test="${login.userID != null}">
               <a class="topbtn">${login.userName }님</a> 
               <a href="javascript:void(0);" class="topbtn" onclick="logout();">로그아웃</a> 
               <a href="/mypage/mypagecart?userid=${login.userID }" class="topbtn">장바구니</a> 
               <a href="/mypage?userID=${login.userID }"class="topbtn">마이페이지</a>
            </c:if>
               <script type="text/javascript">
                  function logout(){
                     if(confirm("로그아웃 하시겠습니까?")){
                        location.href="/login/logout";
                     }
                  }
               </script>
            
               
         </div>
         <h1 class="mainLogo">
            <a href="/main"> <img src="../resources/image/mainlogo.png">
            </a>
         </h1>
      </div>

      <!--  내비게이션 바 -->
        <div class="nav-wrap" style="margin-bottom:0;">
         <a href="#" id="best_nav" class="nav-cate">BEST</a> <a href="#" id="new_nav" class="nav-cate">NEW</a>
         <a href="#" id="outer_nav" class="nav-cate">OUTER</a> <a href="#" id="top_nav" class="nav-cate">TOP</a>
         <a href="#" id="pants_nav" class="nav-cate">PANTS</a> <a href="#" id="acc_nav" class="nav-cate">ACC</a>
	</div>
   </Header>