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
    			<h2>WISH LIST</h2>
			</div>

			<div class="xans-element- xans-layout xans-layout-logincheck ">
			<!--
			    $url = /member/login.html
			-->
			</div>
			
			<div class="xans-element- xans-myshop xans-myshop-wishlist ec-base-table typeList xans-record-">
			<!--
        		$login_page = /member/login.html
       		    $count = 10
  			-->
				<table border="1" summary>
					<caption style="display:none;">관심상품 목록</caption>
       				<colgroup>
						<col style="width:40px;">
						<col style="width:110px">
						<col style="width:auto">
						<col style="width:105px">
						<col style="width:100px">
						<col style="width:100px">
						<col style="width:85px">
						<col style="width:105px">
						<col style="width:110px">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">
								<input type="checkbox" onclick="NewWishlist.checkAll(this);">
							</th>
			                <th scope="col">IMAGE</th>
			                <th scope="col">PRODUCT NAME</th>
			                <th scope="col">PRICE</th>
			                <th scope="col">POINT<!--적립금--></th>
			                <th scope="col">DELIVERY</th>
			                <th scope="col">CHARGE</th>
			                <th scope="col">TOTAL</th>
			                <th scope="col">ORDER</th>
            			</tr>
          			</thead>
          			
          			<tbody class="xans-element- xans-myshop xans-myshop-wishlistitem center">
          				<tr class="xans-record-">
							<td>
								<input name="wish_idx[]" id="wish_idx_0" enable-order="" reserve-order="N" enable-purchase="1" class="" is-set-product="F" value="658007" type="checkbox">
							</td>
               				<td class="thumb">
            					<a href="/product/black-up-호딘-트레이닝-팬츠/10550/category/26/">
               						<img src="//black-up.kr/web/product/medium/201907/6c62d00576fe97a594f09ef169e4be94.webp" alt=""></a>
       						</td>
							<td class="left"><a
								href="/product/black-up-호딘-트레이닝-팬츠/10550/category/26/"
								style="font-size: 13px;">(BLACK UP) 호딘 트레이닝 팬츠</a>
								<ul
									class="xans-element- xans-myshop xans-myshop-optionall option">
									<li class="xans-record-"><strong class="displaynone"></strong>
										<span class="displaynone">(개)</span> <br> <a href="#none"
										id="optionchange" class=" yg_btn_80 yg_btn3 optionclose"
										alt="옵션변경">옵션변경하기</a> <!-- 참고 : 옵션변경 레이어 -->

										<div class="optiondetail" style="display: none;">
											<div class="optionheader">
												<h3 class="optiontitle">옵션 변경하기</h3>
												<a href="#none" class="option_close" onclick="$('.optionModify').hide();">
													<img src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif" alt="닫기">
												</a>
											</div>
											<div class="optionbody">
												<h4>상품옵션</h4>
												<ul class="ec-base-desc typeDot gLarge rightDD">
													<li>
														<strong class="optiontype">QUANTITY</strong>
														
														<div class="flex-w bo5 of-hidden w-size17" style="left:24%;">
									<button class="num-product-down1 color1 flex-c-m size7 bg8 eff2" onclick="optiondel();" style="border-radius:5px;">
										<i class="fs-12 fa fa-minus" aria-hidden="true"></i>
									</button>

									<input class="size8 m-text18 t-center num-product" type="number" name="num-product2" value="1">

									<button class="num-product-up1 color1 flex-c-m size7 bg8 eff2" onclick="optionadd();" style="border-radius:5px;">
										<i class="fs-12 fa fa-plus" aria-hidden="true"></i>
									</button>
								</div>
													</li>
													<div class="option_scroll" style="overflow-y: scroll; position: relative; top: 5px; margin: 5px 0 0 0; height:230px; width:105%;">
													<div id="option1o" style=" margin: 5px 0 0 0; border-top: 1px solid #ddd; ">
													<li>
														<strong class="optiontype">COLOR</strong> 
														<select>
																<option value="블랙">블랙</option>
																<option value="그레이">그레이</option>
																<option value="화이트">화이트</option>
														</select>
													</li>
													<li>
														<strong class="optiontype">SIZE</strong> 
														<select>
																<option value="S">S</option>
																<option value="M">M</option>
																<option value="L">L</option>
																<option value="XL">XL</option>
																<option value="XXL">XXL</option>
	
														</select>
													</li>

													</div>
													</div>
													
												</ul>
											</div>
											<div class="option_btn">
												<a href="#none" class=" yg_btn yg_btn1"
													onclick="NewWishlist.modify('add', '0', '10550');" alt="추가">추가</a>
												<a href="#none" class="yg_btn yg_btn3"
													onclick="NewWishlist.modify('update', '0', '10550');"
													alt="변경">변경</a>
											</div>
										</div>
									</li>
								</ul>
							</td>

							<td class="price center">
									<span class="">19,000 won</span>
									<br>
									<span class="displaynone">19000</span>
								</td>
                				<td><span class="txtInfo"><img src="/ot/images/point.png" class="icon_img" alt="적립금">100원</span></td>
                				<td>
	                				<div class="txtInfo">기본배송
	                					<div class="">(해외배송가능)
	                					</div>
									</div>
								</td>
                				<td>
								<span class="">2,500 won<br></span> 조건
								</td>
                				<td class="price center">21,500 won</td>
				                <td class="button">
				                    <a href="#none" onclick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(10550,  26, 'wishlist', '')" class=" yg_btn_100 yg_btn1 add-to-cart" alt="담기">ADD TO CART</a>
				                    <!-- <a href="#none" onclick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(10550,  26, 'wishlist', '')" class=" yg_btn_100 yg_btn4 add-to-cart" alt="주문">BUY IT NOW</a> -->
				                    <a href="#none" class="btn_wishlist_del yg_btn_100 yg_btn4" rel="10550||||" alt="삭제">DELETE</a>
				                </td>
           					</tr>
					</tbody>
					
					<tbody class="xans-element- xans-myshop xans-myshop-wishlistitem center">
          				<tr class="xans-record-">
							<td>
								<input name="wish_idx[]" id="wish_idx_0" enable-order="" reserve-order="N" enable-purchase="1" class="" is-set-product="F" value="658007" type="checkbox">
							</td>
               				<td class="thumb">
            					<a href="/product/black-up-호딘-트레이닝-팬츠/10550/category/26/">
               						<img src="//black-up.kr/web/product/medium/201907/6c62d00576fe97a594f09ef169e4be94.webp" alt=""></a>
       						</td>
							<td class="left"><a
								href="/product/black-up-호딘-트레이닝-팬츠/10550/category/26/"
								style="font-size: 13px;">(BLACK UP) 호딘 트레이닝 팬츠</a>
								<ul
									class="xans-element- xans-myshop xans-myshop-optionall option">
									<li class="xans-record-"><strong class="displaynone"></strong>
										[옵션: 블랙 / S / 1]<br>
										[옵션: 그레이 / M / 1]
										<span class="displaynone">(개)</span> <br> <a href="#none"
										id="optionchange_1" class=" yg_btn_80 yg_btn3 optionclose"
										alt="옵션변경">옵션변경하기</a> <!-- 참고 : 옵션변경 레이어 -->

										<div class="optiondetail1" style="display: none;">
											<div class="optionheader">
												<h3 class="optiontitle">옵션 변경하기</h3>
												<a href="#none" class="option_close" onclick="$('.optionModify').hide();">
													<img src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif" alt="닫기">
												</a>
											</div>
											<div class="optionbody">
												<h4>상품옵션</h4>
												<ul class="ec-base-desc typeDot gLarge rightDD">
													<li>
														<strong class="optiontype">COLOR</strong> 
														<select>
																<option value="블랙">블랙</option>
																<option value="그레이">그레이</option>
																<option value="화이트">화이트</option>
	
														</select>
													</li>
													<li>
														<strong class="optiontype">SIZE</strong> 
														<select>
																<option value="S">S</option>
																<option value="M">M</option>
																<option value="L">L</option>
																<option value="XL">XL</option>
																<option value="XXL">XXL</option>
	
														</select>
													</li>
												</ul>
											</div>
											<div class="option_btn">
												<a href="#none" class=" yg_btn yg_btn1"
													onclick="NewWishlist.modify('add', '0', '10550');" alt="추가">추가</a>
												<a href="#none" class="yg_btn yg_btn3"
													onclick="NewWishlist.modify('update', '0', '10550');"
													alt="변경">변경</a>
											</div>
										</div>
									</li>
								</ul>
							</td>

							<td class="price center">
									<span class="">19,000 won</span>
									<br>
									<span class="displaynone">19000</span>
								</td>
                				<td><span class="txtInfo"><img src="/ot/images/point.png" class="icon_img" alt="적립금">100원</span></td>
                				<td>
	                				<div class="txtInfo">기본배송
	                					<div class="">(해외배송가능)
	                					</div>
									</div>
								</td>
                				<td>
								<span class="">2,500 won<br></span> 조건
								</td>
                				<td class="price center">21,500 won</td>
				                <td class="button">
				                    <a href="#none" onclick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(10550,  26, 'wishlist', '')" class=" yg_btn_100 yg_btn1" alt="담기">ADD TO CART</a>
				                    <!-- <a href="#none" onclick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(10550,  26, 'wishlist', '')" class=" yg_btn_100 yg_btn4" alt="주문">BUY IT NOW</a> -->
				                    <a href="#none" class="btn_wishlist_del yg_btn_100 yg_btn4" rel="10550||||" alt="삭제">DELETE</a>
				                </td>
           					</tr>
					</tbody>	
        		</table>
        		
				<p class="message displaynone">관심상품 내역이 없습니다.</p>
			</div>
			
			<div class="xans-element- xans-myshop xans-myshop-wishlistbutton ec-base-button xans-record-">
				<span class="gLeft">
      				<strong class="text">선택상품을</strong>
       				<a href="#none" onclick="NewWishlist.deleteSelect();" class="yg_btn_24 yg_btn5" alt="삭제하기">삭제하기</a>
        			<a href="#none" onclick="NewWishlist.basket();" class="yg_btn_24 yg_btn3" alt="장바구니 담기">장바구니 담기</a>
    			</span>
				<span class="gRight">
       				<a href="#none" onclick="NewWishlist.orderAll();" class="yg_btn_140" alt="전체상품주문">전체상품주문</a>
       	 			<a href="/ot/cart.jsp" onclick="NewWishlist.deleteAll();" class="yg_btn_140 yg_btn4" alt="관심상품 비우기" style="background:#f4f4f4">장바구니 가기</a>
       	 			<a href="#none" onclick="NewWishlist.deleteAll();" class="yg_btn_140 yg_btn4" alt="관심상품 비우기" style="background:#f4f4f4">관심상품 비우기</a>
    			</span>
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


	<div
		class="xans-element- xans-product xans-product-optionselectlayer ec-base-layer add-cart">
		<div class="header">
			<h1>옵션 확인</h1>
		</div>
		<div class="content">
			<div class="xans-element- xans-product xans-product-detail inner ">
				<h2 class="name">
					<span>ADD TO CART</span>
				</h2>
				<div class="productNormal ">
					<div class="xans-element- xans-product xans-product-image imgArea ">
						<img src="//black-up.kr/web/product/tiny/201907/28e70275e9da1a542c85a8e8d50160d4.webp" onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" class="">
					</div>
					<table border="1" summary="">
						<caption>상품 옵션</caption>
						<colgroup>
							<col width="80px">
							<col width="auto">
						</colgroup>
						<tbody
							class="xans-element- xans-product xans-product-option xans-record-">
							<tr class="xans-element- xans-product xans-product-option xans-record-">
					<span>(BLACK UP) 호딘 트레이닝 팬츠</span>

