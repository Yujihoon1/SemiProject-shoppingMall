	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<link rel="stylesheet" href="../resources/css/membership.css" type="text/css">
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
	<div id="body">
		<div id="info">
			<h1 id="memLogo">회원가입</h1>
			<div>
				<h4 class="tag">이름</h4>
				<input type="text" placeholder="name" class="tag2"><br>
				<h4 class="tag">핸드폰 번호</h4>
				<input type="text" placeholder="010-0000-0000" class="tag2"><br>
				<h4 class="tag">이메일</h4>
				<input type="text" placeholder="e-mail" class="tag2" id="email">
				<input type="button" value="이메일 확인" onclick="" id="emailBT"><br>
				<h4 class="tag">이메일 확인</h4>
				<input type="text" placeholder="0000" class="tag2"><br>
				<h4 class="tag">패스워드</h4>
				<input type="password" placeholder="password" class="tag2"><br>
				<h4 class="tag">패스워드 확인</h4>
				<input type="password" placeholder="password" class="tag2"><br>
				<input type="button" value="회원가입" onclick="" id="memButton">
			</div>
		</div>


	</div>
	<div id="footer"></div>
   <%@ include file="/WEB-INF/views/include/footer.jsp" %>