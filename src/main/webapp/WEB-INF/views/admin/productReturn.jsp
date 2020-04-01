<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icon/favicon.png"/>
   
    <!-- Title Page-->
    <title>oT. ADMIN</title>

    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/theme.css" rel="stylesheet" media="all">
    
  
</head>
<style>
.top_info{
	display: flex;
	 margin-bottom: 3%;

}
.bottom_info{
	display: flex;
}
.member_info{
	width: 50%;
		border-style: outset;
	    padding: 2%;
	    background: white;
	
}
.product_info{
	width: 50%;
	border-style: outset;
	  padding: 2%;
	 background: white;
	 
}
#pay-table th{
	width: 215px;
	
}
#product-table,#member-table,#pay-table{
	width: 100%;


}


.menu-sidebar {
   
     overflow-y: none;
}
th,td{
    padding: 13px 11px 12px !important;
       border:1px solid #d9dadc;
          font-weight:normal;
}
th{
      width: 135px;
      border:1px solid #d9dadc;
   
background-color:#f5f4f4;

}
td{
    color: black;
   
}
.info-title{
margin-bottom:3%;
    border-bottom: 1px solid;
    padding-bottom: 1%;
}

span{
color: red;
}
#pay-calcel{
	margin-left: 3%;
	background: black;
	color: white;
	width: 65px;
	height: 20px;
	border-radius: 10px
}
.yg_btn_30{
    background: #f4f4f4;
    color: #444!important;
    border-color: #ddd!important;
}

</style>
<body class="animsition" style="background: #f3f3f3;">
	
	
      <%@ include file="a_header.jsp" %>
     <!-- MENU SIDEBAR-->
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="todaymain.jsp">
                    <img src="images/icon/ot.png" alt="OT" style="max-height: 35px;"/>
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                        <li class="has-sub"> 
                            <!-- active has-sub 파란색 -->
                            <a class="js-arrow" href="#">
                                <i class="fa fa-bar-chart-o"></i>통계</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="todaymain.jsp">당일현황</a>
                                </li>
                                <li>
                                    <a href="todaychart.jsp">매출그래프</a>
                                </li>
                                <li>
                                    <a href="best.jsp">상품판매순위</a>
                                </li>
                            </ul>
                        </li>
                        
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fa fa-truck"></i>회원 &nbsp;/&nbsp;주문</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="customer.jsp">회원 관리</a>
                                </li>
                                <li>
                                    <a href="order.jsp">주문 관리</a>
                                </li>
                            </ul>
                        </li>
                        
                        
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fa fa-shopping-cart"></i>상품관리</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                            	<li>
                                    <a href="category.jsp">카테고리관리</a>
                                </li>
                                <li>
                                    <a href="productAdd.jsp">상품등록</a>
                                </li>
                                <li>
                                    <a href="productList.jsp">상품관리</a>
                                </li>
                            </ul>
                        </li>
                        
                        <li class="active has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fa fa-bullhorn"></i>이벤트&nbsp;/&nbsp;쿠폰</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="eventAdd.jsp">이벤트/쿠폰 등록</a>
                                </li>
                                <li>
                                    <a href="eventList.jsp">이벤트/쿠폰 관리</a>
                                </li>
                            </ul>
                        </li>
                        
                        
                                <li>
                                    <a class="js-arrow" href="productReturnList.jsp">
                                <i class="fa fa-credit-card"></i>교환 &nbsp;/&nbsp;반품</a>
                                </li>
                 		<li>
                           <a href="DesignEdit.jsp">
                               <i class="fa fa-desktop"></i>디자인</a>
                       </li>
                         <li class="active has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fa fa-shopping-cart"></i>Q & A</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                            	<li>
                                    <a href="">상품문의</a>
                                </li>
                                <li>
                                    <a href="productAdd.jsp">배송전 문의</a>
                                </li>
                                 <li>
                                    <a href="productList.jsp">입금확인/입급자 변경 문의</a>
                                </li>
                                 <li>
                                    <a href="productList.jsp">상품불량 및 오배송 문의</a>
                                </li>
                            </ul>
                        </li>
                        
                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->
        
        
      <!-- WELCOME-->
   <div style="padding-left:300px; padding-right: 15px;background: #f3f3f3; padding-top:1%">
   <h2 style="margin-left: 3%;">교환/반품관리</h2>
  	<div class="top_info">
  	<div class="member_info" style="margin-left: 3%">
  	<h4 class="info-title">회원정보</h4> 
  	<table id="member-table">
  		<tr>
  			<th><span>*</span> 주문자 </th>
  			<td>문태환</td>
  	    </tr>
  	    <tr>
  			<th><span>*</span> 주문자 번호</th>
  			<td>010-0101-0101</td>
  	    </tr>
  		<tr>
  			<th><span>*</span> 고객 아이디</th>
  			<td>moon77</td>
  		</tr>
  		<tr>
  			<th><span>*</span> 고객 이메일</th>
  			<td>moon77@kakao.com</td>
  		</tr>
  		<tr>
  			<th><span>*</span> 주문번호  </th>
  			<td>12121212  </td>
  		</tr>	
  		<tr>
  			<th><span>*</span> 배송지 </th>
 			<td>성남시 수정구 태평동 5380 501호</td>
  		</tr>
  	</table>
  	</div>
  	<div class="member_info" style="    margin-left: 1.5%;">
  	<h4 class="info-title">문의내용</h4> 
  <div id="contents" style="margin-top:.5%; background: white;padding: 3%;    border-style: outset;">
      
			<div class="mypage_top_outer">
			</div>


			<div class="xans-element- xans-layout xans-layout-logincheck ">
			<!--
			    $url = /member/login.html
			-->
			</div>
			
			<div class="xans-element- xans-board xans-board-writepackage-1002 xans-board-writepackage xans-board-1002 "><div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 "><div class="title">
      
        </div>
