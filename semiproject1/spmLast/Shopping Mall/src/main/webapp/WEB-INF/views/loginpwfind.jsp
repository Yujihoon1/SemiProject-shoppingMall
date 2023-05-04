
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="include/header.jsp" />
<link rel="stylesheet" href="../resources/css/pw.css" type="text/css">
<jsp:include page="include/header2.jsp" />

<div id="body">
	<h1 id="pwLogo">비밀번호 찾기</h1>
	<div>
		<form action="/login/userpwfind" method="post">
			<input type="text" placeholder="이름" id="pwName" name="userName"><br>
			<input type="text" placeholder="Id" id="pwId" name="userID"><br>
			<input type="text" placeholder="e-mail" id="pwEmail" name="userEmail"><br>
			<input type="submit" value="check" id="pwButton">
		</form>
	</div>
	<!-- 입력값이 일치하지 않을 때-->
	<c:if test="${check == 1}">
		<script>
			alert("입력하신 내용이 일치하지 않습니다.");
			opener.document.findform.name.value = "";
			opener.document.findform.id.value = "";
			opener.document.findform.email.value = "";
		</script>

	</c:if>
	<!-- 입력값이 일치할 때 -->
	<c:if test="${check == 0 }">
		<script>
			alert("찾으시는 비밀번호는 " + "${userPW}" + " 입니다.");
			location.href = "/login/loginform";
		</script>
	</c:if>
</div>

<jsp:include page="include/footer.jsp" />