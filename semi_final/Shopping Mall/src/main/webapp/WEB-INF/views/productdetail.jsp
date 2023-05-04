<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="include/header.jsp" />
<link rel="stylesheet" href="../resources/css/detail.css"	type="text/css">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	$(function() {
		//price에 000단위마다 , 넣어주기
		$(".productprice").val($(".productprice").html());
		var $price = $(".productprice").html().replace(/\B(?=(\d{3})+(?!\d))/g,
				",");
		$(".productprice").html($price);

		$('li > a').click(function() {
			$('html, body').animate({
				scrollTop : $(this.hash).offset.top
			}, 100);
		});

		$("#option1").change(function() {
			var $text = $('option:selected').val();
			$(".product_color").empty();
			$(".product_color").append($text);
		});

		$("#option2").change(function() {
			var $size = $('#option2>option:selected').val();
			$(".product_size").empty();
			$(".product_size").append($size);
		});

		$("#productCount").change(
				function() {
					var price = $('.productprice').val();
					var count = $('.productCount').val();
					console.log(count);
					$(".totalCount").text("(" + count + "개)");
					var $totalPrice = $(".productprice").val() * count;
					$(".productprice").val($totalPrice);
					console.log($totalPrice);
					var $totalComma = $(".productprice").val().toString()
							.replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
					$(".total>strong>big").text($totalComma + "원");
					$totalPrice = $(".productprice").val();
					console.log($totalPrice);
					$('.productprice').val(price);
				});

		$("#menu3>a").click(function() {
			$(this).siblings().attr('class', 'unchosen');
			$(this).attr('class', 'chosen');
			$value = $(this).children().attr('id');
			console.log($value);
			console.log($(this).attr('class'));
			if ($("div").attr('id').val() == $value) {
				$("div").css("display", "");
			} else {
				$("div").css("display", "none");
			}
		});

		$(".review2").css("display", "none");
		$(".review3").css("display", "none");
		$(".best_newest_score>a").click(function() {
			$(this).attr("class", "chosen");
			$(this).siblings().attr("class", "unchosen");
			console.log($("#best").attr('class'));
			if ($("#best").attr('class') == "chosen") {
				$(".review1").css("display", "");
				$(".review2").css("display", "none");
				$(".review3").css("display", "none");
			}
			$(this).siblings().attr("class", "unchosen");
			if ($("#newest").attr('class') == "chosen") {
				$(".review1").css("display", "none");
				$(".review2").css("display", "");
				$(".review3").css("display", "none");
			}
			$(this).siblings().attr("class", "unchosen");
			if ($("#score").attr('class') == "chosen") {
				$(".review1").css("display", "none");
				$(".review2").css("display", "none");
				$(".review3").css("display", "");
			}
		});

		$(".zoayo_btns1>a").click(
				function() {
					var zoayocount = $(this).val();
					var sireoyocount = $(this).val();

					if ($(this).hasClass('zoayo')) {
						zoayocount = $(this).children("#zoayo_count1").val();
						$(this).children().css("background-color", "skyblue");
						$(this).attr('class', 'zoayo2');
						$(this).children("#zoayo_count1").val(++zoayocount);
						$("#zoayo_count1").text(
								$(this).children("#zoayo_count1").val());

					} else if ($(this).hasClass('zoayo2')) {
						zoayocount = $(this).children("#zoayo_count1").val();
						$(this).children().css("background-color", "white");
						$(this).attr('class', 'zoayo');
						$(this).children("#zoayo_count1").val(--zoayocount);
						$("#zoayo_count1").text(
								$(this).children("#zoayo_count1").val());

					} else if ($(this).hasClass('sireoyo')) {
						sireoyocount = $(this).children("#sireoyo_count1")
								.val();
						$(this).children().css("background-color", "red");
						$(this).attr('class', 'sireoyo2');
						sireoyocount = ++sireoyocount;
						$(this).children("#sireoyo_count1").val(sireoyocount);
						$("#sireoyo_count1").text(
								$(this).children("#sireoyo_count1").val());

					} else if ($(this).hasClass('sireoyo2')) {
						sireoyocount = $(this).children("#sireoyo_count1")
								.val();
						$(this).children().css("background-color", "white");
						$(this).attr('class', 'sireoyo');
						sireoyocount = --sireoyocount;
						$(this).children("#sireoyo_count1").val(sireoyocount);
						$("#sireoyo_count1").text(
								$(this).children("#sireoyo_count1").val());
					}
				});

		$(".zoayo_btns2>a").click(
				function() {
					var zoayocount = $(this).val();
					var sireoyocount = $(this).val();
					console.log(zoayocount);

					if ($(this).hasClass('zoayo')) {
						zoayocount = $(this).children("#zoayo_count2").val();
						$(this).children().css("background-color", "skyblue");
						$(this).attr('class', 'zoayo2');
						$(this).children("#zoayo_count2").val(++zoayocount);
						console.log($("#zoayo_count2").val());
						$("#zoayo_count2").text(
								$(this).children("#zoayo_count2").val());

					} else if ($(this).hasClass('zoayo2')) {
						zoayocount = $(this).children("#zoayo_count2").val();
						$(this).children().css("background-color", "white");
						$(this).attr('class', 'zoayo');
						$(this).children("#zoayo_count2").val(--zoayocount);
						$("#zoayo_count2").text(
								$(this).children("#zoayo_count2").val());

					} else if ($(this).hasClass('sireoyo')) {
						sireoyocount = $(this).children("#sireoyo_count2")
								.val();
						$(this).children().css("background-color", "red");
						$(this).attr('class', 'sireoyo2');
						sireoyocount = ++sireoyocount;
						$(this).children("#sireoyo_count2").val(sireoyocount);
						$("#sireoyo_count2").text(
								$(this).children("#sireoyo_count2").val());

					} else if ($(this).hasClass('sireoyo2')) {
						sireoyocount = $(this).children("#sireoyo_count2")
								.val();
						$(this).children().css("background-color", "white");
						$(this).attr('class', 'sireoyo');
						sireoyocount = --sireoyocount;
						$(this).children("#sireoyo_count2").val(sireoyocount);
						$("#sireoyo_count2").text(
								$(this).children("#sireoyo_count2").val());
					}
				});

		$(".zoayo_btns3>a").click(
				function() {
					var zoayocount = $(this).val();
					var sireoyocount = $(this).val();

					if ($(this).hasClass('zoayo')) {
						zoayocount = $(this).children("#zoayo_count3").val();
						$(this).children().css("background-color", "skyblue");
						$(this).attr('class', 'zoayo2');
						$(this).children("#zoayo_count3").val(++zoayocount);
						$("#zoayo_count3").text(
								$(this).children("#zoayo_count3").val());

					} else if ($(this).hasClass('zoayo2')) {
						zoayocount = $(this).children("#zoayo_count3").val();
						$(this).children().css("background-color", "white");
						$(this).attr('class', 'zoayo');
						$(this).children("#zoayo_count3").val(--zoayocount);
						$("#zoayo_count3").text(
								$(this).children("#zoayo_count3").val());

					} else if ($(this).hasClass('sireoyo')) {
						sireoyocount = $(this).children("#sireoyo_count3")
								.val();
						$(this).children().css("background-color", "red");
						$(this).attr('class', 'sireoyo2');
						sireoyocount = ++sireoyocount;
						$(this).children("#sireoyo_count3").val(sireoyocount);
						$("#sireoyo_count3").text(
								$(this).children("#sireoyo_count3").val());

					} else if ($(this).hasClass('sireoyo2')) {
						sireoyocount = $(this).children("#sireoyo_count3")
								.val();
						$(this).children().css("background-color", "white");
						$(this).attr('class', 'sireoyo');
						sireoyocount = --sireoyocount;
						$(this).children("#sireoyo_count3").val(sireoyocount);
						$("#sireoyo_count3").text(
								$(this).children("#sireoyo_count3").val());
					}
				});
	});
