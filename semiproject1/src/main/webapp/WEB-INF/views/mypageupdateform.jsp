	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<link rel="stylesheet" href="../resources/css/mypageupdateform.css" type="text/css">
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
	<div class="mypageupdate-header">
        <h2>회원 정보 수정</h2>
    </div>
    <div>
        <div class="mypageupdate-text">
            <div class="text-left">기본정보</div>
            <div class="text-right">*필수입력사항</div>
        </div>
    </div>
    <div class="mypageupdate-id">
        <div id="myapgeupdate-id-div">
            <label id="mypageupdate-id-label">아이디*</label>
        </div>
        <div id="mypageupdate-idinput-div">
            <input type="text" name="mypageid" id="mypageupdate-id-input">
            <label id="mypageupdate-id-content">(영문소문자/숫자, 4~16자)</label>
        </div>
    </div>

    <div class="mypageupdate-pw">
        <div id="myapgeupdate-pw-div">
            <label id="mypageupdate-pw-label">비밀번호*</label>
        </div>
        <div id="mypageupdate-pwinput-div">
            <input type="password" name="mypagepw" id="mypageupdate-pw-input">
            <label id="mypageupdate-pw-content">(영문소문자/숫자/특수문자 중 2가지 이상 조합, 8~16자)</label>
        </div>
    </div>

    <div class="mypageupdate-pwck">
        <div id="myapgeupdate-pwck-div">
            <label id="mypageupdate-pwck-label">비밀번호 확인*</label>
        </div>
        <div id="mypageupdate-pwckinput-div">
            <input type="password" name="mypagepwck" id="mypageupdate-pwck-input">
        </div>
    </div>

    <div class="mypageupdate-name">
        <div id="myapgeupdate-name-div">
            <label id="mypageupdate-name-label">이름*</label>
        </div>
        <div id="mypageupdate-nameinput-div">
            <input type="text" name="mypagename" id="mypageupdate-name-input">
        </div>
    </div>

    <div class="mypageupdate-addr">
        <div id="myapgeupdate-addr-div">
            <label id="mypageupdate-addr-label">주소</label>
        </div>
            <div id="myapgeupdate-addrinput-div">
                <div>
                    <input type="text" id="mypageupdate-addr-number">
                    <input type="button" value="우편번호" id="mypageupdate-addr-bt">
                </div>
                <div>
                    <input type="text" id="mypageupdate-addr-first">
                    <label id="mypageupdate-addrfirst-content">기본주소</label>
                </div>
                <div>
                    <input type="text" id="mypageupdate-addr-last">
                    <label id="mypageupdate-addrlast-content">나머지주소</label>
                </div>
            </div>
        </div>    

    <div class="mypageupdate-phone">
        <div id="myapgeupdate-phone-div">
            <label id="mypageupdate-phone-label">휴대전화*</label>
        </div>
        <div id="mypageupdate-phoneinput-div">
            <input type="text" name="mypagephone" id="mypageupdate-phone-input">
        </div>
    </div>

    <div class="mypageupdate-email">
        <div id="myapgeupdate-email-div">
            <label id="mypageupdate-email-label">이메일*</label>
        </div>
        <div id="mypageupdate-emailinput-div">
            <input type="email" name="mypageemail" id="mypageupdate-email-input">
        </div>
    </div>
    <div class="mypageupdate-bt">
        <input type="button" value="회원 정보 수정" id="mypageupdate-updatebt">
        <input type="button" value="취소" id="mypageupdate-updatecl">
    </div>
   <%@ include file="/WEB-INF/views/include/footer.jsp" %>