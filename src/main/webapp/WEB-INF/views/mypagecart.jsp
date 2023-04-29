	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<link rel="stylesheet" href="../resources/css/basket.css" type="text/css">
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
 <h2><a href="/mypageupdateform.jsp">fsda</a></h2>
<div id="basket">
    <div id="basket-name">
        <h2>장바구니</h2>
    </div>
    <!-- 장바구니 카테고리(?) 라인 -->
    <div>
        <div id="basket-category" >
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
        <div id="basket-product">
            <input type="checkbox" name="basket-check" id="basket-product-check">
            <div id="basket-product-image">
                    <img src="images.jpg" id="basket-imeageset"/>
            </div>
            <div id="basket-product-productname">Product Name</div>
            <div id="basket-product-price">30,000</div>
            <div id="basket-product-color">Black</div>
            <div id="basket-product-size">XL</div>
            <div id="basket-product-count"><input type="number" id="basket-countnum" min="1" value="1"></div>
            <div id="basket-product-pricesum">30,000</div>
        </div>
        <div id="basket-product">
            <input type="checkbox" name="basket-check" id="basket-product-check">
            <div id="basket-product-image">
                    <img src="../resources/image/images.jpg" id="basket-imeageset"/>
            </div>
            <div id="basket-product-productname">Product Name</div>
            <div id="basket-product-price">30,000</div>
            <div id="basket-product-color">Black</div>
            <div id="basket-product-size">XL</div>
            <div id="basket-product-count"><input type="number" id="basket-countnum" min="1" value="1"></div>
            <div id="basket-product-pricesum">30,000</div>
        </div>
        <div id="basket-product">
            <input type="checkbox" name="basket-check" id="basket-product-check">
            <div id="basket-product-image">
                    <img src="../resources/image/images.jpg" id="basket-imeageset"/>
            </div>
            <div id="basket-product-productname">Product Name</div>
            <div id="basket-product-price">30,000</div>
            <div id="basket-product-color">Black</div>
            <div id="basket-product-size">XL</div>
            <div id="basket-product-count"><input type="number" id="basket-countnum" min="1" value="1"></div>
            <div id="basket-product-pricesum">30,000</div>
        </div>
    </div>
    <div id="basket-btline">
        <div id="selectallbt">
            <input type="button" value="전체선택">
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
        <div id="wishlist-product">
            <input type="checkbox" name="wishlist-check" id="wishlist-product-check">
            <div id="wishlist-product-image">
                    <img src="images.jpg" id="wishlist-imeageset"/>
            </div>
            <div id="wishlist-product-productname">Product Name</div>
            <div id="wishlist-product-price">30,000</div>
            <div id="wishlist-product-color">Black</div>
            <div id="wishlist-product-size">XL</div>
        </div>
        <div id="wishlist-product">
            <input type="checkbox" name="wishlist-check" id="wishlist-product-check">
            <div id="wishlist-product-image">
                    <img src="images.jpg" id="wishlist-imeageset"/>
            </div>
            <div id="wishlist-product-productname">Product Name</div>
            <div id="wishlist-product-price">30,000</div>
            <div id="wishlist-product-color">Black</div>
            <div id="wishlist-product-size">XL</div>
        </div>
        <div id="wishlist-product">
            <input type="checkbox" name="wishlist-check" id="wishlist-product-check">
            <div id="wishlist-product-image">
                    <img src="images.jpg" id="wishlist-imeageset"/>
            </div>
            <div id="wishlist-product-productname">Product Name</div>
            <div id="wishlist-product-price">30,000</div>
            <div id="wishlist-product-color">Black</div>
            <div id="wishlist-product-size">XL</div>
        </div>
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
   <%@ include file="/WEB-INF/views/include/footer.jsp" %>