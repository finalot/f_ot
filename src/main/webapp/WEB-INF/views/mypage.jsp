<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<title>oT.</title>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
   <link rel="stylesheet" href="./css/Login_style.css">
   <link rel="stylesheet" href="./css/mypage_basic.css">
   <link rel="stylesheet" href="./css/mypage.css">
   
   <link rel="icon" type="image/png" href="images/icons/favicon.png"/>
</head>
<body>
	<%@include file="header.jsp" %>
	
 	<div id="memberInf">
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
	</div>
	
    <div id="container">
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
    			<h2>MY SHOPPING</h2>
			</div>

			<div class="xans-element- xans-layout xans-layout-logincheck ">
			<!--
			    $url = /member/login.html
			-->
			</div>
		
			<div id="myshopMain" class="xans-element- xans-myshop xans-myshop-main">
		   <!-- <div class="shopMain order">
			        <a href="/myshop/order/list.html">ORDER LIST</a>
			    </div>
			    <div class="shopMain wishlist">
			        <a href="/myshop/wish_list.html">WISH LIST</a>
			    </div>
			    <div class="shopMain mileage">
			        <a href="/myshop/mileage/historyList.html">POINT</a>
			    </div>
			    <div class="shopMain coupon ">
			        <a href="/myshop/coupon/coupon.html">COUPON</a>
			    </div>
			    <div class="shopMain view">
			        <a href="/product/recent_view_product.html">RECENTLY VIEWED</a>
			    </div>       
			    <div class="shopMain deposits ">
			        <a href="/myshop/deposits/historyList.html">DEPOSITS</a>
			    </div>
			    <div class="shopMain board">
			        <a href="/myshop/board_list.html">BOARD LIST</a>
			    </div>
			    <div class="shopMain address">
			        <a href="/myshop/addr/list.html">ADDRESS</a>
			    </div>
			    <div class="shopMain profile">
			        <a href="/member/modify.html">EDIT PROFILE</a>
			    </div-->
				<div class="shopMain order">
			        <a href="/ot/mypage_list.jsp">주문내역</a>
			    </div>
				<div class="shopMain wishlist">
			        <a href="/ot/mypage_wishList.jsp">관심상품</a>
			    </div>
				<div class="shopMain mileage">
			        <a href="/ot/mypage_point.jsp">적립금</a>
			    </div>
				<div class="shopMain coupon  ">
			        <a href="/ot/mypage_coupon.jsp">쿠폰</a>
			    </div>
				<div class="shopMain board">
			        <a href="/ot/mypage_board.jsp">내가 쓴 게시글</a>
			    </div>
				<div class="shopMain address">
			        <a href="/ot/mypage_address.jsp">배송 주소록 관리</a>
			    </div>
				<div class="shopMain profile">
			        <a href="/ot/mypage_memberEdit.jsp">회원 정보 수정</a>
			    </div>
			    
		<!--    <div class="shopMain consult displaynone">
		       		 <h3><a href="/board/consult/list.html"><strong>consult</strong>1:1 맞춤상담</a></h3>
		       		 <p><a href="/board/consult/list.html">고객님의 궁금하신 문의사항에 대하여 1:1맞춤상담 내용을 확인하실 수 있습니다.</a></p>
		    	</div>
		   	    <div module="Myshop_InquiryDash" class="shopMain inquiry">
		        <h3><a href="/board/inquiry/list.html"><strong>Inquiry</strong>대량구매 문의 관리</a></h3>
		        <p><a href="/board/inquiry/list.html">요청한 대량구매문의 내역을 확인하고 관리하실 수 있습니다.</a></p>
		    	</div> -->
			</div>
		
			<div class="xans-element- xans-myshop xans-myshop-orderstate ">
				<div class="title">
			        <h3>나의 주문처리 현황 <span class="desc">(최근 <em>3개월</em> 기준)</span></h3>
			    </div>
			    
				<div class="state">
				
			        <ul class="order">
						<li>
			                <strong>입금전</strong>
			                <a href="/ot/mypage_list.jsp" class="count"><span id="xans_myshop_orderstate_shppied_before_count">0</span></a>
			            </li>
			            <li>
			                <strong>배송준비중</strong>
			                <a href="/ot/mypage_list.jsp" class="count"><span id="xans_myshop_orderstate_shppied_standby_count">0</span></a>
			            </li>
			            <li>
			                <strong>배송중</strong>
			                <a href="/ot/mypage_list.jsp" class="count"><span id="xans_myshop_orderstate_shppied_begin_count">0</span></a>
			            </li>
			            <li>
			                <strong>배송완료</strong>
			                <a href="/ot/mypage_list.jsp" class="count"><span id="xans_myshop_orderstate_shppied_complate_count">0</span></a>
			            </li>
			        </ul>
			        
					<ul class="cs">
						<li>
			                <span class="icoDot"></span>
			                <strong>취소 : </strong>
			                <a href="/ot/mypage_list.jsp" class="count"><span id="xans_myshop_orderstate_order_cancel_count">0</span></a>
			            </li>
			            <li>
			                <span class="icoDot"></span>
			                <strong>교환 : </strong>
			                <a href="/ot/mypage_list.jsp" class="count"><span id="xans_myshop_orderstate_order_exchange_count">0</span></a>
			            </li>
			            <li>
			                <span class="icoDot"></span>
			                <strong>반품 : </strong>
			                <a href="/ot/mypage_list.jsp" class="count"><span id="xans_myshop_orderstate_order_return_count">0</span></a>
			            </li>
			        </ul>
				</div>
			</div>
		</div>
		
	<hr class="layout">
	</div>

 <%@include file="footer.jsp" %>
</body>
</html>