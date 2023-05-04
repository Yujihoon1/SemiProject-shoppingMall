<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<title>Insert title here</title>
</head>
<body>
	<Header>
		<!-- Header -->
		<div id="header-wrap">
			<div class="state-loginOff">
				<form action="">
					<div class="header-btn">
						<input type="search" class="search-input" placeholder="상품 검색">
						<input type="submit" class="search-btn" value="검색">
					</div>
				</form>

				<a href="/login/loginform" class="topbtn">로그인</a> <a
					href="/login/membershipform" class="topbtn">회원가입</a> <a
					href="/mypage/mypagecart" class="topbtn">장바구니</a> <a href="/mypage"
					class="topbtn">마이페이지</a>
			</div>
			<h1 class="mainLogo">
				<a href="/main"> Shopping Mall <!-- <img src="logo.png" alt="Shopping Mall"> -->
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