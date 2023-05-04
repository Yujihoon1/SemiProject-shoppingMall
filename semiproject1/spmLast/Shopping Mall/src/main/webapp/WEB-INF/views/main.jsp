<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="include/header.jsp" />
<link rel="stylesheet" type="text/css" href="../resources/css/main.css">
<script type="text/javascript"	src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
	let num = 1;
	let num_left = num - 1;
	let num_right = num + 1;

	var intervalId = setInterval(automove, 3000);

	function stopInterval(intervalId) {
		clearInterval(intervalId);
	}

	setTimeout(stopInterval, 60000, intervalId)

	function automove() {
		num++;
		num_left++;
		num_right++;
		if (num > 4) {
			num = 1;
		}
		if (num_right == 5) {
			num_right = 1;
		}
		if (num_left == 5) {
			num_left = 1;
		}
		document.getElementById("gallery_left").src = "../../resources/image/a0"
				+ (num_left) + ".jpg";
		document.getElementById("gallery_center").src = "../../resources/image/a0"
				+ num + ".jpg";
		document.getElementById("gallery_right").src = "../../resources/image/a0"
				+ (num_right) + ".jpg";
		return false;

	};

	function prev() {
		num--;
		num_left--;
		num_right--;
		if (num < 1) {
			num = 4;
		} else if (num_left == 0) {
			num_left = 4;
		} else if (num_right == 0) {
			num_right = 4;
		}
		document.getElementById("gallery_left").src = "../resources/image/a0"
				+ (num_left) + ".jpg";
		document.getElementById("gallery_center").src = "../resources/image/a0"
				+ num + ".jpg";
		document.getElementById("gallery_right").src = "../resources/image/a0"
				+ (num_right) + ".jpg";
		return false;
	}
	function next() {
		num++;
		num_left++;
		num_right++;
		if (num > 4) {
			num = 1;
		}
		if (num_right == 5) {
			num_right = 1;
		}
		if (num_left == 5) {
			num_left = 1;
		}
		document.getElementById("gallery_left").src = "../resources/image/a0"
				+ (num_left) + ".jpg";
		document.getElementById("gallery_center").src = "../resources/image/a0"
				+ num + ".jpg";
		document.getElementById("gallery_right").src = "../resources/image/a0"
				+ (num_right) + ".jpg";
		return false;
	}
/* 	$(function() {
		$(".banner>a").hover(function() {
			$(this).parent().children("div").fadeIn('slow');
			$(this).parent().children("div").css("display", "block");
		}, function() {
			$(this).parent().children("div").fadeOut();
		});
	});
	$(function() {
		$(".banner2>a").hover(function() {
			$(this).parent().children("div").fadeIn('slow');
			$(this).parent().children("div").css("display", "block");
		}, function() {
			$(this).parent().children("div").fadeOut();
		});
	}); */
	
	/* function clickBanner(bannername) {
		let bannercategory = $(bannername).html();
		console.log(bannercategory);
		
			$.ajax({
				type : "post",
				url : "/product/changeMenu",
				data : bannercategory,
				contentType : "application/json",
				dataType : "json",

				success :function(msg) {
					console.log(msg.list);
					/* if (msg.check == true) {
						console.log(bannercategory);
						$("#main").slideUp();
						$("#banner>h3").html("주간 "+bannercategory);
						$("#banner2>h3").html("월간 "+bannercategory);
					} else {
						alert("실패");
					} 
				},
				error : function() {
					alert("통신실패");
				}
			});
		} */
	
	//header 눌렀을 때
    $(function(){
        $("#best_nav").click(function(){
            $("#menu_best").css("display","block");
            $("#menu_best").siblings().css("display","none");
        });
        $("#new_nav").click(function(){
            $("#menu_new").css("display","block");
            $("#menu_new").siblings().css("display","none");
        });
        $("#outer_nav").click(function(){
            $("#menu_outer").css("display","block");
            $("#menu_outer").siblings().css("display","none");
        });
        $("#top_nav").click(function(){
            $("#menu_top").css("display","block");
            $("#menu_top").siblings().css("display","none");
        });
        $("#pants_nav").click(function(){
            $("#menu_pants").css("display","block");
            $("#menu_pants").siblings().css("display","none");
        });
        $("#acc_nav").click(function(){
            $("#menu_acc").css("display","block");
            $("#menu_acc").siblings().css("display","none");
        });
    });
	

