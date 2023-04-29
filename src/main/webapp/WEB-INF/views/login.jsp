<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="../resources/css/login.css" type="text/css">
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
	
    <div class="login" id="body">
        <h1 class="logo">LOGIN</h1>
        
        <div>
        	<form action="">
            	<input type="text" placeholder="Id" id="id"><br>
            	<input type="password" placeholder="Password" id="pw"><br>   
            	<input type="submit" value="로그인" id="button">
            </form>       
        </div>
        <div class="img">
            <a href=""><img src="구글 아이콘.png" width="40px" height="40px" id="Gimg"></a>
            <a href=""><img src="네이버 아이콘.png" width="40px" height="40px" id="Nimg"></a>
            <a href=""><img src="카카오 아이콘.png" width="40px" height="40px" id="Kimg"></a> <br>
        </div>
        <div class="find">
            <span ><a href="/login/idfindform" id="fin">아이디 찾기</a></span>
            <span>|</span>
            <span ><a href="" id="fin">비밀번호 찾기</a></span>
            <span>|</span>
            <span><a href="" id="fin">회원가입</a></span>
        </div>
    </div>
    <%@ include file="/WEB-INF/views/include/footer.jsp" %>