</tr>
							<!-- <tr
								class="xans-element- xans-product xans-product-option xans-record-">
								<th scope="row" style="font-size:12px;">컬러</th>
								<td><ul option_product_no="9017"
										option_select_element="ec-option-select-finder"
										option_sort_no="1" option_type="T" item_listing_type="S"
										option_title="컬러" product_type="product_option"
										product_option_area="product_option_9017_0"
										option_style="preview" ec-dev-id="product_option_id1"
										ec-dev-name="option1" ec-dev-class="ProductOption0"
										class="ec-product-button ec-product-preview" required="true">
										<li class="" option_value="화이트" link_image="" title="화이트"><a
											href="#none" style="background-color: #ffffff"><span>화이트</span></a></li>
										<li class="" option_value="블랙" link_image="" title="블랙"><a
											href="#none" style="background-color: #000000"><span>블랙</span></a></li>
										<li class="" option_value="카키" link_image="" title="카키"><a
											href="#none" style="background-color: #567854"><span>카키</span></a></li>
										<li class="" option_value="블루" link_image="" title="블루"><a
											href="#none" style="background-color: #301cc7"><span>블루</span></a></li>
									</ul>
									<p class="value" style="font-size:12px;">
										[필수] <span class="ec-shop-front-product-option-desc-trigger"
											data-option_msg="옵션을 선택해 주세요">옵션을 선택해 주세요</span>
									</p> <select product_option_area_select="product_option_9017_0"
									id="product_option_id1" name="option1" option_title="컬러"
									option_type="T" item_listing_type="S" class="ProductOption0"
									style="display: none;" required="true"><option
											value="*">empty</option>
										<option value="화이트">화이트</option>
										<option value="블랙">블랙</option>
										<option value="카키">카키</option>
										<option value="블루">블루</option></select></td>
							</tr> -->
						</tbody>
					</table>
				</div>
				<!-- //참고 -->
				<!-- 참고 : 뉴상품관리 전용 변수가 포함되어 있습니다. 뉴상품관리 이외의 곳에서 사용하면 일부 변수가 정상동작하지 않을 수 있습니다. -->
				<div id="totalProducts" class="">
					<p class="ec-base-help txtWarn txt11 displaynone">수량을 선택해주세요.</p>
					<p class="ec-base-help txtWarn txt11 ">상품 옵션을 확인해주세요.</p>
					<table border="0" summary="">
						<caption>상품 목록</caption>
						<colgroup>
							<col style="width: 284px;">
							<col style="width: 80px;">
							<col style="width: 110px;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">상품명</th>
								<th scope="col">상품수</th>
								<th scope="col">가격</th>
							</tr>
						</thead>
						<tbody class="displaynone">
							<tr>
								<td>(BLACK UP) 호딘 트레이닝 팬츠</td>
								<td><span class="quantity"> <input id="quantity"
										name="quantity_name" style="" value="0" type="text"> <a
										href="#none"><img
											src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif"
											alt="수량증가" class="QuantityUp up"></a> <a href="#none"><img
											src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif"
											alt="수량감소" class="QuantityDown down"></a>
								</span></td>
								<td class="right"><span class="quantity_price">9000</span>
									<span class="mileage ">(<img
										src="/ot/images/point.png"> &nbsp;<span
										class="mileage_price">0</span>)
								</span></td>
							</tr>
						</tbody>
						<!-- 참고 : 옵션선택 또는 세트상품 선택시 상품이 추가되는 영역입니다. 쇼핑몰 화면에는 아래와 같은 마크업구조로 표시됩니다. 삭제시 기능이 정상동작 하지 않습니다.-->
						<tbody>
							<tr class="option_product " data-option-index="1"
								target-key="9017">
								<td><input type="hidden" class="option_box_id"
									id="option_box1_id" value="P0000NIU000Q" name="item_code[]"
									data-item-add-option="" data-item-reserved="N"
									data-option-id="'+sOptionId+'">
								<p class="product" style="font-size:12px;">
										(BLACK UP) 호딘 트레이닝 팬츠<br> - <span>블랙 / S / 1</span>
									</p></td>
