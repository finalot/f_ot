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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="./css/mypage_list.css">
<link rel="stylesheet" href="./css/mypage_basic.css">
<link rel="icon" type="image/png" href="images/icons/favicon.png" />
<style>
input {
	height: 25px !important;
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
				<h2>ADDRESS MODIFY</h2>
			</div>

			<div class="xans-element- xans-layout xans-layout-logincheck ">
				<!--
			    $url = /member/login.html
			-->
			</div>
			
			<form id="frmAddr" name="" action="/exec/front/Myshop/Addr/?mode=Update&amp;ma_idx=843124&amp;return_url=%2Fmyshop%2Faddr%2Flist.html" method="post" target="_self" enctype="multipart/form-data">
<input id="__address_addr1" name="__address_addr1" value="" type="hidden">
<input id="__city_name" name="__city_name" value="" type="hidden">
<input id="__state_name" name="__state_name" value="" type="hidden">
<input id="__use_foreign_country_list" name="__use_foreign_country_list" value="F" type="hidden">
<input id="__ma_rcv_contry_code" name="__ma_rcv_contry_code" value="ABW" type="hidden">
<input id="__country" name="__country" value="" type="hidden">
<input id="__province" name="__province" value="" type="hidden">
<input id="__city" name="__city" value="" type="hidden">
<input id="__district" name="__district" value="" type="hidden">
<input id="is_display_phone" name="is_display_phone" value="" type="hidden">
<input id="is_display_mobile" name="is_display_mobile" value="T" type="hidden">
<input id="sUseCountryNumberFlag" name="sUseCountryNumberFlag" value="T" type="hidden"><div class="xans-element- xans-myshop xans-myshop-addrmodify "><!--
        $return_url = /myshop/addr/list.html
    -->
<div class="ec-base-table typeWrite">
        <table border="1" summary="">
<caption>배송 주소록 입력</caption>
            <colgroup>
<col style="width:120px">
<col style="width:auto">
</colgroup>
<tbody style="font-size:13px;">
<tr>
<th scope="row">배송지명 <img src="/ot/images/req_check.png" alt="필수"></th>
                    <td><input id="ma_rcv_title" name="ma_rcv_title" fw-filter="isFill&amp;isMaxByte[90]" fw-label="배송지명" fw-msg="" class="inputTypeText" placeholder="" value="미지정" type="text"></td>
                </tr>
<tr>
<th scope="row">성명 <img src="/ot/images/req_check.png" alt="필수"></th>
                    <td><input id="ma_rcv_name" name="ma_rcv_name" fw-filter="isFill&amp;isMaxByte[90]" fw-label="성명" fw-msg="" class="ec-member-name" placeholder="" value="홍길동" type="text"></td>
                </tr>
<tr>
<th scope="row">주소 <img src="/ot/images/req_check.png" alt="필수"></th>
                    <td>
                        <input id="address_zip1" name="address_zip1" fw-filter="isMin[3]&amp;isMax[8]" fw-label="우편번호" fw-msg="" class="inputTypeText" placeholder="" readonly="readonly" maxlength="14" value="12345" type="text">                        
                        <a href="#none" onclick="addrSearch();" id="SearchAddress" class="yg_btn_24 yg_btn5" alt="우편번호">우편번호</a><br>
                        <input id="address_addr1" name="address_addr1" fw-filter="" fw-label="주소" fw-msg="" class="inputTypeText" placeholder="" readonly="readonly" value="서웉특별시 강남구 테헤란로" type="text"> 기본주소<br>
                        <input id="address_addr2" name="address_addr2" fw-filter="isFill" fw-label="주소" fw-msg="" class="inputTypeText" placeholder="" value="KH정보교육원 H클래스" type="text"> 나머지주소<span class="displaynone">(선택입력가능)</span>
                    </td>
                </tr>
<tr>
<th scope="row">일반전화 <span class="displaynone"><img src="/ot/images/req_check.png" alt="필수"></span>
</th>
                    <td><select id="ma_rcv_phone1" name="ma_rcv_phone[]" fw-filter="isNumber" fw-label="유선전화" fw-alone="N" fw-msg="">
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
</select>-<input id="ma_rcv_phone2" name="ma_rcv_phone[]" maxlength="4" fw-filter="isNumber" fw-label="유선전화" fw-alone="N" fw-msg="" value="" type="text">-<input id="ma_rcv_phone3" name="ma_rcv_phone[]" maxlength="4" fw-filter="isNumber" fw-label="유선전화" fw-alone="N" fw-msg="" value="" type="text"></td>
                </tr>
<tr>
<th scope="row">휴대전화 <span class=""><img src="/ot/images/req_check.png" alt="필수"></span>
</th>
                    <td><select id="ma_rcv_mobile_no1" name="ma_rcv_mobile_no[]" fw-filter="isNumber&amp;isFill" fw-label="휴대전화" fw-alone="N" fw-msg="">
<option value="010">010</option>
<option value="011">011</option>
<option value="016">016</option>
<option value="017">017</option>
<option value="018">018</option>
<option value="019">019</option>
</select>-<input id="ma_rcv_mobile_no2" name="ma_rcv_mobile_no[]" maxlength="4" fw-filter="isNumber&amp;isFill" fw-label="휴대전화" fw-alone="N" fw-msg="" value="1234" type="text">-<input id="ma_rcv_mobile_no3" name="ma_rcv_mobile_no[]" maxlength="4" fw-filter="isNumber&amp;isFill" fw-label="휴대전화" fw-alone="N" fw-msg="" value="5678" type="text"></td>
                </tr>
<tr class="right">
<td colspan="2" style="border-left:1px solid #ddd;"><input id="ma_main_flag0" name="ma_main_flag" fw-filter="" fw-label="기본 배송지로 저장" fw-msg="" value="T" type="checkbox"><label for="ma_main_flag0">기본 배송지로 저장</label></td>
                </tr>
</tbody>
</table>
</div>
<div class="ec-base-button">
        <span>
            <a href="#none" class="yg_btn_140 yg_btn5" onclick="myshopAddr.formCheck();" alt="수정">수정</a>
            <a href="list.html" class="yg_btn_140 yg_btn3" alt="취소">취소</a>
        </span>
    </div>
</div>
</form>
			<div class="ec-base-help">
    <h3>배송주소록 유의사항</h3>
    <div class="inner">
        <ol style="font-size:13px;"><li class="item1">배송 주소록은 최대 10개까지 등록할 수 있으며, 별도로 등록하지 않을 경우 최근 배송 주소록 기준으로 자동 업데이트 됩니다.</li>
            <li class="item2">자동 업데이트를 원하지 않을 경우 주소록 고정 선택을 선택하시면 선택된 주소록은 업데이트 대상에서 제외됩니다.</li>
            <li class="item3">기본 배송지는 1개만 저장됩니다. 다른 배송지를 기본 배송지로 설정하시면 기본 배송지가 변경됩니다.</li>
        </ol></div>
</div>
			

		</div>
	</div>
	<%@include file="footer.jsp"%>
<script>
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
					$('#address_zip1').val(data.zonecode); //5자리 새우편번호 사용

					$('#address_addr1').val(fullAddr);

					// 커서를 상세주소 필드로 이동한다.
					$('#address_addr2').val('');
					$('#address_addr2').focus();
				}
			}).open();
		};
		</script>

</body>
</html>