</script>
<jsp:include page="include/header2.jsp" />

<div id="body">
	<div id="main">
		<a href="" onclick="return prev();">◀</a> <img
			src="../resources/image/a04.jpg" id="gallery_left"> <img
			src="../resources/image/a01.jpg" id="gallery_center"> <img
			src="../resources/image/a02.jpg" id="gallery_right"> <a href=""
			onclick="return next();">▶</a>
	</div>

	<div id="menu">
		<div id="menu1">
			 <div id="banner">
         <h3>Best</h3>
         <div class="banner">
            <a href="/product/productdetail?productNumber=1&productCategory=best"><img src="../resources/image/best/b1.jpg"></a>
            <div class="name_price">
               <div>폰테 오버사이즈 크루넥 티셔츠</div>
               <div>29,800</div>
            </div>
         </div>
         <div class="banner">
            <a href="/product/productdetail?productNumber=2&prodoctCategory=best"><img src="../resources/image/best/b2.jpg"></a>
            <div class="name_price">
               <div>코튼 레이온 린넨 셔츠</div>
               <div>49,800</div>
            </div>
         </div>
         <div class="banner">
            <a href="/product/productdetail?productNumber=10&prodoctCategory=best"><img src="../resources/image/best/b10.jpg"></a>
            <div class="name_price">
               <div>클래식맨 오버사이즈 폴로 티셔츠</div>
               <div>39,800</div>
            </div>
         </div>
         <div class="banner">
            <a href="/product/productdetail?productNumber=11&prodoctCategory=best"><img src="../resources/image/best/b11.jpg"></a>
            <div class="name_price">
               <div>와이드핏 히든밴딩 슬랙스</div>
               <div>49000</div>
            </div>
         </div>
      </div>
      </div>
   <div id="menu2">
      <div id="banner2">
         <h3 style="margin-top: 50px;">New</h3>
         <div class="banner2">
            <a href="/product/productdetail?productNumber=30&prodoctCategory=new"><img src="../resources/image/new/n1.jpg"></a>
            <div class="name_price">
               <div>베이직 버뮤다 셔츠</div>
               <div>35,800</div>
            </div>
         </div>
         <div class="banner2">
            <a href="/product/productdetail?productNumber=32&prodoctCategory=new"><img src="../resources/image/new/n3.jpg"></a>
            <div class="name_price">
               <div>코튼 테리 프린트 셔츠</div>
               <div>35,800</div>
            </div>
         </div>
         <div class="banner2">
            <a href="/product/productdetail?productNumber=34&prodoctCategory=new"><img src="../resources/image/new/n5.jpg"></a>
            <div class="name_price">
               <div>린넨코튼 이지팬츠</div>
               <div>44,800</div>
            </div>
         </div>
         <div class="banner2">
            <a href="/product/productdetail?productNumber=35&prodoctCategory=new"><img src="../resources/image/new/n6.jpg"></a>
            <div class="name_price">
               <div>나일론 스판덱스 쇼츠</div>
               <div>35,800</div>
            </div>

				</div>
			</div>
		</div>
		</div>
		
	<!-- 배너 BEST 클릭시 -->
	<div id="menu_best">
		<div id="menu1">
			<div id="banner">
				<h3>이번 주 BEST</h3>
				<div class="banner">
					<a href=""><img src="../resources/image/best/b11.jpg"></a>
					<div class="name_price">
						<div>쿨 테이퍼드 히든 밴딩</div>
						<div>59800</div>
					</div>
				</div>
				<div class="banner">
					<a href=""><img src="../resources/image/best/b13.jpg"></a>
					<div class="name_price">
						<div>스트레이트핏 히든밴딩 슬랙스</div>
						<div>49000</div>
					</div>
				</div>
				<div class="banner">
					<a href=""><img src="../resources/image/new/n9.jpg"></a>
					<div class="name_price">
						<div>헤비코튼 클래식맨 티셔츠</div>
						<div>29800</div>
					</div>
				</div>
				<div class="banner">
					<a href=""><img src="../resources/image/best/b16jpg"></a>
					<div class="name_price">
						<div>와이드핏 데님</div>
						<div>45000</div>
					</div>
				</div>
			</div>
			</div>
		<div id="menu2">
			<div id="banner2">
				<h3 style="margin-top: 50px;">이번 달 BEST</h3>
				<div class="banner2">
					<a href=""><img src="../resources/image/best/b21.jpg"></a>
					<div class="name_price">
						<div>쿨터치 라이트 셋업</div>
						<div>79900</div>
					</div>
				</div>
				<div class="banner2">
					<a href=""><img src="../resources/image/best/b22.jpg"></a>
					<div class="name_price">
						<div>미니멀 집업 바머</div>
						<div>29900</div>
					</div>
				</div>
				<div class="banner2">
					<a href=""><img src="../resources/image/best/b25.jpg"></a>
					<div class="name_price">
						<div>순댕이 와펜 쿨텐션 티셔츠</div>
						<div>7900</div>
					</div>
				</div>
				<div class="banner2">
					<a href=""><img src="../resources/image/best/b26.jpg"></a>
					<div class="name_price">
						<div>쿨에어 코튼 피케 폴로셔츠</div>
						<div>29900</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		
		<!-- 배너 NEW 클릭시 -->
		<div id="menu_new">
		<div id="menu1">
			<div id="banner">
				<h3>추천 신상품</h3>
				<div class="banner">
					<a href=""><img src="../resources/image/new/n11.jpg"></a>
					<div class="name_price">
						<div>울트라스테치 테이퍼드핏 치노팬츠</div>
						<div>59800</div>
					</div>
				</div>
				<div class="banner">
					<a href=""><img src="../resources/image/new/n12.jpg"></a>
					<div class="name_price">
						<div>레인코트</div>
						<div>79800</div>
					</div>
				</div>
				<div class="banner">
					<a href=""><img src="../resources/image/new/n22.jpg"></a>
					<div class="name_price">
						<div>리넨 블렌디드 반팔 스웨터</div>
						<div>19900</div>
					</div>
				</div>
				<div class="banner">
					<a href=""><img src="../resources/image/new/n24.jpg"></a>
					<div class="name_price">
						<div>스탠다드핏 솔리드 코튼 반팔티</div>
						<div>9800</div>
					</div>
				</div>
			</div>
			</div>
		<div id="menu2">
			<div id="banner2">
				<h3 style="margin-top: 50px;">New</h3>
				<div class="banner2">
					<a href=""><img src="../resources/image/new/n26.jpg"></a>
					<div class="name_price">
						<div>미라클 캐쥬얼 셋업 재킷</div>
						<div>95000</div>
					</div>
				</div>
				<div class="banner2">
					<a href=""><img src="../resources/image/new/n27.jpg"></a>
					<div class="name_price">
						<div>에어리밋 포켓 반팔티</div>
						<div>29950</div>
					</div>
				</div>
				<div class="banner2">
					<a href=""><img src="../resources/image/new/n29.jpg"></a>
					<div class="name_price">
						<div>밀라노 포켓 라운드 스웨터</div>
						<div>12900</div>
					</div>
				</div>
				<div class="banner2">
					<a href=""><img src="../resources/image/new/n30.jpg"></a>
					<div class="name_price">
						<div>쿨링 세미와이드 벤딩 슬렉스</div>
						<div>19900</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		
		<!-- 배너 OUTER 클릭시 -->
	<div id="menu_outer">
		<div id="menu1">
			<div id="banner">
				<h3>추천 OUTER</h3>
				<div class="banner">
					<a href=""><img src="../resources/image/outer/o11.jpg"></a>
					<div class="name_price">
						<div>나일론 후드 윈드 점퍼</div>
						<div>49900</div>
					</div>
				</div>
				<div class="banner">
					<a href=""><img src="../resources/image/outer/o14.jpg"></a>
					<div class="name_price">
						<div>코튼 트러커 자켓</div>
						<div>49900</div>
					</div>
				</div>
				<div class="banner">
					<a href=""><img src="../resources/image/outer/o15.jpg"></a>
					<div class="name_price">
						<div>클래식 컴포터블 맥코트</div>
						<div>59900</div>
					</div>
				</div>
				<div class="banner">
					<a href=""><img src="../resources/image/outer/o19.jpg"></a>
					<div class="name_price">
						<div>아우터 타입 셔츠</div>
						<div>39000</div>
					</div>
				</div>
			</div>
			</div>
		<div id="menu2">
			<div id="banner2">
				<h3 style="margin-top: 50px;">OUTER</h3>
				<div class="banner2">
					<a href=""><img src="../resources/image/outer/o35.jpg"></a>
					<div class="name_price">
						<div>오버핏 MA-1 자켓</div>
						<div>77400</div>
					</div>
				</div>
				<div class="banner2">
					<a href=""><img src="../resources/image/outer/o38.jpg"></a>
					<div class="name_price">
						<div>아노락 점퍼</div>
						<div>49900</div>
					</div>
				</div>
				<div class="banner2">
					<a href=""><img src="../resources/image/outer/o39.jpg"></a>
					<div class="name_price">
						<div>항공 점퍼</div>
						<div>39900</div>
					</div>
				</div>
				<div class="banner2">
					<a href=""><img src="../resources/image/outer/o40.jpg"></a>
					<div class="name_price">
						<div>린넨 블레이져</div>
						<div>59800</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		
	<!-- 배너 TOP 클릭시 -->	
	<div id="menu_top">
		<div id="menu1">
			<div id="banner">
				<h3>추천 상의</h3>
				<div class="banner">
					<a href=""><img src="../resources/image/top/t2.jpg"></a>
					<div class="name_price">
						<div>린넨 코튼 셔츠</div>
						<div>33000</div>
					</div>
				</div>
				<div class="banner">
					<a href=""><img src="../resources/image/top/t6.jpg"></a>
					<div class="name_price">
						<div>코튼 스티치 크루넥 스웨터</div>
						<div>59800</div>
					</div>
				</div>
				<div class="banner">
					<a href=""><img src="../resources/image/top/t8.jpg"></a>
					<div class="name_price">
						<div>폴로 티셔츠</div>
						<div>39800</div>
					</div>
				</div>
				<div class="banner">
					<a href=""><img src="../resources/image/top/t11.jpg"></a>
					<div class="name_price">
						<div>오버사이즈 스트라이프 반팔 티셔츠</div>
						<div>39800</div>
					</div>
				</div>
			</div>
			</div>
		<div id="menu2">
			<div id="banner2">
				<h3 style="margin-top: 50px;">상의</h3>
				<div class="banner2">
					<a href=""><img src="../resources/image/top/t14.jpg"></a>
					<div class="name_price">
						<div>반팔 그래픽 테리 티셔츠</div>
						<div>35800</div>
					</div>
				</div>
				<div class="banner2">
					<a href=""><img src="../resources/image/top/t17.jpg"></a>
					<div class="name_price">
						<div>로고 자수 쿨링 폴로티</div>
						<div>22900</div>
					</div>
				</div>
				<div class="banner2">
					<a href=""><img src="../resources/image/top/t22.jpg"></a>
					<div class="name_price">
						<div>밀라노 포켓 라운드 스웨터</div>
						<div>12900</div>
					</div>
				</div>
				<div class="banner2">
					<a href=""><img src="../resources/image/top/t26.jpg"></a>
					<div class="name_price">
						<div>에코쿨링 그래픽 반팔 티</div>
						<div>29900</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		
		<!-- 배너 PANTS 클릭시 -->
	<div id="menu_pants">
		<div id="menu1">
			<div id="banner">
				<h3>추천 하의</h3>
				<div class="banner">
					<a href=""><img src="../resources/image/pants/p3.jpg"></a>
					<div class="name_price">
						<div>스트레이트 슬랙스</div>
						<div>59800</div>
					</div>
				</div>
				<div class="banner">
					<a href=""><img src="../resources/image/pants/p5.jpg"></a>
					<div class="name_price">
						<div>테이퍼드핏 히든 밴딩 슬랙스</div>
						<div>39800</div>
					</div>
				</div>
				<div class="banner">
					<a href=""><img src="../resources/image/pants/p8.jpg"></a>
					<div class="name_price">
						<div>린넨 코튼 이지 팬츠</div>
						<div>44800</div>
					</div>
				</div>
				<div class="banner">
					<a href=""><img src="../resources/image/pants/p17.jpg"></a>
					<div class="name_price">
						<div>릴랙스핏 카고 팬츠</div>
						<div>59800</div>
					</div>
				</div>
			</div>
			</div>
		<div id="menu2">
			<div id="banner2">
				<h3 style="margin-top: 50px;">하의</h3>
				<div class="banner2">
					<a href=""><img src="../resources/image/pants/p21.jpg"></a>
					<div class="name_price">
						<div>미라클 캐쥬얼 셋업팬츠</div>
						<div>34000</div>
					</div>
				</div>
				<div class="banner2">
					<a href=""><img src="../resources/image/pants/p24.jpg"></a>
					<div class="name_price">
						<div>카고 밴딩 조거 팬츠</div>
						<div>69000</div>
					</div>
				</div>
				<div class="banner2">
					<a href=""><img src="../resources/image/pants/p27.jpg"></a>
					<div class="name_price">
						<div>수퍼플렉스 쇼츠</div>
						<div>49900</div>
					</div>
				</div>
				<div class="banner2">
					<a href=""><img src="../resources/image/pants/p39.jpg"></a>
					<div class="name_price">
						<div>슬림 치노 팬츠</div>
						<div>49900</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		
	<!-- 배너 ACC 클릭시 -->	
	<div id="menu_acc">
		<div id="menu1">
			<div id="banner">
				<h3>추천 악세서리</h3>
				<div class="banner">
					<a href=""><img src="../resources/image/acc/a1.jpg"></a>
					<div class="name_price">
						<div>단우산</div>
						<div>19800</div>
					</div>
				</div>
				<div class="banner">
					<a href=""><img src="../resources/image/acc/a3.jpg"></a>
					<div class="name_price">
						<div>베이직 레더 벨트</div>
						<div>19800</div>
					</div>
				</div>
				<div class="banner">
					<a href=""><img src="../resources/image/acc/a5.jpg"></a>
					<div class="name_price">
						<div>쇼트 삭스</div>
						<div>3300</div>
					</div>
				</div>
				<div class="banner">
					<a href=""><img src="../resources/image/acc/a10.jpg"></a>
					<div class="name_price">
						<div>레터링 로고 볼캡</div>
						<div>23940</div>
					</div>
				</div>
			</div>
			</div>
		<div id="menu2">
			<div id="banner2">
				<h3 style="margin-top: 50px;">악세서리</h3>
				<div class="banner2">
					<a href=""><img src="../resources/image/acc/a14.jpg"></a>
					<div class="name_price">
						<div>천연 소가죽 벨트</div>
						<div>43000</div>
					</div>
				</div>
				<div class="banner2">
					<a href=""><img src="../resources/image/acc/a20.jpg"></a>
					<div class="name_price">
						<div>포인트 글러브</div>
						<div>16800</div>
					</div>
				</div>
				<div class="banner2">
					<a href=""><img src="../resources/image/acc/a26.jpg"></a>
					<div class="name_price">
						<div>에코 프렌들리 백</div>
						<div>3900</div>
					</div>
				</div>
				<div class="banner2">
					<a href=""><img src="../resources/image/acc/a30.jpg"></a>
					<div class="name_price">
						<div>보스턴 콤비네이션 선글라스</div>
						<div>29900</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		
	</div>
<jsp:include page="include/footer.jsp" />