<td><span class="quantity" style="width:65px;"><input type="text" id="option_box1_quantity" name="quantity_opt[]" class="quantity_opt eProductQuantityClass" value="1" product-no="9017"><a href="#none" class="up eProductQuantityUpClass" "="" data-target="option_box1_up">
<img src="//img.echosting.cafe24.com/design/skin/default/product/btn_count_up.gif" id="option_box1_up" class="option_box_up" alt="수량증가"></a><a href="#none" class="down eProductQuantityDownClass" data-target="option_box1_down">
<img src="//img.echosting.cafe24.com/design/skin/default/product/btn_count_down.gif" id="option_box1_down" class="option_box_down" alt="수량감소"></a></span><a href="#none" class="delete">
<!-- <img src="//img.echosting.cafe24.com/design/skin/default/product/btn_price_delete.gif" alt="삭제" id="option_box1_del" class="option_box_del"> --></a></td>
								<td class="right"><span id="option_box1_price"><input type="hidden" class="option_box_price" value="19000" product-no="10550" item_code="P0000PPU000F">
								<span class="ec-front-product-item-price" code="P0000PPU000F" product-no="10550">19,000 won</span></span><span class="mileage">(<img src="/ot/images/point.png" alt="적립금"> <span id="option_box1_mileage" class="mileage_price" code="P0000PPU000F">100원</span>)</span></td>
							</tr>
							<tr class="option_product " data-option-index="1"
								target-key="9017">
								<td><input type="hidden" class="option_box_id"
									id="option_box1_id" value="P0000NIU000Q" name="item_code[]"
									data-item-add-option="" data-item-reserved="N"
									data-option-id="'+sOptionId+'">
								<p class="product" style="font-size:12px;">
										(BLACK UP) 호딘 트레이닝 팬츠<br> - <span>그레이 / M / 1</span>
									</p></td>
