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
<link rel="stylesheet" href="./css/mypage_basic.css">
<link rel="stylesheet" href="./css/mypage_list.css">
<link rel="icon" type="image/png" href="images/icons/favicon.png"/>

<style>
.ec-base-tab.tab_style li a {
    background: #f4f4f4;
    margin: 0;
}
</style>
</head>
<body>
	<%@include file="header.jsp" %>	
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
    			<h2>POINT</h2>
			</div>

			<div class="xans-element- xans-layout xans-layout-logincheck ">
			<!--
			    $url = /member/login.html
			-->
			</div>
			
			<div class="ec-base-tab tab_style">
        		<ul class="menu">
					<li>
						<a href="/ot/mypage_point.jsp">적립내역보기</a>
					</li>
		            <li class="selected">
		            	<a href="/ot/mypage_unavailpoint.jsp">미가용적립내역보기</a>
	            	</li>
		            <li>	
		            	<a href="/ot/mypage_unavailcoupon.jsp">미가용쿠폰/회원등급적립내역</a>
	            	</li>
        		</ul>
			</div>

			<div class="xans-element- xans-myshop xans-myshop-historylist">
				<!--
	            $only_html = no
	            $count = 10
	            $login_page = /member/login.html
	        	-->
				<div class="ec-base-table typeList">
            		<table border="1" summary="">
					<caption>적립금 내역</caption>
                	<colgroup>
						<col style="width:13%">
						<col style="width:13%">
						<col style="width:15%">
						<col style="width:20%">
						<col style="width:auto">
					</colgroup>
					
					<thead>
						<tr>
							<th scope="col">주문날짜</th>
	                        <th scope="col">적립금</th>
	                        <th scope="col">관련 주문</th>
	                        <th scope="col">사용가능 예정일</th>
	                        <th scope="col">내용</th>
                    	</tr>
                   	</thead>
                   	
					<tbody class="displaynone center">
						<tr class="">
							<td></td>
	                        <td></td>
	                        <td>
	                        	<a href="/myshop/order/detail.html?order_id="></a>
                       		</td>
	                        <td></td>
                        	<td class="left"></td>
                    	</tr>
						<tr class="">
							<td></td>
	                        <td></td>
	                        <td><a href="/myshop/order/detail.html?order_id="></a></td>
	                        <td></td>
	                        <td class="left"></td>
                    	</tr>
						<tr class="">
							<td></td>
	                        <td></td>
	                        <td><a href="/myshop/order/detail.html?order_id="></a></td>
	                        <td></td>
	                        <td class="left"></td>
                    	</tr>
					</tbody>
				</table>
				<p class="message ">적립금 내역이 없습니다.</p>
        		</div>
			</div>

			<div class="xans-element- xans-myshop xans-myshop-historypaging ec-base-paginate">
				<a href="/myshop/mileage/historyList.html?page=1" class="first">
					<img src="/ot/images/btn_page_first.gif" alt="첫 페이지">
				</a>
				<a href="/myshop/mileage/historyList.html?page=1">
					<img src="/ot/images/btn_page_prev.gif" alt="이전 페이지">
				</a>
	
				<ol>
					<li class="xans-record-">
						<a href="?page=1" class="this">1</a>
					</li>
	            </ol>
				<a href="/myshop/mileage/historyList.html?page=1">
				<img src="/ot/images/btn_page_next.gif" alt="다음 페이지">
				</a>
				<a href="/myshop/mileage/historyList.html?page=1" class="last">
				<img src="/ot/images/btn_page_last.gif" alt="마지막 페이지">
				</a>
			</div>
	
			<div class="xans-element- xans-myshop xans-myshop-head ec-base-help ">
				<h3>적립금 안내</h3>
				<div class="inner">
	        		<ol class="xans-element- xans-myshop xans-myshop-historyinfo" style="font-size: 13px;">
	        			<li class="item1 ">주문으로 발생한 적립금은 배송완료 후 7일 부터 실제 사용 가능한 적립금으로 전환됩니다. 배송완료 시점으로부터 7일 동안은 미가용 적립금으로 분류됩니다.</li>
						<li class="item2 ">미가용 적립금은 반품, 구매취소 등을 대비한 임시 적립금으로 사용가능 적립금으로 전환되기까지 상품구매에 사용하실 수 없습니다.</li>
						<li class="item3 ">사용가능 적립금(총적립금 - 사용된적립금 - 미가용적립금)은 상품구매 시 바로 사용가능합니다.</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
	
 <%@include file="footer.jsp" %>
</body>
</html>