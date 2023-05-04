
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="include/header.jsp" />
<!-- css,script line -->
<link rel="stylesheet" href="../resources/css/basket.css"	type="text/css">
<script type="text/javascript"	src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
	$(function() {
		/* 	$("#confirm").click(function(){
		 // 선택한 요소의 내용을 지운다.
		 $("#res").empty();

		 if($("input[name = chk]:checked").length == 0){
		 alert("하나 이상 선택해 주세요");
		 }else{
		 $("input[name=chk]:checked").each(function(i, ele){
		 console.log(ele);
		 let chk = $("input[name=chk]:checked").eq(i);
		 let book = chk.next().text();
		 let price = chk.val();
		
		 $("#res").append(book+" 가격 : "+price+"<br>");
		 });
		 }
		 });
		 */
		// 체크박스가 전체 선택 되어진 상태에서 
		// 하나라도 체크를 해제하면 전체선택 버튼의 체크를 해제
		$("input[name=chk]")
				.click(
						function() {
							if ($("input[name=chk]").length != $("input[name=chk]:checked").length) {
								$("input[name=all]").prop("checked", false);
							} else {
								$("input[name=all]").prop("checked", true);
							}
						});
	});

	function allchk() {
		$("input[name=basket-check]").each(function(i) {
			//$(this).attr("checked", bool);
			if ($(this).prop("checked", false)) {
				$(this).prop("checked", true);
			} else {
				$(this).prop("checked", true);
			}

		});
	}
	// 전체선택 체크박스
</script>
<jsp:include page="include/header2.jsp" />

<div id="basket">
	<div id="basket-name">
		<h2>장바구니</h2>
	</div>
	<!-- 장바구니 카테고리(?) 라인 -->
	<div>
		<div id="basket-category">
			<div id="basket-check">*</div>
			<div id="basket-image">이미지</div>
			<div id="basket-productname">상품이름</div>
			<div id="basket-price">판매가</div>
			<div id="basket-color">컬러</div>
			<div id="basket-size">사이즈</div>
			<div id="basket-count">수량</div>
			<div id="basket-pricesum">가격</div>
		</div>

		<!-- 반복문 사용으로 장바구니 리스트 출력-->
		<c:choose>
			<c:when test="${empty cartlist }">
				<p>게시물이 없습니다.</p>
			</c:when>
			<c:otherwise>
				<c:forEach items="${cartlist }" var="cartdto">
					<div id="basket-product">
						<input type="checkbox" name="basket-check"
							id="basket-product-check">
						<div id="basket-product-image">
							<img src="../resources/image/images.jpg" id="basket-imeageset" />
						</div>
						<div id="basket-product-productname">${cartdto.cartTitle }</div>
						<div id="basket-product-price">${cartdto.cartPrice }</div>
						<div id="basket-product-color">${cartdto.cartColor }</div>
						<div id="basket-product-size">${cartdto.cartSize }</div>
						<div id="basket-product-count">
							<input type="number" id="basket-countnum" min="1"
								value="${cartdto.cartCount }">
						</div>
						<div id="basket-product-pricesum">${cartdto.cartPriceSum }</div>
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>
	<div id="basket-btline">
		<div id="selectallbt">
			<input type="button" value="전체선택" onclick="allchk();">
		</div>
		<div id="selectbuybt">
			<input type="button" value="선택상품구매">
		</div>
		<div id="deletebt">
			<input type="button" value="삭제">
		</div>
	</div>
</div>

<div id="wishlist">
	<div id="wishlist-name">
		<h2>관심상품</h2>
	</div>
	<!-- 관심상풍 카테고리(?) 라인 -->
	<div>
		<div id="wishlist-category">
			<div id="wishlist-check">*</div>
			<div id="wishlist-image">이미지</div>
			<div id="wishlist-productname">상품이름</div>
			<div id="wishlist-price">판매가</div>
			<div id="wishlist-color">컬러</div>
			<div id="wishlist-size">사이즈</div>
		</div>
		<!-- 반복문 사용으로 관심상품 리스트 출력-->
		<c:choose>
			<c:when test="${empty wishlist }">
				<p>게시물이 없습니다.</p>
			</c:when>
			<c:otherwise>
				<c:forEach items="${wishlist }" var="wishdto">
					<div id="wishlist-product">
						<input type="checkbox" name="wishlist-check"
							id="wishlist-product-check">
						<div id="wishlist-product-image">
							<img src="images.jpg" id="wishlist-imeageset" />
						</div>
						<div id="wishlist-product-productname">${wishdto.wishName }</div>
						<div id="wishlist-product-price">${wishdto.wishPrice }</div>
						<div id="wishlist-product-color">${wishdto.wishColor }</div>
						<div id="wishlist-product-size">${wishdto.wishSize }</div>
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>
	<div id="basket-btline">
		<div id="selectallbt">
			<input type="button" value="전체선택">
		</div>
		<div id="deletebt">
			<input type="button" value="삭제">
		</div>
	</div>
</div>
<jsp:include page="include/footer.jsp" />