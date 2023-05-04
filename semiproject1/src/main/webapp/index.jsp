	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<link rel="stylesheet" href="../resources/css/main.css" type="text/css">
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
	
    <div class="main">
        <div class="section">
            <input type="radio" name="slide" id="slide01" checked>
            <input type="radio" name="slide" id="slide02">
            <input type="radio" name="slide" id="slide03">
            <div class="slidewrap">
                
                <ul class="slidelist">
                    <!-- 슬라이드 영역 -->
                    <li class="slideitem">
                        <a href="#">
                            <img src="resource/img/slide/slide1.jpg">
                        </a>
                    </li>
                    <li class="slideitem">
                        <a href="#">
                            <img src="resource/img/slide/slide2.jpg">
                        </a>
                    </li>
                    <li class="slideitem">
                        <a href="#">
                            <img src="resource/img/slide/slide3.jpg">
                        </a>
                    </li class="slideitem">
        
                    <!-- 좌,우 슬라이드 버튼 -->
                    <div class="slide-control">
                        <div>
                            <label for="slide03" class="left"></label>
                            <label for="slide02" class="right"></label>
                        </div>
                        <div>
                            <label for="slide01" class="left"></label>
                            <label for="slide03" class="right"></label>
                        </div>
                        <div>
                            <label for="slide02" class="left"></label>
                            <label for="slide01" class="right"></label>
                        </div>
                    </div>
        
                </ul>
                <!-- 페이징 -->
                <ul class="slide-pagelist">
                    <li><label for="slide01"></label></li>
                    <li><label for="slide02"></label></li>
                    <li><label for="slide03"></label></li>
                </ul>
            </div>
        </div>

        
<div class="pro-wrap">
    <ul class="pro-list">
        <h2>NEW ITEM</h2>
        <li>
            <a href="#">
                <div class="thum">
                    <img src="resource/img/img1-1.jpg">
                </div>
                <div class="price_body">
                    <div class ="text">
                        <p class="pro_text">무드 핸드메이드 자켓(2color)</p>
                            <div class="price">
                                <p class="pro_price">169,000원</p>
                            </div>
                    </div>
                </div>
            </a>
        </li>    
        <li>
            <a href="#">
                <div class="thum">
                    <img src="resource/img/img1-2.jpg">
                </div>
                <div class="price_body">
                    <div class ="text">
                        <p class="pro_text">메리노울 오버사이즈 빅하트 가디건 (3color)</p>
                            <div class="price">
                                <p class="pro_price">65,000원</p>
                            </div>
                    </div>
                </div>
            </a>
        </li> 
        <li>
            <a href="#">
                <div class="thum">
                    <img src="resource/img/img1-3.jpg">
                </div>
                <div class="price_body">
                    <div class ="text">
                        <p class="pro_text">메리노울 오버사이즈 터틀넥 빅하트 니트(4color)</p>
                            <div class="price">
                                <p class="pro_price">60,000원</p>
                            </div>
                    </div>
                </div>
            </a>
        </li> 
        <li>
            <a href="#">
                <div class="thum">
                    <img src="resource/img/img1-4.jpg">
                </div>
                <div class="price_body">
                    <div class ="text">
                        <p class="pro_text">스트라이프 메리노울 터틀넥 빅하트 니트</p>
                            <div class="price">
                                <p class="pro_price">60,000원</p>
                            </div>
                    </div>
                </div>
            </a>
        </li>
        <br>
        <li>
            <a href="#">
                <div class="thum">
                    <img src="resource/img/img2-1.jpg">
                </div>
                <div class="price_body">
                    <div class ="text">
                        <p class="pro_text">시티 벌룬 팬츠 (3color)</p>
                            <div class="price">
                                <p class="pro_price">44,000원</p>
                            </div>
                    </div>
                </div>
            </a>
        </li>
        <li>
            <a href="#">
                <div class="thum">
                    <img src="resource/img/img2-2.jpg">
                </div>
                <div class="price_body">
                    <div class ="text">
                        <p class="pro_text">시티 벌룬 후드 (3color)</p>
                            <div class="price">
                                <p class="pro_price">47,000원</p>
                            </div>
                    </div>
                </div>
            </a>
        </li> 
        <li>
            <a href="#">
                <div class="thum">
                    <img src="resource/img/img2-3.jpg">
                </div>
                <div class="price_body">
                    <div class ="text">
                        <p class="pro_text">릴리브 숏 야상패딩(2color)</p>
                            <div class="price">
                                <p class="pro_price">119,000원</p>
                            </div>
                    </div>
                </div>
            </a>
        </li> 
        <li>
            <a href="#">
                <div class="thum">
                    <img src="resource/img/img2-4.jpg">
                </div>
                <div class="price_body">
                <div class ="text">
                    <p class="pro_text">리플 항아리 후드 점퍼패딩 (3color)</p>
                        <div class="price">
                            <p class="pro_price">129,000원</p>
                        </div>
                </div>
                </div>
            </a>
        </li> 
    </ul>
