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
a {
	font-size: 13px !important;
}
</style>
</head>
<body style="font-size :13px;">
<%@include file="header.jsp"%>
	<div id="container">
		<div id="contents">

			<div
				class="xans-element- xans-board xans-board-modifypackage-4 xans-board-modifypackage xans-board-4 ">
				<div
					class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 ">
					<div class="title">
						<h2>
							<font color="333333">상품문의</font>
						</h2>
						<!--h3>상품문의 게시판입니다.</h3-->
					</div>
				</div>
				<form id="boardWriteForm" name=""
					action="/exec/front/Board/modify/6" method="post" target="_self"
					enctype="multipart/form-data">
					<input id="board_no" name="board_no" value="6" type="hidden">
					<input id="product_no" name="product_no" value="0" type="hidden">
					<input id="move_write_after" name="move_write_after"
						value="http://black-up.kr/board/product/read.html?no=818716&amp;board_no=6"
						type="hidden"> <input id="cate_no" name="cate_no" value=""
						type="hidden"> <input id="bUsePassword"
						name="bUsePassword" value="1" type="hidden"> <input
						id="order_id" name="order_id" value="" type="hidden"> <input
						id="is_post_checked" name="is_post_checked" value="" type="hidden">
					<input id="cef677" name="cef677"
						value="56e063a5767815b1ff2f9f9625c54659" type="hidden"> <input
						id="member_id" name="member_id" value="kss0324" type="hidden">
					<input id="no" name="no" value="818716" type="hidden"> <input
						id="board_act" name="board_act" value="edit" type="hidden">
					<input id="fix_title_form_0" name="fix_title_form_0" value="[상품문의]"
						type="hidden"> <input id="bulletin_type"
						name="bulletin_type" value="title" type="hidden">
					<div
						class="xans-element- xans-board xans-board-modify-4 xans-board-modify xans-board-4">
						<!--
            $write_success_url = /board/product/list.html
            $product_select_url = /product/search_board_list.html
            $order_select_url = /order/search_board_list.html
         -->
						<!-- 상품정보선택 -->
						
						<div class="ec-base-table typeWrite " style="border-right: none;">
							<table border="1" summary="">
								<caption>글 수정 폼</caption>
								<colgroup>
									<col style="width: 150px;">
									<col style="width: auto;">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">SUBJECT</th>
										<td><select id="subject" name="subject"
											fw-filter="isFill" fw-label="제목" fw-msg="">
												<option value="[상품문의]" selected="selected">[상품문의]</option>
										</select></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">WRITER</th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">EMAIL</th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">POINT</th>
										<td></td>
									</tr>
									<tr>
										<td colspan="2" class="clear"><script
												type="text/javascript"
												src="//editor.cafe24.com/js/nneditor.js?c=ko"></script>
											<style type="text/css">
@import "http://editor.cafe24.com/css/style.css?ver=r3.4.0.20191127.1";

@import
	"http://editor.cafe24.com/css/styleie8.css?ver=r3.4.0.20191127.1";
