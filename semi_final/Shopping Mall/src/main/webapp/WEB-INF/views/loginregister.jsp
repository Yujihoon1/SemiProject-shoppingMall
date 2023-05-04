<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="include/header.jsp" />
<link rel="stylesheet" href="../resources/css/membership.css"	type="text/css">
<script type="text/javascript"	src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
	function register() {
		let userID = $("#userID").val();//.trim();
		let userPW = $("#userPW").val();//.trim();
		let userPWck = $("#userPWck").val();//.trim();
		let userName = $("#userName").val();//.trim();
		let userPhone = $("#userPhone").val();//.trim();
		let userEmail = $("#userEmail").val();//.trim();

		console.log(userID);
		console.log(userPWck);
		console.log(userPW);
		console.log(userName);
		console.log(userPhone);
		console.log(userEmail);

		if (userPW != userPWck) {
			alert("비밀번호가 다릅니다.");
		} else {
			let loginVal = {
				"userID" : userID,
				"userPW" : userPW,
				"userName" : userName,
				"userPhone" : userPhone,
				"userEmail" : userEmail
			};

			if (userID == null || userID == "" || userPW == null
					|| userPW == "" || userPWck == null || userPWck == ""
					|| userName == null || userName == "" || userPhone == null
					|| userPhone == "" || userEmail == null || userEmail == "") {
				alert("ID 및 PW를 확인해 주세요");

			} else {
				$.ajax({
					type : "post",
					url : "/login/register",
					data : JSON.stringify(loginVal),
					contentType : "application/json",
					dataType : "json",
					success : function(msg) {
							alert("회원가입 성공");
						if (msg.check == true) {
							location.href = "/login/loginform";
						} else {
							alert("회원가입 실패");
						}
					},
					error : function() {
						alert("통신 실패");
					}
				});
			}
		}
	}
</script>
<jsp:include page="include/header2.jsp" />

<div id="content-wrap">
        <h2 id="main-title">회원가입</h2>
        <div>
            <div class="regist-wrap">
                <p class="title">아이디</p>
                <input type="text" class="tag" id="userID">
            </div>
            <div class="regist-wrap">
                <p class="title">비밀번호</p>
                <input type="text" class="tag" id="userID">
            </div>
            <div class="regist-wrap">
                <p class="title">비밀번호 확인</p>
                <input type="text" class="tag" id="userID">
            </div>
            <div class="regist-wrap">
                <p class="title">이 름</p>
                <input type="text" class="tag" id="userID">
            </div>
            <div class="regist-wrap">
                <p class="title">핸드폰 번호</p>
                <input type="text" class="tag" id="userID">
            </div>
            <div class="regist-wrap">
                <p class="title">이메일</p>
                <input type="text" class="tag" id="userID">
            </div>

            <div class="btn"><input type="button" value="회원가입" id="memButton" onclick="register();"></div>
        </div>

    </div>
<jsp:include page="include/footer.jsp" />