</script>
<jsp:include page="include/header2.jsp" />

<div id="wrapper">
	<div id="body">
		<div id="content">
			<div class="detail">
				<div class="img01">
					<img src="../resources/image/best/b${productdto.productNumber}.jpg"	class="img01">
				</div>
				<div class="title" name="title">
					<h3 class="productName" id="productName"
						style="position: relative; left: 18px;">${productdto.productName }</h3>
				</div>
				<div class="info" style="border-top: 0.5px solid gray;">
					<form action="buy.do" method="post">
						<dl>
							<dt>가격</dt>
							<dd class="productprice" id="productprice" name="productprice"
								value="${productdto.productPrice }">${productdto.productPrice }</dd>
						</dl>
						<dl>
							<dt>상품간략설명</dt>
							<dd>상품 간략 설명 예시</dd>
						</dl>
						<dl>
							<dt>색상</dt>
							<dd>
								<select class="option1" name="option1" id="option1">
									<option value='' selected>----선택해주세요-----</option>
									<option value="베이지">베이지색</option>
									<option value="블랙">블랙</option>
									<option value="화이트">화이트</option>
								</select>
							</dd>
						</dl>
						<dl>
							<dt>사이즈</dt>
							<dd>
								<select class="option2" name="option2" id="option2">
									<option value='' selected>----선택해주세요-----</option>
									<option value="S">S</option>
									<option value="M">M</option>
									<option value="L">L</option>
									<option value="XL">XL</option>
								</select>
							</dd>
							<dl class="dl_line1">
								<dl>
									<dt>상품명</dt>
									<dd>
										<b>상품 수</b>
									</dd>
									<dd>
										<b>가격</b>
									</dd>
								</dl>
								<dl>
									<dt>
										<input type="hidden" class="product_name_color_size">
										<p class="product" style="float: left;">상품명
										<p class="product_color"
											style="float: left; margin-right: 10px; font-size: small; position: relative; bottom: 6px; left: 13px;">색상</p>
										<p class="product_size"
											style="float: left; font-size: small; position: relative; bottom: 6px; left: 13px; font-weight: normal;">크기</p>
										</p>
									</dt>
								</dl>
								<dd>
									<span> <input
										style="width: 30px; position: relative; left: 8px;"
										id="productCount" class="productCount" type="number" min="0"
										value="0">
									</span>
								</dd>
								<dd>
									<span class="dl_line1_span"> <input type="hidden"
										class="price" id="price"> <b class="productprice"
										name="productprice" value="productprice">${dto.productprice }</b>
										<b>원</b>
									</span>
								</dd>
							</dl>
						</dl>
						<dl class="dl_line2">
							<div id="totalPrice" class="totalPrice"
								style="padding-top: 15px; padding-left: 0px; position: relative; top: 10px;">
								<b>총 상품금액</b> <small>(갯수)</small> <b>:</b> <span class="total">
									<strong> <big>총 금액</big>
								</strong>
									<div class="totalCount"
										style="width: 80px; display: inline-block;">(갯수)</div>
								</span>
							</div>
					</form>
					<br>

					<div class="buttons01">
						<a href="../buy/buy.html" class="buttonSubmit"
							onclick="product_submit(1,'',this)"> <span id="btnBuy"
							style="font-size: 15px;">구매하기</span></a> <a href=""
							class="buttonBasket" onclick="product_submit(2,'',this)">장바구니</a>
						<a href="" class="button_wish_list"
							onclick="product_submit(3,'',this)">찜하기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="include/footer.jsp" />
