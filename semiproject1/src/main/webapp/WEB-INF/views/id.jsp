	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<link rel="stylesheet" href="../resources/css/id.css" type="text/css">
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
<body>
	<div id="header"></div>
	<div id="body">
		<h1 id="idLogo">아이디 찾기</h1>
		<div>
			<input type="text" placeholder="name" id="idName"><br> <input
				type="text" placeholder="e-mail" id="idEmail"><br> <input
				type="button" value="확인" id="idButton" onclick="">

		</div>

	</div>
   <%@ include file="/WEB-INF/views/include/footer.jsp" %>