</div>

<div class="pro-wrap">
<ul class="pro-list2">
    <h2>BEST ITEM</h2>
    <li>
        <a href="#">
            <div class="thum">
                <img src="resource/img/img3-1.jpg">
            </div>
            <div class="price_body">
                <div class ="text">
                    <p class="pro_text">캐피 박스 팬츠 (4color)</p>
                        <div class="price">
                            <p class="pro_price">28,000원</p>
                        </div>
                </div>
            </div>
        </a>
    </li>    
    <li>
        <a href="#">
            <div class="thum">
                <img src="resource/img/img3-2.jpg">
            </div>
            <div class="price_body">
                <div class ="text">
                    <p class="pro_text">캐피 박스 반팔티 (4color)</p>
                        <div class="price">
                            <p class="pro_price">28,000원</p>
                        </div>
                </div>
            </div>
        </a>
    </li> 
    <li>
        <a href="#">
            <div class="thum">
                <img src="resource/img/img3-3.jpg">
            </div>
            <div class="price_body">
                <div class ="text">
                    <p class="pro_text">웨이브 반바지 (5color)</p>
                        <div class="price">
                            <p class="pro_price">36,000원</p>
                        </div>
                </div>
            </div>
        </a>
    </li> 
    <li>
        <a href="#">
            <div class="thum">
                <img src="resource/img/img3-4.jpg">
            </div>
            <div class="price_body">
                <div class ="text">
                    <p class="pro_text">웨이브 맨투맨 (5color)</p>
                        <div class="price">
                            <p class="pro_price">38,000원</p>
                        </div>
                </div>
            </div>
        </a>
    </li>
    <br>
    <li>
        <a href="#">
            <div class="thum">
                <img src="resource/img/img4-1.jpg">
            </div>
            <div class="price_body">
                <div class ="text">
                    <p class="pro_text">칸프 남방 (4color)</p>
                        <div class="price">
                            <p class="pro_price">56,000원</p>
                        </div>
                </div>
            </div>
        </a>
    </li>
    <li>
        <a href="#">
            <div class="thum">
                <img src="resource/img/img4-2.jpg">
            </div>
            <div class="price_body">
                <div class ="text">
                    <p class="pro_text">레스반 반바지 (5color)</p>
                        <div class="price">
                            <p class="pro_price">36,000원</p>
                        </div>
                </div>
            </div>
        </a>
    </li> 
    <li>
        <a href="#">
            <div class="thum">
                <img src="resource/img/img4-3.jpg">
            </div>
            <div class="price_body">
                <div class ="text">
                    <p class="pro_text">린넨 아메카지 팬츠 (2color)</p>
                        <div class="price">
                            <p class="pro_price">40,000원</p>
                        </div>
                </div>
            </div>
        </a>
    </li> 
    <li>
        <a href="#">
            <div class="thum">
                <img src="resource/img/img4-4.jpg">
            </div>
            <div class="price_body">
                <div class ="text">
                    <p class="pro_text">무드 핸드메이드 자켓(2color)</p>
                        <div class="price">
                            <p class="pro_price">169,000원</p>
                        </div>
                </div>
            </div>
        </a>
    </li> 
</ul>
</div>
</div>

<!-- 상단 이동하기 버튼 -->
<div id="goto-top"> 
    <!-- <a href="#header"> -->
        <img src="https://www.topten10mall.com/front/img/ssts/common/PC_scroll_top.png" style="width: 50px;"> 
    <!-- </a> -->
</div>
<div class="chat">
    <img src="resource/img/chat/480px-OpenMoji-black_1F469-200D-1F680.svg.png" style="width: 50px;"> 
</div>
   <%@ include file="/WEB-INF/views/include/footer.jsp" %>