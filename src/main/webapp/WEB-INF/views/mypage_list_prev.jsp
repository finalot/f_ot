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
    			<h2>ORDER LIST</h2>
			</div>

			<div class="xans-element- xans-layout xans-layout-logincheck ">
			<!--
			    $url = /member/login.html
			-->
			</div>
			
			<div class="xans-element- xans-myshop xans-myshop-orderhistorytab ec-base-tab tab_style ">
				<ul class="menu">
					<li class="tab_class">
						<a href="/ot/mypage_list.jsp">주문내역조회 (<span id="xans_myshop_total_orders">0</span>)</a>
					</li>
			        <li class="tab_class_cs">
			        	<a href="/ot/mypage_list_cancel.jsp">취소/반품/교환 내역 (<span id="xans_myshop_total_orders_cs">0</span>)</a>
					</li>
			        <li class="tab_class_old displaynone selected">
			        	<a href="/ot/mypage_list_prev.jsp">이전 주문내역 (<span id="xans_myshop_total_orders_old">0</span>)</a>
		        	</li>
    			</ul>
			</div>
			
			<form method="GET" id="OrderHistoryForm" name="OrderHistoryForm">
				<div class="xans-element- xans-myshop xans-myshop-orderhistoryhead ">
					<fieldset class="ec-base-box">
						<legend>검색기간설정</legend>
   
						
				        <span class="period">
				            <a href="#none" class="btnNormal" days="00"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date1.gif" offimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date1.gif" onimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date1_on.gif" alt="오늘"></a>
				            <a href="#none" class="btnNormal" days="07"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date2.gif" offimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date2.gif" onimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date2_on.gif" alt="1주일"></a>
				            <a href="#none" class="btnNormal" days="30"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date3.gif" offimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date3.gif" onimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date3_on.gif" alt="1개월"></a>
				            <a href="#none" class="btnNormal" days="90"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date4.gif" offimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date4.gif" onimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date4_on.gif" alt="3개월"></a>
				            <a href="#none" class="btnNormal" days="180"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date5.gif" offimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date5.gif" onimage="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date5_on.gif" alt="6개월"></a>
				        </span>
				        
        				<input id="history_start_date" name="history_start_date" class="fText hasDatepicker" readonly="readonly" size="10" value="2019-12-15" type="text"><button type="button" class="ui-datepicker-trigger"><img src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/ico_cal.gif" alt="..." title="..."></button> ~ 
        				<input id="history_end_date" name="history_end_date" class="fText hasDatepicker" readonly="readonly" size="10" value="2020-03-14" type="text"><button type="button" class="ui-datepicker-trigger"><img src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/ico_cal.gif" alt="..." title="..."></button>        
        				<input alt="조회" id="order_search_btn" type="image" src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/btn_search.gif">    
       				</fieldset>
       				
					<ul>
						<li>기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 지난 주문내역을 조회하실 수 있습니다.</li>
						<li>주문번호를 클릭하시면 해당 주문에 대한 상세내역을 확인하실 수 있습니다.</li>
	   			    </ul>
				</div>
				
				<input id="mode" name="mode" value="" type="hidden">
				<input id="term" name="term" value="" type="hidden">
			</form>
			
			<div class="xans-element- xans-myshop xans-myshop-orderhistorylistitem ec-base-table typeList">
				<!--
	       			 $login_url = /member/login.html
	    		-->
				<div class="title">
        			<h3 style="margin:0;">이전 주문내역</h3>
    			</div>
    			
				<table border="1" summary="">
        			<colgroup>
						<col style="width:135px;">
						<col style="width:93px;">
						<col style="width:auto;">
						<col style="width:61px;">
						<col style="width:130px;">
						<col style="width:130px;">
						<col style="width:130px;">
					</colgroup>
					
					<thead>
						<tr>
							<th scope="col" style="line-height:1em">ORDER DATE<br>[ORDER NO]</th>
			                <th scope="col">IMAGE</th>
			                <th scope="col">PRODUCT NAME</th>
			                <th scope="col">QTY</th>
			                <th scope="col">PRICE</th>
			                <th scope="col">ORDER STATE</th>
			                <th scope="col">ORDER CHANGE</th>
            			</tr>
           			</thead>
           			
					<!-- <tbody class="center displaynone">
						<tr class="">
							<td class="number displaynone">
                                 <p><a href="detail.html" class="line">[]</a></p>
			                     <a href="#none" class="displaynone yg_btn_80 yg_btn3" onclick="" alt="주문취소">주문취소</a>
			                     <a href="cancel.html" class="displaynone button yg_btn_80 yg_btn3" alt="취소신청">취소신청</a>
			                     <a href="exchange.html" class="displaynone button yg_btn_80 yg_btn3" alt="교환신청">교환신청</a>
			                     <a href="return.html" class="displaynone button yg_btn_80 yg_btn3" alt="반품신청">반품신청</a>
			                </td>
			                <td class="thumb"><a href="/product/detail.html"><img src="//img.echosting.cafe24.com/thumb/img_product_small.gif" onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" alt=""></a></td>
			                <td class="product left top">
					             <a href="/product/detail.html"></a>
					             	<div class="option displaynone"></div>
				                    <ul class="xans-element- xans-myshop xans-myshop-optionset option">
				                    	<li class=""> (개)</li>
									</ul>
									<p class="gBlank5 displaynone">무이자할부 상품</p>
					        </td>
			                <td></td>
			                <td><div class="displaynone"></div>
							</td>
			                <td class="state">
			                    <p></p>
			                    <p class="displaynone"><a href="" target=""></a></p>
			                    <p class="displaynone"><a href="#none" class="line" onclick="">[]</a></p>
			                    <a href="#" class="displaynone yg_btn_80 yg_btn1 crema-new-review-link crema-applied" data-cafe24-product-link="" alt="구매후기">구매후기</a>
			                    <a href="#none" class="displaynone" onclick=" yg_btn_80 yg_btn3" alt="취소철회">취소철회</a>
			                    <a href="#none" class="displaynone" onclick=" yg_btn_80 yg_btn3" alt="교환철회">교환철회</a>
			                    <a href="#none" class="displaynone" onclick=" yg_btn_80 yg_btn3" alt="반품철회">반품철회</a>
			                </td>
			                <td>
			                    <p class="displaynone"><a href="#none" class="line" onclick="">[상세정보]</a></p>
			                    <p class="displaynone">-</p>
			                </td>
			            </tr>
					</tbody> -->
				</table>
				<p class="message ">주문 내역이 없습니다.</p>
			</div>

			<div class="xans-element- xans-myshop xans-myshop-orderhistorypaging ec-base-paginate">
				<a href="?page=1&amp;history_start_date=2019-12-15&amp;history_end_date=2020-03-14&amp;past_year=2019" class="first">
					<img src="/ot/images/btn_page_first.gif" alt="첫 페이지"></a>
				<a href="?page=1&amp;history_start_date=2019-12-15&amp;history_end_date=2020-03-14&amp;past_year=2019">
					<img src="/ot/images/btn_page_prev.gif" alt="이전 페이지"></a>
					
					<ol>
						<li class="xans-record-">
							<a href="?page=1&amp;history_start_date=2019-12-15&amp;history_end_date=2020-03-14&amp;past_year=2019" class="this">1</a>
						</li>
       				</ol>
       				
				<a href="?page=1&amp;history_start_date=2019-12-15&amp;history_end_date=2020-03-14&amp;past_year=2019">
					<img src="/ot/images/btn_page_next.gif" alt="다음 페이지"></a>
				<a href="?page=1&amp;history_start_date=2019-12-15&amp;history_end_date=2020-03-14&amp;past_year=2019" class="last">
					<img src="/ot/images/btn_page_last.gif" alt="마지막 페이지"></a>
			</div>
		</div>
		<hr class="layout">
	</div>
	
 <%@include file="footer.jsp" %>
</body>
</html>