<td><span class="quantity" style="width:65px;"><input type="text" id="option_box1_quantity" name="quantity_opt[]" class="quantity_opt eProductQuantityClass" value="1" product-no="9017"><a href="#none" class="up eProductQuantityUpClass" "="" data-target="option_box1_up">
<img src="//img.echosting.cafe24.com/design/skin/default/product/btn_count_up.gif" id="option_box1_up" class="option_box_up" alt="수량증가"></a><a href="#none" class="down eProductQuantityDownClass" data-target="option_box1_down">
<img src="//img.echosting.cafe24.com/design/skin/default/product/btn_count_down.gif" id="option_box1_down" class="option_box_down" alt="수량감소"></a></span><a href="#none" class="delete">
<!-- <img src="//img.echosting.cafe24.com/design/skin/default/product/btn_price_delete.gif" alt="삭제" id="option_box1_del" class="option_box_del"> --></a></td>
								<td class="right"><span id="option_box1_price"><input type="hidden" class="option_box_price" value="19000" product-no="10550" item_code="P0000PPU000F">
								<span class="ec-front-product-item-price" code="P0000PPU000F" product-no="10550">19,000 won</span></span><span class="mileage">(<img src="/ot/images/point.png" alt="적립금"> <span id="option_box1_mileage" class="mileage_price" code="P0000PPU000F">100원</span>)</span></td>
							</tr>
						</tbody>
						<!-- //참고 -->
						<tfoot>
							<tr>
								<td colspan="3"><span>총 상품금액</span>(수량) : <span
									class="total"><span><em>19,000 won</em></span> (0개)</span></td>
							</tr>
						</tfoot>
					</table>
				</div>
				<!-- //참고 -->
			</div>
		</div>
		<div
			class="xans-element- xans-product xans-product-action ec-base-button ">
			<a href="/ot/order.jsp" class="first  yg_btn_30"
				onclick="product_submit(1, '/exec/front/order/basket/', this)"
				alt="바로구매하기">바로구매하기</a> <a href="#none" class=" yg_btn_30 yg_btn3"
				onclick="product_submit(2, '/exec/front/order/basket/', this)"
				alt="장바구니 담기">장바구니 담기</a>
			<!-- 네이버 체크아웃 구매 버튼 -->
			<div id="NaverChk_Button"></div>
			<!-- //네이버 체크아웃 구매 버튼 -->
		</div>
		<a class="option_close" onclick="">
		<img src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif"
			alt="닫기"></a>
	</div>


	<script>
	
	/* */
		$('#optionchange').click(function() {
			$('.optiondetail').css('display', 'block');
		});

		$('.option_close').click(function() {
			$('.optiondetail').css('display', 'none');
		});
		
		$('.add-to-cart').click(function(){
			$('.add-cart').css('display', 'block');
		});
		
		$('.option_close').click(function() {
			$('.add-cart').css('display', 'none');
		});
		
	</script>	
	
	<script>
								
