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
<body id="popup" style="margin:0;">
	<form id="accountForm" name="accountForm" method="POST"
		enctype="multipart/form-data">
		<div
			class="xans-element- xans-myshop xans-myshop-orderhistoryaccount ec-base-layer xans-record-">
			<div class="header">
				<h1>
					환불계좌 <span class="displaynone">등록</span><span class="">변경</span>
				</h1>
			</div>
			<div class="content">
				<div class="ec-base-table typeWrite">
					<table border="1" summary="">
						<caption>
							환불계좌 <span class="displaynone">등록</span><span class="">변경</span>
						</caption>
						<colgroup>
							<col style="width: 140px">
							<col style="width: auto">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">예금주</th>
								<td><input id="acc_depositor" name="acc_depositor"
									fw-filter="" fw-label="" fw-msg="" class="inputTypeText"
									placeholder="" value="신경섭" type="text">
									<p class="txtInfo gBlank10">예금주명은 주문자명과 동일해야 합니다.</p></td>
							</tr>
							<tr>
								<th scope="row">은행선택</th>
								<td><select id="acc_bank" name="acc_bank" fw-filter=""
									fw-label="" fw-msg="">
										<option value="">-선택하세요-</option>
										<option value="bank_02">산업은행</option>
										<option value="bank_03">기업은행</option>
										<option value="bank_04">국민은행</option>
										<option value="bank_05">외환은행</option>
										<option value="bank_07">수협중앙회</option>
										<option value="bank_11">농협중앙회</option>
										<option value="bank_12">농협개인</option>
										<option value="bank_13">농협</option>
										<option value="bank_20">우리은행</option>
										<option value="bank_209">유안타증권</option>
										<option value="bank_218">KB증권</option>
										<option value="bank_23">SC제일은행</option>
										<option value="bank_230">미래에셋증권</option>
										<option value="bank_238">대우증권</option>
										<option value="bank_240">삼성증권</option>
										<option value="bank_243">한국투자증권</option>
										<option value="bank_26">신한은행</option>
										<option value="bank_261">교보증권</option>
										<option value="bank_262">하이투자증권</option>
										<option value="bank_263">현대차증권</option>
										<option value="bank_266">SK증권</option>
										<option value="bank_267">대신증권</option>
										<option value="bank_269">한화증권</option>
										<option value="bank_270">하나대투증권</option>
										<option value="bank_278">신한금융투자</option>
										<option value="bank_279">동부증권</option>
										<option value="bank_280">유진투자증권</option>
										<option value="bank_287">메리츠증권</option>
										<option value="bank_289">NH투자증권</option>
										<option value="bank_291">신영증권</option>
										<option value="bank_292">케이뱅크</option>
										<option value="bank_293" selected="selected">카카오뱅크</option>
										<option value="bank_295">OK저축은행</option>
										<option value="bank_31">대구은행</option>
										<option value="bank_32">부산은행</option>
										<option value="bank_34">광주은행</option>
										<option value="bank_35">제주은행</option>
										<option value="bank_37">전북은행</option>
										<option value="bank_39">경남은행</option>
										<option value="bank_52">모건스탠리은행</option>
										<option value="bank_53">씨티은행</option>
										<option value="bank_57">유에프제이은행</option>
										<option value="bank_58">미즈호코퍼레이트은행</option>
										<option value="bank_59">미쓰비시도쿄은행</option>
										<option value="bank_60">뱅크오브아메리카</option>
										<option value="bank_71">우체국</option>
										<option value="bank_76">신용보증기금</option>
										<option value="bank_77">기술신용보증기금</option>
										<option value="bank_81">KEB하나은행</option>
										<option value="bank_82">농협회원조합</option>
										<option value="bank_83">도이치은행</option>
										<option value="bank_84">상호저축은행</option>
										<option value="bank_85">새마을금고</option>
										<option value="bank_86">수출입은행</option>
										<option value="bank_87">신용협동조합</option>
										<option value="bank_89">홍콩상하이은행(HSBC)</option>
										<option value="bank_90">에이비엔암로은행</option>
										<option value="bank_91">산림조합</option>
										<option value="bank_93">한국주택금융공사</option>
										<option value="bank_94">서울보증보험</option>
										<option value="bank_95">경찰청</option>
										<option value="bank_99">금융결제원</option>
								</select></td>
							</tr>
							<tr>
								<th scope="row">계좌번호</th>
								<td><input id="acc_no" name="acc_no" fw-filter=""
									fw-label="" fw-msg="" class="inputTypeText" placeholder=""
									value="3333023943107" type="text">
									<p class="txtInfo gBlank10">'-' 없이 숫자만 입력해 주세요.</p></td>
							</tr>
							<tr>
								<th scope="row">비밀번호 확인</th>
								<td><input id="check_password" name="check_password"
									fw-filter="" fw-label="" fw-msg="" value="" type="password">
									<p class="txtInfo gBlank10">등록된 비밀번호를 확인합니다.</p></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="ec-base-button">
					<a href="#none" class="displaynone yg_btn yg_btn1"
						onclick="RefundAccount.register(); return false;" alt="등록">등록</a>
					<a href="#none" class=" yg_btn yg_btn1"
						onclick="RefundAccount.modify(); return false;" alt="변경">변경</a> <a
						href="#none" class="yg_btn yg_btn3"
						onclick="RefundAccount.cancel(); return false;" alt="취소">취소</a>
				</div>
			</div>
		</div>
	</form>
	<script type="text/javascript">
		var sAuthSSLDomain = "https://login2.cafe24ssl.com";
	</script>
	<script type="text/javascript"
		src="https://login2.cafe24ssl.com/crypt/AuthSSLManager.js"></script>
	<script type="text/javascript"
		src="https://login2.cafe24ssl.com/crypt/AuthSSLManager.plugin.js"></script>

	<script>
		try {
			// Account ID 적용
			if (!wcs_add)
				var wcs_add = {};
			wcs_add["wa"] = "s_47112a8eb19a";

			// 마일리지 White list가 있을 경우
			wcs.mileageWhitelist = [ "skfo900815.cafe24.com",
					"www.skfo900815.cafe24.com", "m.skfo900815.cafe24.com",
					"blackupp.com", "www.blackupp.com", "m.blackupp.com",
					"black-up.kr", "www.black-up.kr", "m.black-up.kr" ];

			// 네이버 페이 White list가 있을 경우
			wcs.checkoutWhitelist = [ "skfo900815.cafe24.com",
					"www.skfo900815.cafe24.com", "m.skfo900815.cafe24.com",
					"blackupp.com", "www.blackupp.com", "m.blackupp.com",
					"black-up.kr", "www.black-up.kr", "m.black-up.kr" ];

			// 레퍼러 (스크립트 인젠션 공격 대응 strip_tags) ECQAINT-15101
			wcs.setReferer("http://black-up.kr/member/modify.html");

			// 유입 추적 함수 호출
			wcs.inflow("black-up.kr");

			// 로그수집
			wcs_do();
		} catch (e) {
		};
	</script>


	<!-- External Script Start -->

	<!-- fab_cvt -->
	<!-- CMC script -->
	<div id="fab_cvt_common_top_script" style="display: none;">
		<!-- Facebook Pixel Code -->
		<script>
			!function(f, b, e, v, n, t, s) {
				if (f.fbq)
					return;
				n = f.fbq = function() {
					n.callMethod ? n.callMethod.apply(n, arguments) : n.queue
							.push(arguments)
				};
				if (!f._fbq)
					f._fbq = n;
				n.push = n;
				n.loaded = !0;
				n.version = '2.0';
				n.agent = 'plcafe24_mc';
				n.queue = [];
				t = b.createElement(e);
				t.async = !0;
				t.src = v;
				s = b.getElementsByTagName(e)[0];
				s.parentNode.insertBefore(t, s)
			}(window, document, 'script',
					'https://connect.facebook.net/en_US/fbevents.js');
			fbq('init', '337724606697471');
			fbq('track', 'PageView');
		</script>
		<noscript>
			<img height="1" width="1" style="display: none"
				src="https://www.facebook.com/tr?id=337724606697471&ev=PageView&noscript=1" />
		</noscript>
		<!-- End Facebook Pixel Code -->
	</div>
	<!-- CMC script -->
	<!-- ggc -->
	<!-- CMC script -->
	<div id="ggc_common_top_script" style="display: none;">
		<!-- Global site tag (gtag.js) - AdWords: 770945156 -->
		<script>
			var isInIframe = (window.location != window.parent.location);
			if (isInIframe != true) {
				var headTag = document.getElementsByTagName("head")[0];
				var ggc_script = document.createElement('script');
				ggc_script.onload = function() {
				};
				ggc_script.src = "https://www.googletagmanager.com/gtag/js?id=AW-770945156";
				headTag.appendChild(ggc_script);
			}
		</script>
		<script>
			var isInIframe = (window.location != window.parent.location);
			if (isInIframe != true) {
				window.dataLayer = window.dataLayer || [];
				function gtag() {
					dataLayer.push(arguments);
				}
				gtag('js', new Date());
				gtag('config', 'AW-770945156');
			}
		</script>
	</div>
	<!-- CMC script -->

	<!-- tgg -->
	<!-- CMC script -->
	<div id="tgg_common_bottom_script" style="display: none;">
		<!-- WIDERPLANET HOME SCRIPT START 2016.8.24 -->
		<div id="wp_tg_cts" style="display: none;">
			<script id="wp_id_script_1585711388441"
				src="https://altg.widerplanet.com/delivery/wp.js"></script>
			<script id="wp_tag_script_1585711388595"
				src="https://astg.widerplanet.com/delivery/wpc.php?ti=20910&amp;v=1&amp;device=web&amp;ver=2_0_mall&amp;ty=Home&amp;charset=UTF-8&amp;tc=1585711388593&amp;ref=http%3A%2F%2Fblack-up.kr%2Fmember%2Fmodify.html&amp;loc=http%3A%2F%2Fblack-up.kr%2Fmyshop%2Forder%2Faccount.html&amp;md=bs&amp;eid=4-b7def4d59bb82df48f0c39c1ef5f4e862b3ab503c2e789bb91931127be3ab20e3249b27351a314b9d6a1a63b7d198433ab3b5f94e11bb3127ab8ca370d8c21a5aa8cbd2186644b2fb0cfb5ed5434d338"></script>
		</div>
		<script type="text/javascript">
			var wp_conf = 'ti=20910&v=1&device=web';
		</script>
		<script type="text/javascript" defer=""
			src="//cdn-aitg.widerplanet.com/js/wp_astg_2.0_mall.js"></script>
		<!-- // WIDERPLANET HOME SCRIPT END 2016.8.24 -->
	</div>
	<!-- CMC script -->
	<!-- External Script End -->

	<script type="text/javascript"
		src="//black-up.kr/ind-script/i18n.php?lang=ko_KR&amp;domain=front&amp;v=2003251119"
		charset="utf-8"></script>

	<script type="text/javascript"
		src="/ind-script/optimizer.php?filename=rVTBbtswDP2A5rrvEFLssGuSoacWKRoEPdMybSuRRI2imnlfPyVNgeRgO44LAzZk8L1H8lFUDTlU80dWFYPDA_FeMUZKrFHtojLzX362iz9UX1wyAfRe7f4k5Pb8mc9-5ucKGZjqDL7ij4GNl2o4sCSdHHp5InYr8sJkLfIw7tWmuAhhyaascTi84syt_oLPpXtBDoxyi8wFTtAFC9IhBiGoFyqMRfV2gdfkHHmVxNhROEdlyr_iwYRxglXyWkyWzHFl0jJzxBMZepKwplDbzym5pLDwr7UE5SiQSwJH3XURkT-6zOkAB7JtZay91dESK0hWji2IDliW4H2X5DFo01C4Enw60axO9m573e2AvmFudLnQmpKX4bQXSZrN5rnHSfBQXzt5wMJSPaqPq8SMXrcq5qwf8iXWOAGvz6eHKt9ukKmZfBdN92287HgjzubFZMRgHNV2iK3Xn--7cQ5d0TePA_A1l8i6a65uIFhC3KNMZ-iZoJs5Xs976F6WFaVAfkotL3lHQn1_Hb8xUDT367-b2DybOI3ga9H8Bw&amp;type=js&amp;k=e48a2674cd539c10e0bbe125d70f65950cf4d7a6&amp;t=1585516125"></script>
	<script type="text/javascript"
		src="/ind-script/optimizer.php?filename=rZLBbsIwDIYfoFz3HAYkpHEcO2yHoiHGC7iJoaZpHDkJU99-rCBtV9JdfMr3xfL_Qys9wWKpEFROij1gCLBFjyeCPUXJagjOETAO3tzmTMmQT7NzfIISfD_iB0noXiVPEH2oJS2mN-TpyOW_bzB2lGocJuzwpmipmH7JSXpMbEbNZytfxaptdol3EnIoVww1d7RTsdmkacHWfCHHvhM_rRvvHJPo8A8tu5sO2BR4AqZWxVF1QccWr6Lyywjah-Bwy-OXIVPlSBohdkdZz-fPixWE3Dg2VZt6B9FSZSnyyV9fsF-ufyxG-v5vGI9LHA6SEzQY2Yx73bv2DQ&amp;type=js&amp;k=a90440d3f7ad99cdfef7a5511a753ce2fb99f565&amp;t=1583701474"></script>
	<script type="text/javascript">
		var EC_MOBILE = false;
		var EC_MOBILE_DEVICE = false;
		var EC_MOBILE_USE = true;
		var mobileWeb = false;
		var sCallFrom = 'unknown';
		$(document).ready(function() {
			AuthSSL.Bind('accountForm', [ "accountForm::check_password" ]);
		});
		var aLogData = {
			"log_server1" : "eclog2-224.cafe24.com",
			"log_server2" : "eclog2-224.cafe24.com",
			"mid" : "skfo900815",
			"stype" : "e",
			"domain" : "",
			"shop_no" : 1,
			"lang" : "ko_KR",
			"ver" : 2,
			"etc" : ""
		};
		var sMileageName = '적립금';
		var sMileageUnit = '[:PRICE:]원';
		var sDepositName = '예치금';
		var sDepositUnit = '원';
		var SHOP_CURRENCY_INFO = {
			"1" : {
				"aShopCurrencyInfo" : {
					"currency_code" : "KRW",
					"currency_no" : "410",
					"currency_symbol" : "\uffe6",
					"currency_name" : "South Korean won",
					"currency_desc" : "\uffe6 \uc6d0 (\ud55c\uad6d)",
					"decimal_place" : 0,
					"round_method_type" : "F"
				},
				"aShopSubCurrencyInfo" : null,
				"aBaseCurrencyInfo" : {
					"currency_code" : "KRW",
					"currency_no" : "410",
					"currency_symbol" : "\uffe6",
					"currency_name" : "South Korean won",
					"currency_desc" : "\uffe6 \uc6d0 (\ud55c\uad6d)",
					"decimal_place" : 0,
					"round_method_type" : "F"
				},
				"fExchangeRate" : 1,
				"fExchangeSubRate" : null,
				"aFrontCurrencyFormat" : {
					"head" : "",
					"tail" : " won"
				},
				"aFrontSubCurrencyFormat" : {
					"head" : "",
					"tail" : ""
				}
			}
		};
		var EC_ASYNC_LIVELINKON_ID = '';
		if ($('[async_section=before]').length > 0) {
			$('[async_section=before]').addClass('displaynone');
		}
		var EC_FRONT_JS_CONFIG_MANAGE = {
			"sSmartBannerScriptUrl" : "https:\/\/app4you.cafe24.com\/SmartBanner\/tunnel\/scriptTags?vs=1563164396689206",
			"sMallId" : "skfo900815",
			"sDefaultAppDomain" : "https:\/\/app4you.cafe24.com",
			"sWebLogOffFlag" : "F"
		};
	</script>
	<iframe
		src="/exec/front/eclog/main/?&amp;rloc=http%3A//black-up.kr/myshop/order/account.html&amp;rref=http%3A//black-up.kr/member/modify.html&amp;udim=1920*1080&amp;rserv=eclog2-224.cafe24.com&amp;cid=CIDd5db10db9ef32ccf6fbf9e49de1af53d&amp;role_path=ETC&amp;stype=e&amp;shop_no=1&amp;lang=ko_KR&amp;ver=2"
		id="log_realtime" style="display: none;"></iframe>
	<script
		src="http://eclog2-224.cafe24.com/weblog_ubp.html?uid=skfo900815&amp;udim=1920*1080&amp;uref=http://black-up.kr/member/modify.html&amp;uname=skfo900815&amp;url=http://black-up.kr/myshop/order/account.html&amp;r_ref=http://black-up.kr/member/modify.html&amp;shop_no=1&amp;t=1585711388464"></script>
	<script type="text/javascript"
		src="//eclog2-224.cafe24.com/weblog.js?uid=skfo900815&amp;uname=skfo900815&amp;r_ref=http://black-up.kr/member/modify.html&amp;shop_no=1&amp;t=1585711388464"
		id="log_script"></script>
</body>
</html>