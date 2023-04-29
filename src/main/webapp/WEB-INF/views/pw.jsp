	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<link rel="stylesheet" href="../resources/css/pw.css" type="text/css">
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
    <div id="body">
        <h1 id="pwLogo">비밀번호 찾기</h1>
        <div>
            <input type="text" placeholder="이름" id="pwName"><br>
            <input type="text" placeholder="Id" id="pwId"><br>
            <input type="text" placeholder="e-mail" id="pwEmail"><br>
            <input type="button" value="확인" onclick="" id="pwButton">
        </div>
    </div>
    <div id="footer">

    </div>
   <%@ include file="/WEB-INF/views/include/footer.jsp" %></html>