/*[ +/- num product ]
   ===========================================================*/
   $('.num-product-down1').on('click', function(e){
       e.preventDefault();
       var numProduct = Number($(this).next().val());
       if(numProduct > 1) $(this).next().val(numProduct - 1);
   });

   $('.num-product-up1').on('click', function(e){
       e.preventDefault();
       var numProduct = Number($(this).prev().val());
       $(this).prev().val(numProduct + 1);
   });
</script>
	
	
	<script>
	var count = 2;
	
	function optionadd() {
		const str = 
			`
		
			<div id="option`+count+`o" style=" margin: 5px 0 0 0; border-top: 1px solid #ddd; ">
		<li>
			<strong class="optiontype">COLOR</strong> 
			<select>
					<option value="블랙">블랙</option>
					<option value="그레이">그레이</option>
					<option value="화이트">화이트</option>
			</select>
		</li>
		<li>
			<strong class="optiontype">SIZE</strong> 
			<select>
					<option value="S">S</option>
					<option value="M">M</option>
					<option value="L">L</option>
					<option value="XL">XL</option>
					<option value="XXL">XXL</option>

			</select>
		</li>
		</div>
		`
		$('.option_scroll').append(str);
		count++;
	}

	function optiondel(){
		if(count>2){
		$("#option"+(count-1)+"o").remove();
		count--;
	}
	}
	
	</script>
 <%@include file="footer.jsp" %>
</body>
</html>