</div>
<form id="boardWriteForm" name="" action="/exec/front/Board/write/3001" method="post" target="_self" enctype="multipart/form-data">
		<input id="board_no" name="board_no" value="3001" type="hidden">
		<input id="product_no" name="product_no" value="0" type="hidden">
		<input id="move_write_after" name="move_write_after" type="hidden">
		<input id="cate_no" name="cate_no" value="" type="hidden">
		<input id="bUsePassword" name="bUsePassword" value="" type="hidden">
		<input id="order_id" name="order_id" value="" type="hidden">
		<input id="is_post_checked" name="is_post_checked" value="" type="hidden">
		<input id="22a52e1f2ba700edbc6c" name="22a52e1f2ba700edbc6c" value="be72b6700c2bb10ea29aac31702af80d" type="hidden">
		<input id="fix_title_form_0" name="fix_title_form_0" value="[배송문의]" type="hidden">
		<input id="bulletin_type" name="bulletin_type" value="title" type="hidden">
		<input id="fix_content_0" name="fix_content_0" value="▶ 배송전 상품교환/주문취소/배송지변경/추가주문 문의시 [배송전 주문취소/변경] 게시판 또는 고객센터(1566-6813)로 오전 11시까지 꼭 요청 해주셔야합니다.<br/>
		<br />
		당일 주문건은 재고가 있을 시 당일 배송처리 되고 보통 다음날부터 입고가 되기 때문에 바로 안내가 어렵습니다.<br />
		<br />
		* 배송전 교환/취소시 [배송전 부분취소/변경] 제목선택을 안해주시면 상품교환/주문취소는 당일 처리되지 않습니다 *<br />
		<br />
		비회원으로 문의주실 경우엔 동명이인으로 인해 주문정보와 함께 남겨주셔야 바로 처리 가능합니다.<br />
		<br />
