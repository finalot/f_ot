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
<link rel="stylesheet" href="./css/mypage_list.css">
<link rel="stylesheet" href="./css/mypage_basic.css">
<link rel="icon" type="image/png" href="images/icons/favicon.png"/>
<style>
th, td {
    border: 0;
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
    			<h2>ADDRESS</h2>
			</div>

			<div class="xans-element- xans-layout xans-layout-logincheck ">
			<!--
			    $url = /member/login.html
			-->
			</div>

			<form id="frmAddr" name="" action="/exec/front/Myshop/Addr/?mode=Delete&amp;return_url=%2Fmyshop%2Faddr%2Flist.html" method="post" target="_self" enctype="multipart/form-data">
				<input id="__address_addr1" name="__address_addr1" value="" type="hidden">
				<input id="__city_name" name="__city_name" value="" type="hidden">
				<input id="__state_name" name="__state_name" value="" type="hidden">
				<input id="__use_foreign_country_list" name="__use_foreign_country_list" value="F" type="hidden">
				<input id="__ma_rcv_contry_code" name="__ma_rcv_contry_code" value="" type="hidden">
				<input id="__country" name="__country" value="" type="hidden">
				<input id="__province" name="__province" value="" type="hidden">
				<input id="__city" name="__city" value="" type="hidden">
				<input id="__district" name="__district" value="" type="hidden">
				<input id="is_display_phone" name="is_display_phone" value="" type="hidden">
				<input id="is_display_mobile" name="is_display_mobile" value="" type="hidden">
				<input id="sUseCountryNumberFlag" name="sUseCountryNumberFlag" value="T" type="hidden"><div class="xans-element- xans-myshop xans-myshop-addrlist">
				<!--
       	 			$return_url = /myshop/addr/list.html
    			-->
					<div class="ec-base-table typeList">
        				<table border="1" summary="">
							<caption>배송 주소록 목록</caption>
            				<colgroup>
								<col style="width:36px">
								<col style="width:80px">
								<col style="width:95px">
								<col style="width:95px">
								<col style="width:140px">
								<col style="width:140px">
								<col style="width:auto">
								<col style="width:90px">
							</colgroup>
							
							<thead>
								<tr>
									<th scope="col">
										<span class="">
											<input id="allCheck" onclick="myshopAddr.checkAll(this)" value="" type="checkbox">
										</span>
									</th>
				                    <th scope="col">ADDRESS FIX</th>
				                    <th scope="col">TITLE</th>
				                    <th scope="col">NAME</th>
				                    <th scope="col">PHONE</th>
				                    <th scope="col">MOBILE</th>
				                    <th scope="col">ADDRESS</th>
				                    <th scope="col">MODIFY</th>
                				</tr>
               				</thead>
               				
							<tbody class=" center">
								<tr class="xans-record-">
									<td>
										<input name="ma_idx[]" value="843124" type="checkbox">
									</td>
                    				<td>
										<a href="/exec/front/Myshop/Addr/?mode=Fix&amp;ma_idx=843124&amp;ma_fixed_flag=T&amp;return_url=%2Fmyshop%2Faddr%2Flist.html">
											<span class="displaynone yg_btn_24 yg_btn3" alt="해제">해제</span>
											<span class=" yg_btn_24 yg_btn5" alt="고정">고정</span>
										</a>
										<span class="displaynone">-</span>
									</td>
                    				<td>
										<img src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/ico_addr_default.gif" class="displaynone" alt="기본"> 
										<span>미지정</span>
									</td>
				                    <td><span>홍길동</span></td>
				                    <td><span>297-</span></td>
				                    <td><span>010-1234-5678</span></td>
				                    <td class="left">
				                    	(<span>12345</span>)
				                    	<span>서울특별시 강남구 테헤란로</span>
				                    	<span>KH정보교육원 H클래스</span>
				                    </td>
				                    <td>	
				                    	<a href="/ot/mypage_address_modify.jsp" class=" yg_btn_24 yg_btn3" alt="수정">수정</a>
			                    	</td>
                				</tr>
							</tbody>
							
							<tbody class="displaynone">
								<tr>
									<td colspan="8" class="message">등록된 주소가 없습니다.</td>
                				</tr>
               				</tbody>
						</table>
					</div>
					<div class="ec-base-button">
        				<span class="gLeft ">
            				<a href="#none" class="yg_btn yg_btn4" onclick="myshopAddr.deleteAddress(); return false;" alt="선택 주소록 삭제">선택 주소록 삭제</a>
        				</span>
        				
				        <span class="gRight">
				            <a href="/ot/mypage_address_register.jsp" class="yg_btn yg_btn1 yg_btn_border_444" alt="배송지 등록">배송지등록</a>
				        </span>
    				</div>
				</div>
			</form>

			<div class="ec-base-help">
			    <h3>배송주소록 유의사항</h3>
			    <div class="inner">
			        <ol style="font-size: 13px;">
			        	<li class="item1">배송 주소록은 최대 10개까지 등록할 수 있으며, 별도로 등록하지 않을 경우 최근 배송 주소록 기준으로 자동 업데이트 됩니다.</li>
			            <li class="item2">자동 업데이트를 원하지 않을 경우 주소록 고정 선택을 선택하시면 선택된 주소록은 업데이트 대상에서 제외됩니다.</li>
			            <li class="item3">기본 배송지는 1개만 저장됩니다. 다른 배송지를 기본 배송지로 설정하시면 기본 배송지가 변경됩니다.</li>
			        </ol>
		        </div>
			</div>
		</div>
	</div>
	
 <%@include file="footer.jsp" %>
</body>
</html>