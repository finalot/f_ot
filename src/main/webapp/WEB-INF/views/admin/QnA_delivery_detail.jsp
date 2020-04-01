<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<title>배송전 교환반품</title>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<!--    <link rel="stylesheet" href="./css/Login_style.css"> -->
<link rel="stylesheet" href="../css/mypage_list.css">
<link rel="stylesheet" href="../css/mypage_basic.css">
<link rel="icon" type="image/png" href="../images/icons/favicon.png"/>
</head>
<style>
.ec-base-table td{
  border-top: 1px solid #EEE !important;
  font-size:13px;
}
.ec-base-table.typeList .center td.left {
    padding-left: 3px;
    text-align: left !important;
 }
 .xans-board .ec-base-table tbody th {
    padding: 15px 10px 14px 18px;
    border-right: 0;
    border-left: 0;
    background: 0;
    font-weight: 400;
    color: #666;
     border-top: 1px solid #EEE !important;
    font-size: 13px;
  
    }

 
.thumb{
 text-align: left !important;
	padding-left: 1% !important;
}
.ec-base-table.typeWrite td {
    padding: 0px 0px 0px !important;
}
.ec-base-table.typeWrite{
	border: none;
}
.title-text{
margin-left: 15%;
margin-top: 5%;
font-weight: bold;
}
.yg_btn4{
	height: 30px !important;
    width: 100px !important;
        padding-top: 3%;
}
th,td {
    padding: 13px 11px 12px !important;
       border:1px solid #d9dadc !impotant;
          font-weight:normal !impotant;
}
th{
      width: 135px !impotant;
      border:1px solid #d9dadc !impotant;
   
	background:#f5f4f4 !impotant;

}
</style>
<body style="background: rgb(243, 243, 243)">
 	
	<%@ include file="a_header.jsp" %>

<div style="padding-left:300px;">
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
        
			
    <div id="container">
   				 <div class=title-text>
    			<h2 style="font-weight: bold;">배송전 교환반품</h2>
    			</div>
        <div id="contents" style="margin-top:.5%; background: white;padding: 3%;    border-style: outset;">
      	<h3 style="font-weight: bold; border-bottom: 1px solid">문의내용</h3>
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
		<caption>글쓰기 폼</caption>
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
    <tr>
    
	<td colspan="2" class="clear">           
                    <script type="text/javascript" src="//editor.cafe24.com/js/nneditor.js?c=ko"></script>
            <style type="text/css">@import "http://editor.cafe24.com/css/style.css?ver=r3.4.0.20191127.1";@import "http://editor.cafe24.com/css/styleie8.css?ver=r3.4.0.20191127.1";		</style>		<script type="text/javascript" src="http://editor.cafe24.com/lang/ko.js?version=r3.4.0.20191127.1" charset="UTF-8"></script><script type="text/javascript" src="http://editor.cafe24.com/js/nneditorUtils.dev.js?version=r3.4.0.20191127.1" charset="UTF-8"></script><script type="text/javascript" src="http://editor.cafe24.com/js/nneditorRange.dev.js?version=r3.4.0.20191127.1" charset="UTF-8"></script><script type="text/javascript" src="http://editor.cafe24.com/js/nneditorCore.dev.js?version=r3.4.0.20191127.1" charset="UTF-8"></script>
              <script src="./assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="./assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <script src="./assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <script src="./assets/vendor/multi-select/js/jquery.multi-select.js"></script>
    <script src="./assets/libs/js/main-js.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="./assets/vendor/datatables/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
    <script src="./assets/vendor/datatables/js/buttons.bootstrap4.min.js"></script>
    <script src="./assets/vendor/datatables/js/data-table.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script>
    <script src="https://cdn.datatables.net/rowgroup/1.0.4/js/dataTables.rowGroup.min.js"></script>
    <script src="https://cdn.datatables.net/select/1.2.7/js/dataTables.select.min.js"></script>
    <script src="https://cdn.datatables.net/fixedheader/3.1.5/js/dataTables.fixedHeader.min.js"></script>
  
  <!--   <!-- Bootstrap JS-->
    <script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    Vendor JS      
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
    <script src="vendor/select2/select2.min.js"></script> -->
      <script src="js/main.js"></script>
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
            <span class="gLeft">
                <span class="displaynone"><a href="#none" onclick="" class="yg_btn_30 yg_btn4" alt="관리자답변보기">관리자답변보기</a></span>
                <a href="product_change.jsp" class="yg_btn_30 yg_btn4" alt="목록">LIST</a>
            </span>
            <span class="gRight">
                <a href="#none" onclick="BOARD_WRITE.form_submit('boardWriteForm');" class="yg_btn_30 yg_btn4" alt="등록">OK</a>
                <a href="product_change.jsp" class="yg_btn_30 yg_btn4" alt="취소">CANCEL</a>
            </span>
        </div>
	</div>
</form>
</div>
</div>
</div>

</div>
   <div class="page-wrapper">
</div>
</body>
</html>