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
<body>
	<%@include file="header.jsp"%>
	<div id="container">
 		<div id="memberInf1">
			<div class="xans-myshop-bankbook " style="width: 80%;">
    			<p class="xans-element- xans-myshop xans-myshop-asyncbenefit mypage_top ">
    				<strong>
    					<span><span class="xans-member- var-name">홍길동</span></span>
    				</strong>
 					님은 현재 
					<strong>
						<span class="xans-member- var-group_name" style="color:rgba(230,106,87,1);">MEMBER</span>
						<span class="myshop_benefit_ship_free_message"></span>
					</strong>
  					입니다.
				</p>
		
			<ul style="float: right;width: 350px;height: 60px;margin-right: 100px;margin-top: -34px;">
				<li class="xans-layout-shoppinginfo ">
					<strong class="title">
						<a href="/myshop/wish_list.html">WISH</a>
					</strong>
  			<br>
					<strong class="data ">
						<a href="/myshop/wish_list.html">
							<span id="xans_myshop_interest_prd_cnt">0개</span>
						</a>
					</strong>
				</li>
				
                <li>
                    <strong class="title">
                    	<a href="/myshop/mileage/historyList.html">POINT</a>
                    </strong>
                    <br>
                    <strong class="data">
                    	<a href="/myshop/mileage/historyList.html">0원</a>
                    </strong>
                </li>
                
                <li class="etc ">
                    <strong class="title">
                    	<a href="/myshop/coupon/coupon.html">COUPON</a>
                    </strong>
                    <br>
                    <strong class="data">
                    	<a href="/myshop/coupon/coupon.html">0<span>개</span></a>
                    </strong>
                    	<a href="/myshop/coupon/coupon.html"></a>
	                </li>
	            </ul>
			</div>
		</div>
		<div id="contents">
			<div class="mypage_top_outer">
				<!-- <div module="myshop_bankbook">        
			        <ul>
			            <li module="Layout_shoppingInfo">
			                <strong class="title"><a href="/myshop/wish_list.html">WISH</a></strong>
			                <strong class="data {$use_interest_prd|display}"><a href="/myshop/wish_list.html">{$interest_prd_cnt}</a></strong>
			            </li>
			            <li>
			                <strong class="title"><a href="/myshop/mileage/historyList.html">POINT</a></strong>
			                <strong class="data"><a href="/myshop/mileage/historyList.html">{$avail_mileage}</a></strong>
			            </li>
			            <li class="etc {$display_coupon|display}">
			                <strong class="title"><a href="/myshop/coupon/coupon.html">COUPON</a></strong>
			                <strong class="data"><a href="/myshop/coupon/coupon.html">{$coupon_cnt}<span>개</span></a></strong>
			                <a href="/myshop/coupon/coupon.html"></a>
			            </li>
			        </ul>
			    </div> -->
			</div>

			<div class="titleArea">
				<h2>BOARD LIST</h2>
			</div>

			<div class="xans-element- xans-layout xans-layout-logincheck ">
				<!--
			    $url = /member/login.html
			-->
			</div>

			<div class="xans-element- xans-myshop xans-myshop-boardpackage ">
				<div class="xans-element- xans-myshop xans-myshop-boardlisthead ">
					<p style="font-size:13px;">
						분류 선택 <select id="board_sort" name="board_sort" fw-filter=""
							fw-label="" fw-msg=""
							onchange="BOARD.change_sort('boardSearchForm', this);">
							<option value="D">작성 일자별</option>
							<option value="C">분류별</option>
						</select>
					</p>
				</div>
				<div
					class="xans-element- xans-myshop xans-myshop-boardlist ec-base-table typeList gBorder gBlank10">
					<!--
            $count = 10
            $relation_post = yes
        -->
					<table border="1" summary="">
						<caption>게시물 관리 목록</caption>
						<colgroup
							class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
							<col style="width: 70px;">
							<col style="width: 160px;">
							<col style="width: auto;">
							<col style="width: 110px;">
							<col style="width: 120px;">
							<col style="width: 80px;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">NO</th>
								<th scope="col">BOARD CATEGORY</th>
								<th scope="col">SUBJECT</th>
								<th scope="col">WRITER</th>
								<th scope="col">DATE</th>
								<th scope="col">HIT</th>
							</tr>
						</thead>
						<tbody class="displaynone">
							<tr>
								<td colspan="6" class="message">게시물이 없습니다.</td>
							</tr>
						</tbody>
						<tbody class=" center">
							<tr class="xans-record-">
								<td>2</td>
								<td><a href="/board/상품문의/6/">상품문의</a></td>
								<td class="left subject">&nbsp;&nbsp;&nbsp;<img
									src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_re.gif"
									alt="답변" class="ec-common-rwd-image"> <img
									src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_lock.gif"
									alt="비밀글" class="ec-common-rwd-image"> <a
									href="/board/product/read.html?no=818720&amp;board_no=6">답변완료:)</a>
									<img
									src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_new.gif"
									alt="NEW" class="ec-common-rwd-image"></td>
								<td>ADMIN</td>
								<td><span class="txtNum">2020-03-18</span></td>
								<td><span class="txtNum">1</span></td>
							</tr>
							<tr class="xans-record-">
								<td>1</td>
								<td><a href="/board/상품문의/6/">상품문의</a></td>
								<td class="left subject"><img
									src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_lock.gif"
									alt="비밀글" class="ec-common-rwd-image"> <a
									href="/ot/mypage_board_view.jsp">[상품문의]</a>
									<img
									src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_new.gif"
									alt="NEW" class="ec-common-rwd-image"></td>
								<td>홍길동</td>
								<td><span class="txtNum">2020-03-18</span></td>
								<td><span class="txtNum">4</span></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<form id="boardSearchForm" name="" action="/myshop/board_list.html"
				method="get" target="" enctype="multipart/form-data">
				<input id="board_no" name="board_no" value="" type="hidden">
				<input id="page" name="page" value="1" type="hidden"> <input
					id="board_sort" name="board_sort" value="" type="hidden">
				<div class="xans-element- xans-myshop xans-myshop-boardlistsearch ">
					<fieldset class="boardSearch">
						<legend>게시물 검색</legend>
						<p style="font-size:12px;">
							<select id="search_key" name="search_key" fw-filter=""
								fw-label="" fw-msg="">
								<option value="subject">제목</option>
								<option value="content">내용</option>
								<option value="writer_name">글쓴이</option>
								<option value="member_id">아이디</option>
								<option value="nick_name">별명</option>
							</select> <input id="search" name="search" fw-filter="" fw-label=""
								fw-msg="" class="inputTypeText" placeholder="" value=""
								type="text"> <a href="#none" class="yg_btn_28 yg_btn3"
								onclick="BOARD.form_submit('boardSearchForm');" alt="찾기">SEARCH</a>
						</p>
					</fieldset>
				</div>
			</form>

			<div
				class="xans-element- xans-myshop xans-myshop-boardlistpaging ec-base-paginate">
				<!--
        $relation_post = yes
    -->
				<a href="?page=1"><img src="/ot/images/btn_page_prev.gif"
					alt="이전 페이지"></a>
				<ol>
					<li class="xans-record-"><a href="?page=1" class="this">1</a></li>
				</ol>
				<a href="?page=1"><img src="/ot/images/btn_page_next.gif"
					alt="다음 페이지"></a>
			</div>

			<div class="crema-reviews crema-applied" data-type="my-reviews">
				<iframe id="crema-reviews-1" height="100%"
					src="http://review6.cre.ma/black-up.kr/my/reviews?iframe_id=crema-reviews-1&amp;app=0&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fmyshop%2Fboard_list.html&amp;secure_username=V211ca6b9b1bade7af3d0dda70e4c78cd9&amp;secure_user_name=V268af191d6069a07dcf844e27ae20714b&amp;iframe=1"
					width="100%" scrolling="no" allowtransparency="true"
					frameborder="0" name="crema-reviews-1-1584533325924"
					style="visibility: visible; height: 374px;"></iframe>
			</div>

		</div>
		<hr class="layout">
	</div>

	<%@include file="footer.jsp"%>
</body>
</html>