----------------------------------------------------------------------" type="hidden">
	<input id="fix_add_content" name="fix_add_content" value="" type="hidden">
	<div class="xans-element- xans-board xans-board-write-1002 xans-board-write xans-board-1002">
		<!--
            $login_page_url = /member/login.html
            $deny_access_url = /index.html
        -->
	<div class="ec-base-table typeWrite ">
            <table border="1" summary="">
            <colgroup>
				<col style="width:150px;">
				<col style="width:auto;">
			</colgroup>
		<tbody>
		<tr>
		<th scope="row">문의날짜</th>
           <td><span>2020-02-02</span>	
		   </td>
    </tr>
		<tr>
		<th scope="row">문의고객</th>
           <td><span>문태환</span>
		   </td>
    </tr>
	<tr>
		<th scope="row">SUBJECT</th>
           <td><span>배송좀 해주세요</span>
		   </td>
    </tr>
    
    
	<td colspan="2" class="clear">           
            <script type="text/javascript" src="//editor.cafe24.com/js/nneditor.js?c=ko"></script>
            <style type="text/css">@import "http://editor.cafe24.com/css/style.css?ver=r3.4.0.20191127.1";@import "http://editor.cafe24.com/css/styleie8.css?ver=r3.4.0.20191127.1";		</style>		<script type="text/javascript" src="http://editor.cafe24.com/lang/ko.js?version=r3.4.0.20191127.1" charset="UTF-8"></script><script type="text/javascript" src="http://editor.cafe24.com/js/nneditorUtils.dev.js?version=r3.4.0.20191127.1" charset="UTF-8"></script><script type="text/javascript" src="http://editor.cafe24.com/js/nneditorRange.dev.js?version=r3.4.0.20191127.1" charset="UTF-8"></script><script type="text/javascript" src="http://editor.cafe24.com/js/nneditorCore.dev.js?version=r3.4.0.20191127.1" charset="UTF-8"></script>
            <script type="text/javascript">
            NN.Config.instanceID = "content";
            NN.Config.value = "▶ 교환/반품/불량건교환 상품명을 기재해주셔야 더 정확한 안내 해드릴 수 있습니다.<br />\n<br />\n 배송 후 교환 / 반품 글 남겨주시면 기사님 방문 회수신청 자동으로 처리됩니다.<br />\n(기사님 방문시 경비실이나 전화 연락후 방문 해달라는 메모 등 배송메세지 같이 기재해주시면 메모해서 처리 해드립니다.)<br />\n 타 택배사 이용하실경우 미리 말씀해주셔야 방문 회수신청처리 안해드립니다.<br />\n<br />\n* 배송전 교환/취소시 [배송전 부분취소/변경] 제목선택을 안해주시면 상품교환/주문취소는 당일 처리되지 않습니다 *<br />\n<br />\n비회원으로 문의주실 경우엔 동명이인으로 인해 주문정보와 함께 남겨주셔야 바로 처리 가능합니다.<br />\n<br />\n----------------------------------------------------------------------<br>";
            NN.Config.toolbarType = "simple";
                
                
                

                //Editor Height
                NN.Config.height=400;

                var oNN_content = new NNEditor();
                oNN_content.build();

                if (typeof $Editor != "object") {
                    $Editor = {
                        _obj : {},

                        push : function(obj, id) {
                            this._obj[id] = obj;
                        },

                        get : function(id) {
                            return this._obj[id];
                        },

                        reset : function(id) {
                            this._obj[id].getText().value = "";
                            this._obj[id].getIFDoc().body.innerHTML = this._obj[id].Config.START_HTML;
                        },

                        contents : function(id, context) {
                            this._obj[id].getText().value = context;
                            this._obj[id].getIFDoc().body.innerHTML = this._obj[id].view.parsing(2);
                        }
                    };
                }

                $Editor.push(oNN_content, "content");
            </script>	
            	
		
	</tbody>
	
		
	<tbody>

	</table>
</div>
		<div class="ec-base-button ">
        </div>
	</div>
