<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<title>oT.</title>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<!--    <link rel="stylesheet" href="./css/Login_style.css"> -->
<link rel="stylesheet" href="./css/mypage_list.css">
<link rel="stylesheet" href="./css/mypage_basic.css">
<link rel="icon" type="image/png" href="images/icons/favicon.png" />

<style>
a{
	font-size : 13px !important;
}
</style>
</head>
<body style="font-size:13px;">
<%@include file="header.jsp"%>
<div id="container">
        <div id="contents">
            
<div class="xans-element- xans-board xans-board-readpackage-4 xans-board-readpackage xans-board-4 "><div class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 "><div class="title">
            <h2><font color="333333">상품문의</font> </h2>
            <!--h3>상품문의 게시판입니다.</h3-->
        </div>
</div>
<form id="BoardDelForm" name="" action="/exec/front/Board/del/6" method="post" target="_self" enctype="multipart/form-data">
<input id="no" name="no" value="818716" type="hidden">
<input id="bulletin_no" name="bulletin_no" value="453580" type="hidden">
<input id="board_no" name="board_no" value="6" type="hidden">
<input id="member_id" name="member_id" value="kss0324" type="hidden">
<input id="list_url" name="list_url" value="/board/product/list.html?board_no=6" type="hidden">
<input id="bdf_modify_url" name="bdf_modify_url" value="/board/product/modify.html?board_act=edit&amp;no=818716&amp;board_no=6" type="hidden">
<input id="bdf_del_url" name="bdf_del_url" value="/exec/front/Board/del/6" type="hidden">
<input id="bdf_action_type" name="bdf_action_type" value="" type="hidden"><div class="xans-element- xans-board xans-board-read-4 xans-board-read xans-board-4"><!--
            $login_page_url = /member/login.html
            $deny_access_url = /board/product/list.html
        -->
<div class="ec-base-table typeWrite " style="border-right:none;">
            <table border="1" summary="">
<caption>상품 게시판 상세</caption>
            <colgroup>
<col style="width:150px;">
<col style="width:auto;">
</colgroup>
<tbody>
<tr>
<th scope="row">SUBJECT</th>
                    <td>[상품문의]</td>
                </tr>
<tr>
<th scope="row">WRITER</th>
                    <td> 홍길동 <span class="displaynone">(ip:)</span> </td>
                </tr>
<tr>
<td colspan="2">
                        <ul class="etcArea">
<li class="displaynone">
                                <span>POINT</span> <img src="/web/upload/yangji_pc_crumb/ico_point0.gif" alt="0점">
                            &nbsp;</li>
                            <li class="">
                                <span>DATE</span> <span class="txtNum">2020-03-18</span>
                            </li>
                            <li class="displaynone">
                                <span>RECOMMEND</span> <span class="txtNum"><a href="#none" onclick="BOARD_READ.article_vote('/exec/front/Board/vote/6?no=818716&amp;board_no=6&amp;page=&amp;return_url=%2Fboard%2Fproduct%2Fread.html');"> <img src="//img.echosting.cafe24.com/skin/base_ko_KR/board/btn_recommend.gif" alt="추천하기"></a></span>
                            </li>
                            <li class="displaynone">
                                <span>VIEWED</span> <span class="txtNum">7</span>
                            </li>
                        </ul>
<div class="detail">▶ 상품 기본 설명은 상품 페이지 하단에 기재되어있습니다. <br>
사이즈는 잘 맞는 상품의 상세사이즈와 저희가 올려드린 상세사이즈를 비교 해주시는게 좋습니다.<br>
<br>
야외촬영or스태프촬영의경우 야외촬영이나 조명에 따라 약간씩 컬러가 다를 수 있어서 디테일컷으로 보시는게 가장 정확 합니다. (해상도에 따라 약간씩 차이 날 수 있습니다.)<br>
<br>
* 배송전 교환/취소시 [배송전 부분취소/변경] 제목선택을 안해주시면 상품교환/주문취소는 당일 처리되지 않습니다 *<br>
<br>
비회원으로 문의주실 경우엔 동명이인으로 인해 주문정보와 함께 남겨주셔야 바로 처리 가능합니다.<br>
<br>
----------------------------------------------------------------------<br>			<div><br></div><div>dfsdfdsf</div></div>
                    </td>
                </tr>
<tr class="attach displaynone">
<th scope="row">FILE</th>
                    <td></td>
                </tr>
<tr class=" displaynone">
<th scope="row">PASSWORD</th>
                    <td><input id="password" name="password" fw-filter="" fw-label="비밀번호" fw-msg="" onkeydown="if (event.keyCode == 13 || event.which == 13) { return false; }" value="" type="password"> <span class="ec-base-help txtInfo">삭제하려면 비밀번호를 입력하세요.</span>
</td>
                </tr>
