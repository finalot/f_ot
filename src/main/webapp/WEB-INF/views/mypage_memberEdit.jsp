<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>oT.</title>
<!--  <link href="/ot/css/join.css" rel="stylesheet">
 -->
<link href="./css/mypage_list.css" rel="stylesheet">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="./css/mypage_basic.css">
<link rel="icon" type="image/png" href="images/icons/favicon.png" />
<link rel="stylesheet" href="./css/popup.css">

<style>
.yg_btn1 {
    background: #444 !important;
    color: #fff!important;
    border-color: #444!important;
}

.yg_btn1:hover {
    color: #fff;
    background: #777 !important;
    border-color: #777!important;
}

.yg_btn4 {
    background: #f4f4f4 !important;
    color: #444!important;
    border-color: #ddd!important;
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
				<h2>EDIT PROFILE</h2>
			</div>
			<!--<div module="myshop_bankbook">        
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
    </div>-->


			<form id="editForm" name="editForm" action="/exec/front/Member/edit/"
				method="post" target="_self" enctype="multipart/form-data">
				<input id="useSimpleSignin" name="useSimpleSignin" value="F"
					type="hidden"> <input id="is_certification"
					name="is_certification" value="F" type="hidden"> <input
					id="emailDuplCheck" name="emailDuplCheck" value="T" type="hidden">
				<input id="login_id_type" name="login_id_type" value="id"
					type="hidden"> <input id="is_display_register_name"
					name="is_display_register_name" value="T" type="hidden"> <input
					id="display_required_name" name="display_required_name" value="T"
					type="hidden"> <input
					id="is_display_register_name_phonetic"
					name="is_display_register_name_phonetic" value="F" type="hidden">
				<input id="display_required_name_phonetic"
					name="display_required_name_phonetic" value="F" type="hidden">
				<input id="is_display_register_eng_name"
					name="is_display_register_eng_name" value="F" type="hidden">
				<input id="display_required_name_en" name="display_required_name_en"
					value="F" type="hidden"> <input id="passwd_type"
					name="passwd_type" value="B" type="hidden"> <input
					id="is_display_register_addr" name="is_display_register_addr"
					value="T" type="hidden"> <input id="__addr1" name="__addr1"
					value="경기도 고양시 일산서구 덕이동 730-3" type="hidden"> <input
					id="__city_name" name="__city_name" value="" type="hidden">
				<input id="__state_name" name="__state_name" value="" type="hidden">
				<input id="display_required_address" name="display_required_address"
					value="T" type="hidden"> <input
					id="display_required_address2" name="display_required_address2"
					value="T" type="hidden"> <input
					id="is_display_register_mobile" name="is_display_register_mobile"
					value="T" type="hidden"> <input id="display_required_cell"
					name="display_required_cell" value="T" type="hidden"> <input
					id="display_register_mobile" name="display_register_mobile"
					value="F" type="hidden"> <input
					id="use_checking_mobile_number_duplication"
					name="use_checking_mobile_number_duplication" value="F"
					type="hidden"> <input id="isMobileVerify"
					name="isMobileVerify" value="F" type="hidden"> <input
					id="is_display_register_phone" name="is_display_register_phone"
					value="F" type="hidden"> <input id="display_required_phone"
					name="display_required_phone" value="F" type="hidden"> <input
					id="display_register_phone" name="display_register_phone" value="F"
					type="hidden"> <input id="is_display_password_hint"
					name="is_display_password_hint" value="F" type="hidden"> <input
					id="required_is_sms_flag" name="required_is_sms_flag" value="T"
					type="hidden"> <input id="required_is_news_mail_flag"
					name="required_is_news_mail_flag" value="F" type="hidden">
				<input id="is_display_register_birthday"
					name="is_display_register_birthday" value="T" type="hidden">
				<input id="display_required_is_birthday"
					name="display_required_is_birthday" value="T" type="hidden">
				<input id="display_required_sex" name="display_required_sex"
					value="T" type="hidden"> <input id="nick_name_flag"
					name="nick_name_flag" value="F" type="hidden"> <input
					id="nick_name_confirm" name="nick_name_confirm" value="F"
					type="hidden"> <input id="display_required_nick_name_flag"
					name="display_required_nick_name_flag" value="F" type="hidden">
				<input id="is_display_register_wedding"
					name="is_display_register_wedding" value="F" type="hidden">
				<input id="display_required_is_wedding_anniversary"
					name="display_required_is_wedding_anniversary" value="F"
					type="hidden"> <input id="is_display_register_life_partner"
					name="is_display_register_life_partner" value="F" type="hidden">
				<input id="display_required_is_life_partner"
					name="display_required_is_life_partner" value="F" type="hidden">
				<input id="bank_account_owner" name="bank_account_owner" value="신경섭"
					type="hidden"> <input id="refund_bank_code"
					name="refund_bank_code" value="bank_293" type="hidden"> <input
					id="bank_account_no" name="bank_account_no" value="3333023943107"
					type="hidden"> <input id="display_required_bank_account_no"
					name="display_required_bank_account_no" value="F" type="hidden">
				<input id="display_required_job" name="display_required_job"
					value="F" type="hidden"> <input
					id="display_required_job_class" name="display_required_job_class"
					value="F" type="hidden"> <input
					id="display_required_school" name="display_required_school"
					value="F" type="hidden"> <input
					id="display_required_interest" name="display_required_interest"
					value="F" type="hidden"> <input
					id="display_required_region" name="display_required_region"
					value="F" type="hidden"> <input
					id="display_required_internet" name="display_required_internet"
					value="F" type="hidden"> <input id="display_required_child"
					name="display_required_child" value="F" type="hidden"> <input
					id="display_required_car" name="display_required_car" value="F"
					type="hidden"> <input id="display_required_earning"
					name="display_required_earning" value="F" type="hidden"> <input
					id="display_required_reco_id" name="display_required_reco_id"
					value="F" type="hidden"> <input id="display_required_add1"
					name="display_required_add1" value="F" type="hidden"> <input
					id="display_required_add2" name="display_required_add2" value="F"
					type="hidden"> <input id="display_required_add3"
					name="display_required_add3" value="F" type="hidden"> <input
					id="display_required_add4" name="display_required_add4" value="F"
					type="hidden"> <input id="returnUrl" name="returnUrl"
					value="/" type="hidden"> <input id="sUseCountryNumberFlag"
					name="sUseCountryNumberFlag" value="T" type="hidden"> <input
					id="sUseSeparationNameFlag" name="sUseSeparationNameFlag" value="F"
					type="hidden"> <input id="sEData" name="sEData"
					value="GEHNVdPk/G4I0oL0eovX9Kgca+JUR5bT/inWPbSHxVLhTEgCQ2Fmg7vLWtomRyoa6XxwtYQmkL9aNt/y6RAhX4MZmoMry/bWbhHvy4JAjT/4Jaqra7IuwK4R7X4QuRKSxsG7SVe+cHTtLNPsFuEqf9CKU/tR409vUMF2m8dpuwyghUKewxSf/fWKeqKkf1IyP+BDrDvLkrIAgknUa1IgR/zh213WV6rwYv5aNA+nZxUafZT2GiFpKBWulmaDRzojsVPrDBeIFi3wx2Rg+p+JXvAa9JvDRUSXTfa31PTSWQEV7FU77O2JuW2C65NaOqbTVDF6hjaCynlcqxJ7NxebUWFeHVrSqA3i6TU8Fr4aoVGxYueCBzjv3bLDDCPSjClrf8cg0AS+6cSFiZ4BmRGZrThu0xVxZt0U6NUVZWrD3uXkRotNG9Hdr2yhCwPOe6Km+DhYS+gYGPr3B6CJZrZtf2+Wi4Q7q3rbJT7CPE0VB7sPT7g0RefM//DK4bO8DNETstHn9k8ZnxlLrFeCjUiSR+3iyW1RmBMeA+7HlfD88XxCUkjlhqs7mS0KyeJ+7hWRDO59cVyHVoIwsQkBu6+DayKiFTc6zVHiwGIRcDJiYiI543PuSMbnnVaDuzF8yILUSATxjs8GbhkMeOMMVzi+SkJ5uH6G64vQQ4Rs95CAXo2xy8Mim3zKhpb5lFgo4Nr2hjLceEnRqrRZaFZd9cWziEvK3/oG7wlG5lYPRgvFS787fpFOvB9D+7xGRvWa0PopsMwus4cEE6hXja/kgJq1ESCq4gt6DmlzFzAoZQpzwfAeGQbDKNMGGwYkvf4+/SJ0Be5NpLet6Ae2NTe7IVORbnme3h9tHwxPtdNPz29TPgaNfiUtwxE485dd/OBuy28KbOvKMjexsSMvLjzuqsChOHYq5aC2kYKs+OCp0aL2hqMOJ7m/3YN5bxS79JpqtiDXUYoGc6tAeD0HZyHVgRmWY6g50Bqtg4l+kYKrmstGGlqf1ljlkNaNTmG05vBM4zWYjQx1v2BeYkuzJsVN3MR/yqkBOBTfagExde/6j/7DPznvqaUXsUoTsTXc4rxhmduUtqsMrdPrO1wlK9EwEXvS7/etyGWhDEQ4BWK1P43LDffKTVnmDWxWIDKvaPO401lUH+QBboUpaG0XrTiK9H7aeAPrghhLEjePZMo4NR0A5GsvPXZ6ggy3Xw6wcSrn2belgcByR06/nqTENgy/8xH08TA5TMbYX+ut6kVrz+Qnv0+hF031/l0gE/A5MuYk9CyONse2Sya9JFUf0jmpO1iWYB2ecnpdfjZzQaG9GJGz8oRxA0MTDqsnzsLpnrY6zSXwo6VIuyrL1DyDT1jIVUopJFT0HSCq9gILgtSqatobD/r7eChMY4D2t/eJWC3/c08o6ZEIOfKUgDN9dZ+/yAZyx6fWdQJQOgbxlTx/ZcRC3WgMmI5ora9C6Pn+jiuVfDaFDmyXv2e5Ok0o51JC+DOcjlV8Sw7wGcGc+EyaAGXlkZkAjEw+bzL3I12oZdfhFMojRX9lR3ZGHTIfyWvRITWJ8Z930ckEEt0qnEk+ghWDg7XWeyPHnK63PMfDbJAOi2eWFt4/BCc4k56cYXC7QzRei2ryD+VNqQlru2WvU4SCrCDpQQ23gp1CGGiqhKIw36cKivr0bNrnEtP1GIs5qccPAvsx1E+jc3LxxPKdtShmntg="
					type="hidden"> <input id="sEDataDiff" name="sEDataDiff"
					value="eyJhZGQxIjoiZDQxZDhjZDk4ZjAwYjIwNGU5ODAwOTk4ZWNmODQyN2UiLCJhZGQyIjoiZDQxZDhjZDk4ZjAwYjIwNGU5ODAwOTk4ZWNmODQyN2UiLCJhZGQzIjoiZDQxZDhjZDk4ZjAwYjIwNGU5ODAwOTk4ZWNmODQyN2UiLCJhZGQ0IjoiZDQxZDhjZDk4ZjAwYjIwNGU5ODAwOTk4ZWNmODQyN2UiLCJtZW1iZXJfaWQiOiJlODgzNWQwMGNkM2M4Nzg2ZTQ4YjJkNDliODJlMjI5OSIsImhpbnRfYW5zd2VyIjoiZDQxZDhjZDk4ZjAwYjIwNGU5ODAwOTk4ZWNmODQyN2UiLCJuYW1lX2NvbnRlbnRzIjoiNDQxODQzMDY5YmU1NWU5MjQyMTgzOGIyMWI5ZGI4YzEiLCJzc25fY29udGVudHMiOiI1OGE0YTQ3YzQ3ZGRhMTE1MmFjNGYxOGIwZjE2M2U3NCIsInBvc3Rjb2RlMSI6ImQ2ZDBmNDQ1ZWY0MzM4YWJhNjQ4ZDFhMTM5MzY3NDNjIiwicG9zdGNvZGUyIjoiZDQxZDhjZDk4ZjAwYjIwNGU5ODAwOTk4ZWNmODQyN2UiLCJhZGRyMSI6IjFjZjY1YjVmMmQ2MjJkNmE3ZDA4NGEwNjU2NDExMmEyIiwiYWRkcjIiOiIyZTM1NDliMGNjNDQyNzhiMzlmYjA3ZDZhMGYzOThjYSIsImNpdHlfbmFtZSI6ImQ0MWQ4Y2Q5OGYwMGIyMDRlOTgwMDk5OGVjZjg0MjdlIiwic3RhdGVfbmFtZSI6ImQ0MWQ4Y2Q5OGYwMGIyMDRlOTgwMDk5OGVjZjg0MjdlIiwicGhvbmUyIjoiZDQxZDhjZDk4ZjAwYjIwNGU5ODAwOTk4ZWNmODQyN2UiLCJwaG9uZTMiOiJkNDFkOGNkOThmMDBiMjA0ZTk4MDA5OThlY2Y4NDI3ZSIsIm1vYmlsZTIiOiJjZGYyOGY4YjdkMTRhYjAyZDEyYTIzMjlkNzFlNDA3OSIsIm1vYmlsZTMiOiIzMzVkM2QxY2Q3ZWYwNWVjNzc3MTRhMjE1MTM0OTE0YyIsImVtYWlsMSI6IjJjNTcxZTE5Nzc2MjVhNzFmMzE3MmU5MzQ2NjIwZjA0IiwiZW1haWwyIjoiMjAwYjBlNjg5NWU5OTNjMjlkZDA5ZGM3NGJjZTE3NzIiLCJlbWFpbDMiOiIyMDBiMGU2ODk1ZTk5M2MyOWRkMDlkYzc0YmNlMTc3MiIsImJpcnRoX3llYXIiOiIwMDhiZDVhZDkzYjc1NGQ1MDAzMzhjMjUzZDljMTc3MCIsImJpcnRoX21vbnRoIjoiZTQ1ZWU3Y2U3ZTg4MTQ5YWY4ZGQzMmIyN2Y5NTEyY2UiLCJiaXJ0aF9kYXkiOiIxZmYxZGU3NzQwMDVmOGRhMTNmNDI5NDM4ODFjNjU1ZiIsIm1hcnJ5X3llYXIiOiJkNDFkOGNkOThmMDBiMjA0ZTk4MDA5OThlY2Y4NDI3ZSIsIm1hcnJ5X21vbnRoIjoiZDQxZDhjZDk4ZjAwYjIwNGU5ODAwOTk4ZWNmODQyN2UiLCJtYXJyeV9kYXkiOiJkNDFkOGNkOThmMDBiMjA0ZTk4MDA5OThlY2Y4NDI3ZSIsInBhcnRuZXJfeWVhciI6ImQ0MWQ4Y2Q5OGYwMGIyMDRlOTgwMDk5OGVjZjg0MjdlIiwicGFydG5lcl9tb250aCI6ImQ0MWQ4Y2Q5OGYwMGIyMDRlOTgwMDk5OGVjZjg0MjdlIiwicGFydG5lcl9kYXkiOiJkNDFkOGNkOThmMDBiMjA0ZTk4MDA5OThlY2Y4NDI3ZSIsIl9fYWRkcjEiOiIxY2Y2NWI1ZjJkNjIyZDZhN2QwODRhMDY1NjQxMTJhMiIsIl9fY2l0eV9uYW1lIjoiZDQxZDhjZDk4ZjAwYjIwNGU5ODAwOTk4ZWNmODQyN2UiLCJfX3N0YXRlX25hbWUiOiJkNDFkOGNkOThmMDBiMjA0ZTk4MDA5OThlY2Y4NDI3ZSIsInBob25lMSI6ImQ0MWQ4Y2Q5OGYwMGIyMDRlOTgwMDk5OGVjZjg0MjdlIiwibW9iaWxlMSI6ImVhMjBhMDQzYzA4ZjUxNjhkNDQwOWZmNDE0NGYzMmUyIiwibmlja19uYW1lIjoiZDQxZDhjZDk4ZjAwYjIwNGU5ODAwOTk4ZWNmODQyN2UiLCJpc19uZXdzX21haWwiOiI4MDA2MTg5NDMwMjUzMTVmODY5ZTRlMWYwOTQ3MTAxMiIsImlzX3NtcyI6IjgwMDYxODk0MzAyNTMxNWY4NjllNGUxZjA5NDcxMDEyIiwic2V4IjoiNjk2OTFjN2JkY2MzY2U2ZDVkOGExMzYxZjIyZDA0YWMiLCJpc19zb2xhcl9jYWxlbmRhciI6ImI5ZWNlMThjOTUwYWZiZmE2YjBmZGJmYTRmZjczMWQzIiwicmVnaW9uIjoiMjMyYTA4OGUzOWI1MzhhNTcxY2FhMGJmNjRkM2M0ZWYiLCJpbnRlcmVzdCI6Ijg1M2FlOTBmMDM1MTMyNGJkNzNlYTYxNWU2NDg3NTE3IiwiaW50ZXJuZXQiOiI4ZTA1YzE3Y2U2YzE0ODUwOTcxNDg1ODM0YTVjZmIzMSIsImNoaWxkIjoiMGFjZjc0MjU2ZjAyYjdiNWU2YTAxZDU3MTlmZTg5NDYiLCJjYXIiOiJhNzhmMDAyNDUzY2NiYzExYzBiN2MwODA0OWZjZTYyOSIsImF2YWlsX21pbGVhZ2UiOiJiYTczOTc2ODZjOGFmYzM0OGNkZDNhZmRiZTJjZjM3NSIsInJlY29faWQiOiJkNDFkOGNkOThmMDBiMjA0ZTk4MDA5OThlY2Y4NDI3ZSIsInppcGNvZGUiOiJkNmQwZjQ0NWVmNDMzOGFiYTY0OGQxYTEzOTM2NzQzYyIsIm1lbWJlcl90eXBlIjoiODM4NzhjOTExNzEzMzg5MDJlMGZlMGZiOTdhOGM0N2EiLCJjb21wYW55X3R5cGUiOiI3MjE1ZWU5YzdkOWRjMjI5ZDI5MjFhNDBlODk5ZWM1ZiIsImNzc24iOiJkNDFkOGNkOThmMDBiMjA0ZTk4MDA5OThlY2Y4NDI3ZSIsImJuYW1lIjoiZDQxZDhjZDk4ZjAwYjIwNGU5ODAwOTk4ZWNmODQyN2UiLCJjbmFtZSI6ImQ0MWQ4Y2Q5OGYwMGIyMDRlOTgwMDk5OGVjZjg0MjdlIiwiYnNzbjEiOiJkNDFkOGNkOThmMDBiMjA0ZTk4MDA5OThlY2Y4NDI3ZSIsImZvcmVpZ25lcl90eXBlIjoiNzIxNWVlOWM3ZDlkYzIyOWQyOTIxYTQwZTg5OWVjNWYiLCJjaXRpemVuc2hpcCI6ImQ0MWQ4Y2Q5OGYwMGIyMDRlOTgwMDk5OGVjZjg0MjdlIiwicGVyc29uYWxfdHlwZSI6IjcyMTVlZTljN2Q5ZGMyMjlkMjkyMWE0MGU4OTllYzVmIiwicmVmdW5kX2JhbmtfY29kZSI6IjAwYTc4NjcxYjc0MTY1MTFiYTU1ZjdkZTRhMjcyZmFhIiwiY291bnRyeV9jb2RlIjoiNjI4NjMxZjA3MzIxYjIyZDhjMTc2YzIwMGM4NTVlMWIiLCJpc19hZ3JlZWRfcHJvdmlkaW5nX2luZm9ybWF0aW9uIjoiODAwNjE4OTQzMDI1MzE1Zjg2OWU0ZTFmMDk0NzEwMTIiLCJpc19hZ3JlZWRfY29uc2lnbmluZ19pbmZvcm1hdGlvbiI6IjgwMDYxODk0MzAyNTMxNWY4NjllNGUxZjA5NDcxMDEyIiwiaXNfYXV0aGVudGljYXRlZF9ieV9lbWFpbCI6ImQ0MWQ4Y2Q5OGYwMGIyMDRlOTgwMDk5OGVjZjg0MjdlIiwidG90YWxfZGVwb3NpdCI6ImQ0MWQ4Y2Q5OGYwMGIyMDRlOTgwMDk5OGVjZjg0MjdlIn0="
					type="hidden"> <input
					id="display_agree_information_check_flag"
					name="display_agree_information_check_flag" value="F" type="hidden">
				<input id="display_agree_consignment_check_flag"
					name="display_agree_consignment_check_flag" value="F" type="hidden">
				<div class="xans-element- xans-member xans-member-edit">
					<!--
        $login_page = /member/login.html
     -->

					<h3 class=" ">기본정보</h3>
					<p class="required " style="font-size: 12px;">
						<img src="/ot/images/req_check.png" alt="필수">
						필수입력사항
					</p>
					<div class="ec-base-table typeWrite">
						<table border="1" summary="">
							<caption>회원 기본정보</caption>
							<colgroup>
								<col style="width: 150px;">
								<col style="width: auto;">
							</colgroup>
							<tbody style="font-size:13px;">
								<tr>
									<th scope="row">아이디 <img
										src="/ot/images/req_check.png" alt="필수"></th>
									<td><input id="member_id" name="member_id"
										fw-filter="isFill&amp;isFill&amp;isMin[4]&amp;isMax[16]&amp;isIdentity"
										fw-label="아이디" fw-msg="" class="inputTypeText" placeholder=""
										readonly="readonly" value="test01" type="text"> (영문소문자/숫자,
										4~16자)</td>
								</tr>
								<tr>
									<th scope="row">비밀번호 <img
										src="/ot/images/req_check.png" class=""
										alt="필수"></th>
									<td><input id="passwd" name="passwd"
										fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="비밀번호"
										fw-msg="" autocomplete="off" maxlength="16"
										0="disabled" value="" type="password"> (영문
										대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자)</td>
								</tr>
								<tr class="">
									<th scope="row">비밀번호 확인 <img
										src="/ot/images/req_check.png" alt="필수"></th>
									<td><input id="user_passwd_confirm"
										name="user_passwd_confirm"
										fw-filter="isFill&amp;isMatch[passwd]" fw-label="비밀번호 확인"
										fw-msg="비밀번호가 일치하지 않습니다." autocomplete="off" maxlength="16"
										0="disabled" value="" type="password"> <span
										id="pwConfirmMsg"></span></td>
								</tr>
								
								<tr style="display:">
									<th scope="row" id="">이름 <img
										src="/ot/images/req_check.png" alt="필수"></th>
									<td><input id="name" name="name"
										fw-filter="isFill&amp;isMax[30]" fw-label="이름" fw-msg=""
										class="ec-member-name" placeholder="" maxlength="30"
										readonly="readonly" value="홍길동" type="text"></td>
								</tr>
								
								<tr class="">
									<th scope="row">주소 <img
										src="/ot/images/req_check.png" class=""
										alt="필수"></th>
									<td><input id="postcode1" name="postcode1"
										fw-filter="isLengthRange[1][14]" fw-label="우편번호1" fw-msg=""
										class="inputTypeText" placeholder="" readonly="readonly"
										maxlength="14" value="12345" type="text"> <a href="#none"
										id="postBtn" onclick="addrSearch();" class="yg_btn_28 yg_btn5" alt="우편번호">우편번호</a><br>
										<input id="addr1" name="addr1" fw-filter="isFill"
										fw-label="주소" fw-msg="" class="inputTypeText" placeholder=""
										readonly="readonly" value="서울특별시 강남구 테헤란로" type="text"> 기본주소<br>
										<input id="addr2" name="addr2" fw-filter="" fw-label="주소"
										fw-msg="" class="inputTypeText" placeholder="" value="KH정보교육원 H 클래스"
										type="text"> 나머지주소</td>
								</tr>
								<tr class="">
									<th scope="row">일반전화 <img
										src="/ot/images/req_check.png"
										class="displaynone" alt="필수"></th>
									<td><select id="phone1" name="phone[]"
										fw-filter="isNumber&amp;isNumber" fw-label="일반전화" fw-alone="N"
										fw-msg="">
											<option value="02">02</option>
											<option value="031">031</option>
											<option value="032">032</option>
											<option value="033">033</option>
											<option value="041">041</option>
											<option value="042">042</option>
											<option value="043">043</option>
											<option value="044">044</option>
											<option value="051">051</option>
											<option value="052">052</option>
											<option value="053">053</option>
											<option value="054">054</option>
											<option value="055">055</option>
											<option value="061">061</option>
											<option value="062">062</option>
											<option value="063">063</option>
											<option value="064">064</option>
											<option value="0502">0502</option>
											<option value="0503">0503</option>
											<option value="0504">0504</option>
											<option value="0505">0505</option>
											<option value="0506">0506</option>
											<option value="0507">0507</option>
											<option value="070">070</option>
											<option value="010">010</option>
											<option value="011">011</option>
											<option value="016">016</option>
											<option value="017">017</option>
											<option value="018">018</option>
											<option value="019">019</option>
											<option value="0508">0508</option>
									</select>-<input id="phone2" name="phone[]" maxlength="4"
										fw-filter="isNumber&amp;isNumber" fw-label="일반전화" fw-alone="N"
										fw-msg="" value="" type="text">-<input id="phone3"
										name="phone[]" maxlength="4" fw-filter="isNumber&amp;isNumber"
										fw-label="일반전화" fw-alone="N" fw-msg="" value="" type="text"></td>
								</tr>
								<tr class="">
									<th scope="row">휴대전화 <img
										src="/ot/images/req_check.png" class=""
										alt="필수"></th>
									<td>
									<select id="mobile1" name="mobile[]"
										fw-filter="isNumber&amp;isFill" fw-label="휴대전화" fw-alone="N"
										fw-msg="">
											<option value="010">010</option>
											<option value="011">011</option>
											<option value="016">016</option>
											<option value="017">017</option>
											<option value="018">018</option>
											<option value="019">019</option>
									</select>-<input id="mobile2" name="mobile[]" maxlength="4"
										fw-filter="isNumber&amp;isFill" fw-label="휴대전화" fw-alone="N"
										fw-msg="" value="6687" type="text">-<input id="mobile3"
										name="mobile[]" maxlength="4" fw-filter="isNumber&amp;isFill"
										fw-label="휴대전화" fw-alone="N" fw-msg="" value="3789" type="text"></td>
								</tr>
								<tr class="">
									<th scope="row">SMS 수신여부 <img
										src="/ot/images/req_check.png" alt="필수"></th>
									<td><input id="is_sms0" name="is_sms" fw-filter="isFill"
										fw-label="is_sms" fw-msg="" value="T" type="radio"><label
										for="is_sms0">수신함</label> <input id="is_sms1" name="is_sms"
										fw-filter="isFill" fw-label="is_sms" fw-msg="" value="F"
										type="radio" checked="checked"><label for="is_sms1">수신안함</label>
										<p style="font-size:13px;">쇼핑몰에서 제공하는 유익한 이벤트 소식을 SMS로 받으실 수 있습니다.</p></td>
								</tr>
								<tr>
									<th scope="row">이메일 <img
										src="/ot/images/req_check.png" alt="필수"></th>
									<td><input id="email1" name="email1"
										fw-filter="isFill&amp;isEmail" fw-label="이메일" fw-alone="N"
										fw-msg="" value="abcdfabcdf@naver.com" type="text"> <span id="emailMsg"></span>
										<p class="displaynone">
											이메일 주소 변경 시 로그아웃 후 재인증을 하셔야만 로그인이 가능합니다.<br>인증 메일은 24시간
											동안 유효하며, 유효 시간이 만료된 후에는 가입 정보로 로그인 하셔서 재발송 요청을 해주시기 바랍니다.
										</p></td>
								</tr>
							</tbody>
						</table>
					</div>
					<h3 class=" ">추가정보</h3>
					<div class="ec-base-table typeWrite ">
						<table border="1" summary="">
							<caption>회원 추가정보</caption>
							<colgroup>
								<col style="width: 150px;">
								<col style="width: auto;">
							</colgroup>
							<tbody style="font-size:13px;">
								<tr class="">
									<th scope="row">성별 <img
										src="/ot/images/req_check.png" class=""
										alt="필수"></th>
									<td><input id="is_sex0" name="is_sex" fw-filter="isFill"
										fw-label="성별" fw-msg="" disabled="1" value="M" type="radio"
										checked="checked"><label for="is_sex0">남자</label> <input
										id="is_sex1" name="is_sex" fw-filter="isFill" fw-label="성별"
										fw-msg="" disabled="1" value="F" type="radio"><label
										for="is_sex1">여자</label></td>
								</tr>
								<tr class="">
									<th scope="row">생년월일 <img
										src="/ot/images/req_check.png" class=""
										alt="필수"></th>
									<td><input id="birth_year" name="birth_year"
										fw-filter="isFill" fw-label="생년월일" fw-msg=""
										class="inputTypeText" placeholder="" maxlength="4" value="1994"
										type="text"> 년 <input id="birth_month"
										name="birth_month" fw-filter="isFill" fw-label="생년월일"
										fw-msg="" class="inputTypeText" placeholder="" maxlength="2"
										value="03" type="text"> 월 <input id="birth_day"
										name="birth_day" fw-filter="isFill" fw-label="생년월일" fw-msg=""
										class="inputTypeText" placeholder="" maxlength="2" value="24"
										type="text"> 일 <span class="gIndent20 "><input
											id="is_solar_calendar0" name="is_solar_calendar"
											fw-filter="isFill" fw-label="생년월일" fw-msg="" value="T"
											type="radio" checked="checked"><label
											for="is_solar_calendar0">양력</label> <input
											id="is_solar_calendar1" name="is_solar_calendar"
											fw-filter="isFill" fw-label="생년월일" fw-msg="" value="F"
											type="radio"><label for="is_solar_calendar1">음력</label></span>
									</td>
								</tr>
								
								<tr class="">
									<th scope="row">환불계좌 <img
										src="/ot/images/req_check.png"
										class="displaynone" alt="필수"></th>
									<td><span id="id_bank_info">[카카오뱅크] 3333023943107 /
											예금주: 신경섭</span> <a href="#none"
										onclick="window.open('/ot/mypage_member_account.jsp','bank_account','width=600,height=460');return false;"><img
											src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_account_change.gif"
											alt="환불계좌변경" id="id_has_bank_img" class=""><img
											src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_account.gif"
											alt="환불계좌등록" id="id_reg_bank_img" class="displaynone"></a></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<div class="ec-base-button justify">
						<a href="#none" class="yg_btn_140 yg_btn1 yg_btn_border_444"
							onclick="memberEditAction()" alt="회원정보수정">회원정보수정</a> <a
							href="/index.html" class="yg_btn_140 yg_btn4" alt="취소">취소</a> <span
							class="gRight"> <a href="#none" class="yg_btn_140 yg_btn3" id="memberdel"
							onclick="memberDelAction(2000, 0, -1)" alt="회원탈퇴">회원탈퇴</a>
						</span>
					</div>
					
					<div class="layerLeave ec-base-layer" id="eLeaveLayer">
						<div class="header" style="height:35px; padding: 7px 35px 7px 19px;">
							<h3 style="margin : 0;">회원탈퇴</h3>
						</div>
						<div class="content">
							<div class="ec-base-box typeMember">
								<div class="information">
									<strong class="title" style="padding : 0 0 0 15px;">혜택 내역</strong>
									<div class="description">
										<ul>
											<li id="eLeaveLayerMileageText">탈퇴시 보유하고 있는 적립금은 모두
												삭제됩니다.</li>
											<li>현재 적립금 : <strong id="eLeaveLayerMileage"
												class="txtEm">0</strong>
											</li>
											<li id="eLeaveLayerDepositTextarea">현재 예치금 : <strong
												id="eLeaveLayerDeposit" class="txtEm">0</strong>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<h4 style="font-size: 12px; font-weight: bold;">회원탈퇴 사유</h4>
							<div class="ec-base-table typeWrite">
								<table border="1" summary="">
									<caption>회원탈퇴 사유</caption>
									<colgroup>
										<col style="width: 140px;">
										<col style="width: auto;">
									</colgroup>
									<tbody style="font-size:13px;">
										<tr>
											<th scope="row">선택</th>
											<td><select id="leave_reason" name="leave_reason"
												fw-filter="isFill" fw-label="회원탈퇴 사유" fw-msg="" style="width:auto;">
													<option value="" selected="selected">-선택하세요-</option>
													<option value="상품종류가 부족하다">상품종류가 부족하다</option>
													<option value="상품가격이 비싸다">상품가격이 비싸다</option>
													<option value="상품가격에 비해 품질이 떨어진다">상품가격에 비해 품질이
														떨어진다</option>
													<option value="배송이 느리다">배송이 느리다</option>
													<option value="반품/교환이 불만이다">반품/교환이 불만이다</option>
													<option value="상담원 고객응대 서비스가 불만이다">상담원 고객응대 서비스가
														불만이다</option>
													<option value="쇼핑몰 혜택이 부족하다 (쿠폰, 적립금,할인 등)">쇼핑몰
														혜택이 부족하다 (쿠폰, 적립금,할인 등)</option>
													<option value="이용빈도가 낮다">이용빈도가 낮다</option>
													<option value="개인정보 유출이 염려된다">개인정보 유출이 염려된다</option>
													<option value="기타">기타</option>
											</select></td>
										</tr>
										<tr id="eLeaveLayerEtcTextarea">
											<th scope="row">기타</th>
											<td><textarea id="subjective_leave_reason"
													name="subjective_leave_reason" fw-filter=""
													fw-label="subjective_leave_reason" fw-msg="" rows="3"
													cols="60"></textarea></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="ec-base-button">
							<a href="#none" id="eLeaveLayerBtn" class="yg_btn_30" alt="탈퇴">탈퇴</a>
							<a href="#none" onclick="$('#eLeaveLayer').hide();"
								class="yg_btn_30 yg_btn3" alt="취소">취소</a>
						</div>
						<a href="#none"  class="close" style="top:-7px; right:-7px;" onclick="$('#eLeaveLayer').hide();"><img
							src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif"
							alt="닫기"></a>
					</div>
				</div>
				<input type="hidden" name="agree_information_check_display"
					value="T"><input type="hidden"
					name="agree_consignment_check_display" value="T">
			</form>
		</div>
	<hr class="layout">
	</div>
	<%@include file="footer.jsp"%>





	<script>
		var $sAgreeAllChecked = $('#sAgreeAllChecked');
		$sAgreeAllChecked.change(function() {
			var $this = $(this);
			var checked = $this.prop('checked');
			$('input[name="checkRow"]').prop('checked', checked);

		});

		$('#idCheck').click(function() {

			var $href = $(this).attr('href');
			layer_popup($href);

			$.ajax({
				url : "idDuplicate.me",
				type : "post",
				data : {
					userId : $('#userId').val()
				},
				success : function(data) {
					if (data == "ok") {

						$('#check_ment').html('<br>사용 가능한 아이디 입니다.<br>');
					} else {
						$('#check_ment').html('<br>이미 사용중인 아이디 입니다.<br>');
					}
				},
				error : function(data) {
					$('#checkMassege').text('에러 입니다.').css('color', 'red');
				}
			});
		});

		function layer_popup(el) {

			var $el = $(el); //레이어의 id를 $el 변수에 저장
			var isDim = $el.prev().hasClass('dimBg'); //dimmed 레이어를 감지하기 위한 boolean 변수

			isDim ? $('.dim-layer').fadeIn() : $el.fadeIn();

			var $elWidth = ~~($el.outerWidth()), $elHeight = ~~($el
					.outerHeight()), docWidth = $(document).width(), docHeight = $(
					document).height();

			// 화면의 중앙에 레이어를 띄운다.
			if ($elHeight < docHeight || $elWidth < docWidth) {
				$el.css({
					marginTop : -$elHeight / 2,
					marginLeft : -$elWidth / 2
				})
			} else {
				$el.css({
					top : 0,
					left : 0
				});
			}

			$el.find('a.btn-layerClose').click(function() {
				isDim ? $('.dim-layer').fadeOut() : $el.fadeOut(); // 닫기 버튼을 클릭하면 레이어가 닫힌다.
				return false;
			});

			$('.layer .dimBg').click(function() {
				$('.dim-layer').fadeOut();
				return false;
			});

		}

		function addrSearch() {
			new daum.Postcode({
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 각 주소의 노출 규칙에 따라 주소를 조합한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var fullAddr = ''; // 최종 주소 변수
					var extraAddr = ''; // 조합형 주소 변수

					// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
					if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
						fullAddr = data.roadAddress;

					} else { // 사용자가 지번 주소를 선택했을 경우(J)
						fullAddr = data.jibunAddress;
					}

					// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
					if (data.userSelectedType === 'R') {
						//법정동명이 있을 경우 추가한다.
						if (data.bname !== '') {
							extraAddr += data.bname;
						}
						// 건물명이 있을 경우 추가한다.
						if (data.buildingName !== '') {
							extraAddr += (extraAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
						fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')'
								: '');
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					$('#postcode1').val(data.zonecode); //5자리 새우편번호 사용

					$('#addr1').val(fullAddr);

					// 커서를 상세주소 필드로 이동한다.
					$('#addr2').val('');
					$('#addr2').focus();
				}
			}).open();
		};
		function validateEmail(email) {
			var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
			return re.test(email);
		}
	</script>
	
	
	<script>
	$('#memberdel').click(function() {
		$('#eLeaveLayer').css('display', 'block');
	});

	$('.memberclose').click(function() {
		$('#eLeaveLayer').css('display', 'none');
	});
	</script>

</body>
</html>