</form>
</div>
</div>
  	</div>	
  	</div>
    	<div class="bottom_info">
  		<div class="product_info" style="margin-left: 3%">
  		<h4 class="info-title">상품정보</h4>
  		<table id="product-table">
  			<tr>
  				<th><span>*</span> 주문번호 </th>
  				<td>23239239a</td>
  			</tr>
  			<tr>
  				<th><span>*</span> 상품번호 </th>
  				<td>1232932</td>
  			</tr>
  			<tr>
  				<th><span>*</span> 구매상품명 </th>
  				<td>짱이뿐 옷</td>
  			</tr>
  			<tr>
  				<th><span>*</span> 구매상품옵션 </th>
  				<td>사이즈 : XXL / 색상 : 검정</td>
  			</tr>
  			<tr>
  				<th><span>*</span> 반품/교환사유 </th>
  				<td>불량</td>
  			</tr>
  			<tr>
  				<th><span>*</span> 제품수령여부 </th>
  				<td>
  				<label for="Y" style="margin-right: 2%">수령</label><input style="margin-right: 2%;" type="radio" class="product-check" name="product-check" id="Y"value="Y">
  				<label for="N" style="margin-right: 2%">미수령</label><input type="radio" name="product-check" class="product-check" id="N"value="N">
  				</td>
  			</tr>
  			<tr>
  				<th><span>*</span> 실제품상태 </th>
  				<td>
  				<select >
  					<option value="정상">정상</option>
  					<option value="손상">손상</option>
  					<option value="오염">오염</option>
  					<option value="불량">불량</option>
  				</select>
  				<button style="margin-left:10px;background: black;color: white; border-radius: 10px;width: 90px;height: 30px;">검수등록</button>
  				</td>
  			</tr>
  			
  		</table>
  		</div>
  	<div class="product_info" style="    margin-left: 1.5%;">
  	<h4 class="info-title">결제내용</h4>
  	<table id="pay-table">
  		<tr>
  			<th><span>*</span> 상품금액 </th>
  			<td>30,000원</td>
  		</tr>
  		<tr>
  			<th><span>*</span> 쿠폰/적립금 </th>
  			<td> 3000원</td>
  		</tr>
  		<tr>
  			<th><span>*</span> 실구매가(반환금액)</th>
  			<td>27,000원
  				<button id="pay-calcel">결제취소</button>
  				
  			</td>
  		</tr>
  		<tr>
  			<th><span>*</span> 결제일  </th>
  			<td>2020-03-16</td>
  		</tr>
  		 
  		<tr>
  			<th><span>*</span> 반품 신청일  </th>
  			<td>2020-03-20</td>
  		</tr>
  		<tr>
  			<th><span>*</span> 결제 방법  </th>
  			<td>카드 </td>
  		</tr>
  		<tr>
  			<th><span>*</span> 반품 승인/반려 메모</th>
  			<td><input type="text" style="border: 1px solid;margin-right: 10px"><button style="background: black;color: white; border-radius: 10px;width: 90px;height: 30px;">메모저장</button></td>
  		</tr>
  	</table>
  	</div>
  		</div>
  	<div align="right" style="margin-top: 5%;margin-bottom: 5%;margin-right: 5%;">
  	<button id="return-ok" style="background: black;color: white; border-radius: 10px;width:90px;height: 30px;margin-right: 2%;">승인</button>
  	<button style="background: black;color: white; border-radius: 10px;width:90px;height: 30px;">반려</button>
  	</div>	
	
    <!-- Jquery JS-->
    <!-- Bootstrap JS-->
    <script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS -->
    <script src="vendor/slick/slick.min.js">
    </script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="vendor/animsition/animsition.min.js"></script>
    <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="vendor/circle-progress/circle-progress.min.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="js/main.js"></script>
    </div>
    
   <div class="page-wrapper">
</div>
<script>
$('#return-ok').click(function(){
	
	if($('#N').prop('checked')==true){
		alert('상품 미수령시 반품승인을 할수 없습니다!');
	}else if($('#Y').prop('checked')==true){
		alert('제출');
	}
	else if($('.product-check').prop('checked')==false){
		alert('상품수령 여부를 확인하세요');
	}
});
$('#pay-calcel').click(function(){
	
	confirm('취소 하시겠습니까?')
})

</script>
</body>
</html>