</tbody>
</table>
</div>
<div class="ec-base-button ">
            <span class="gLeft">
                <span class="displaynone">
                    <a href="#none" onclick="" class="yg_btn_30 yg_btn4 admin displaynone" alt="관리자게시">관리자게시</a>
                    <a href="#none" onclick="" class="yg_btn_30 yg_btn4 admin displaynone" alt="게시안함">게시안함</a>
                    <a href="#none" onclick="" class="yg_btn_30 yg_btn4" alt="스팸신고">스팸신고</a>
                    <a href="#none" onclick="" class="yg_btn_30 yg_btn4" alt="스팸해제">스팸해제</a>
                </span>
                <a href="/board/상품문의/6/" class="yg_btn_30 yg_btn4" alt="목록">LIST</a>
            </span>
            <span class="gRight">
                <a href="#none" onclick="BOARD_READ.article_delete('BoardDelForm','6');" class="yg_btn_30 yg_btn4 " alt="삭제">DELETE</a>
                <a href="/ot/mypage_board_modify.jsp" class="yg_btn_30 yg_btn4 " alt="수정">MODIFY</a>
                <a href="/board/product/reply.html?board_act=reply&amp;no=818716&amp;board_no=6" class="yg_btn_30 yg_btn4 displaynone" alt="답변">REPLY</a>
            </span>
        </div>
</div>
</form></div>

<div class="xans-element- xans-board xans-board-commentpackage-4 xans-board-commentpackage xans-board-4 "><!-- 코멘트 리스트 -->
<!-- 코멘트 페이징 -->
<!-- 댓글 수정 -->
<form id="commentForm" name="" action="/exec/front/Board/CommentUpdate/6" method="post" target="_self" enctype="multipart/form-data" style="display: none;">
<input id="board_no" name="board_no" value="6" type="hidden">
<input id="no" name="no" value="818716" type="hidden">
<input id="comment_no" name="comment_no" value="" type="hidden">
<input id="member_id" name="member_id" value="" type="hidden"><div class="xans-element- xans-board xans-board-commentform-4 xans-board-commentform xans-board-4 "><fieldset>
<legend>댓글 수정</legend>
            <p>비밀번호 : <input id="comment_password" name="comment_password" fw-filter="isFill" fw-label="댓글비밀번호" fw-msg="" value="" type="password"> <span class="secret displaynone"><label>비밀댓글</label></span></p>
            <div class="view">
                <textarea id="comment_modify" name="comment_modify" fw-filter="isFill" fw-label="댓글내용" fw-msg=""></textarea>                <span class="submit">
                    <a href="#none" onclick="BOARD_COMMENT.comment_update_ok('commentForm');" class="yg_btn yg_btn5 modify" alt="수정">수정</a>
                    <a href="#none" onclick="BOARD_COMMENT.comment_cancel_ok('commentForm');" class="yg_btn yg_btn3 cancel" alt="취소">취소</a>
                </span>
            </div>
            <p class="displaynone"> /  byte</p>
        </fieldset>
</div>
</form><!-- 비밀글 확인 -->
<form id="commentSecretForm" name="" action="/exec/front/Board/CommentSecret/6" method="post" target="_self" enctype="multipart/form-data" style="display: none;">
<input id="board_no" name="board_no" value="6" type="hidden">
<input id="comment_no" name="comment_no" value="" type="hidden">
<input id="pass_check" name="pass_check" value="F" type="hidden"><div class="xans-element- xans-board xans-board-commentformsecret-1002 xans-board-commentformsecret xans-board-1002 "><p>PASSWORD <input id="secure_password" name="secure_password" fw-filter="isFill" fw-label="댓글비밀번호" fw-msg="" value="" type="password">            <a href="#none" onclick="BOARD_COMMENT.show_secret_comment('commentSecretForm');" class="yg_btn_24 yg_btn3" alt="확인">OK</a>
            <a href="#none" onclick="BOARD_COMMENT.hide_secret_comment_form('commentSecretForm');" class="yg_btn_24 yg_btn3" alt="취소">CANCEL</a>
        </p>
</div>
</form><!-- 댓글 쓰기 -->
<!-- 댓글의 댓글 쓰기 -->
</div>

<div class="xans-element- xans-board xans-board-movement-4 xans-board-movement xans-board-4 "><ul>
<li class="prev ">
<strong>PREV</strong><a href="/article/상품문의/6/818737/">답변완료:)</a>
</li>
        <li class="next ">
<strong>NEXT</strong><a href="/article/상품문의/6/818720/">답변완료:)</a>
</li>
    </ul>
</div>


<!-- 관리자 전용 메뉴 -->
<!-- //관리자 전용 메뉴 -->

        </div><hr class="layout"></div>
        	<%@include file="footer.jsp"%>
</body>
</html>