</style> <script type="text/javascript"
												src="http://editor.cafe24.com/lang/ko.js?version=r3.4.0.20191127.1"
												charset="UTF-8"></script>
											<script type="text/javascript"
												src="http://editor.cafe24.com/js/nneditorUtils.dev.js?version=r3.4.0.20191127.1"
												charset="UTF-8"></script>
											<script type="text/javascript"
												src="http://editor.cafe24.com/js/nneditorRange.dev.js?version=r3.4.0.20191127.1"
												charset="UTF-8"></script>
											<script type="text/javascript"
												src="http://editor.cafe24.com/js/nneditorCore.dev.js?version=r3.4.0.20191127.1"
												charset="UTF-8"></script> <script type="text/javascript">
													NN.Config.instanceID = "content";
													NN.Config.value = "▶ 상품 기본 설명은 상품 페이지 하단에 기재되어있습니다. <br />\n사이즈는 잘 맞는 상품의 상세사이즈와 저희가 올려드린 상세사이즈를 비교 해주시는게 좋습니다.<br />\n<br />\n야외촬영or스태프촬영의경우 야외촬영이나 조명에 따라 약간씩 컬러가 다를 수 있어서 디테일컷으로 보시는게 가장 정확 합니다. (해상도에 따라 약간씩 차이 날 수 있습니다.)<br />\n<br />\n* 배송전 교환/취소시 [배송전 부분취소/변경] 제목선택을 안해주시면 상품교환/주문취소는 당일 처리되지 않습니다 *<br />\n<br />\n비회원으로 문의주실 경우엔 동명이인으로 인해 주문정보와 함께 남겨주셔야 바로 처리 가능합니다.<br />\n<br />\n----------------------------------------------------------------------<br />			<div><br></div><div>dfsdfdsf</div>";
													NN.Config.toolbarType = "simple";

													//Editor Height
													NN.Config.height = 400;

													var oNN_content = new NNEditor();
													oNN_content.build();

													if (typeof $Editor != "object") {
														$Editor = {
															_obj : {},

															push : function(
																	obj, id) {
																this._obj[id] = obj;
															},

															get : function(id) {
																return this._obj[id];
															},

															reset : function(id) {
																this._obj[id]
																		.getText().value = "";
																this._obj[id]
																		.getIFDoc().body.innerHTML = this._obj[id].Config.START_HTML;
															},

															contents : function(
																	id, context) {
																this._obj[id]
																		.getText().value = context;
																this._obj[id]
																		.getIFDoc().body.innerHTML = this._obj[id].view
																		.parsing(2);
															}
														};
													}

													$Editor.push(oNN_content,
															"content");
												</script>
											 <input type="hidden" id="content_hidden"
											fw-filter="isSimplexEditorFill" fw-label="내용"
											value="oNN_content"></td>
									</tr>
									<tr class="ucc">
										<th scope="row">UCC URL</th>
										<td><input id="ucc" name="ucc" size="35" fw-filter=""
											fw-label="UCC URL" value="" type="text"></td>
									</tr>
								</tbody>
								<tbody class="">
									<tr>
										<th scope="row">FILE 01</th>
										<td><input name="attach_file[]" type="file"></td>
									</tr>
									<tr>
										<th scope="row">FILE 02</th>
										<td><input name="attach_file[]" type="file"></td>
									</tr>
									<tr>
										<th scope="row">FILE 03</th>
										<td><input name="attach_file[]" type="file"></td>
									</tr>
									<tr>
										<th scope="row">FILE 04</th>
										<td><input name="attach_file[]" type="file"></td>
									</tr>
									<tr>
										<th scope="row">FILE 05</th>
										<td><input name="attach_file[]" type="file"></td>
									</tr>
								</tbody>
								<tbody>
									<tr class="displaynone">
										<th scope="row">PASSWORD</th>
										<td><input id="password" name="password" fw-filter=""
											fw-label="비밀번호" fw-msg="" value="" type="password"></td>
									</tr>
									<tr class="">
										<th scope="row">SECRET</th>
										<td><input id="secure0" name="secure" fw-filter="isFill"
											fw-label="비밀글설정" fw-msg="" value="F" type="radio" disabled=""><label
											for="secure0">공개글</label> <input id="secure1" name="secure"
											fw-filter="isFill" fw-label="비밀글설정" fw-msg="" value="T"
											type="radio" checked="checked"><label for="secure1">비밀글</label></td>
									</tr>
									<tr class="captcha displaynone">
										<th scope="row">자동등록방지<br>보안문자
										</th>
										<td>
											<p class="gBlank5">
												<span class="ec-base-help txtInfo">영문, 숫자 조합을 공백없이
													입력하세요(대소문자구분)</span>
											</p>
										</td>
									</tr>
									<tr class="agree displaynone">
										<th scope="row">개인정보 수집 및 <br>이용 동의
										</th>
										<td><br> 개인정보 수집 및 이용에 동의하십니까?</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="ec-base-button ">
							<span class="gLeft"><a href="/board/상품문의/6/"
								class="yg_btn_30 yg_btn4" alt="목록">LIST</a></span> <span class="gRight">
								<a href="#none"
								onclick="BOARD_WRITE.form_submit('boardWriteForm');"
								class="yg_btn_30 yg_btn4" alt="수정">MODIFY</a> <a
								href="/board/상품문의/6/" class="yg_btn_30 yg_btn4" alt="취소">CANCEL</a>
							</span>
						</div>
					</div>
				</form>
			</div>

		</div>
		<hr class="layout">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>