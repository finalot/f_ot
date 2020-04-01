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
    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
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

<style>
#product_okay{
    border-radius: 10px; 
    background-color: skyblue; 
    margin-left: 73%;
    width: 10%;
    height: 30%;
}
#addlist{
    margin-top: 5%;
    margin-bottom: 3%;
    padding-left: 4%;
    width: 90%;
    margin-left: 5%;
    margin-right: 5%;

}




#addlist input{
    border: 1px solid #333330;
    padding-left: 2%;
}
#addlist [input="type==radio"]{

margin-right: 5%;
}
label{
    display: inline;
    font-weight: bold;
   
}
#coupon_div{
    display: none; position: absolute;
     top: 442px;
     left: 857px;
     background: white;
     height: 800px;
	width: 750px;
      border: 1px solid;

}
#coupon_input{
   background: black;
    color: white;
    height: 35px; 
    width: 90px;
    border-radius: 10px;

}
td{
    padding: 13px 11px 12px !important;
       border:1px solid #d9dadc;
          font-weight:normal;
          height: 100px
}
.first{
      width: 135px;
      border:1px solid #d9dadc;
background-color:#f5f4f4 !important;

}
#coupon-table td{
	border: none;
}
#coupon-plus{
margin-top: 1%;
    margin-left: 3%;
    font-size: 50px;
}

</style>

</head>
<body class="animsition" style="background: rgb(243, 243, 243);">

   
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
                         <li class="has-sub">
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
     
     
     <!-- 이벤트 내용 -->
     
     <!-- WELCOME-->
     <div style="padding-left:300px;">
     <section class="welcome p-t-10">
        <div class="container" style="margin-left: 6%">
            <div class="row">
                <div class="col-md-12" >
                    <h1 class="title-4"> 
                     &nbsp; &nbsp; &nbsp; 쿠폰&nbsp;/&nbsp;이벤트 등록
                    </h1>
                    <hr class="line-seprate">
                </div>
            </div>
        </div>
    </section>
    <!-- END WELCOME-->
    
    <table id="addlist" style="border: 1px dotted; background: white;">
        <tr>
        <td colspan="2" style="background:#dfe3e6;; margin-bottom: 2%;padding-bottom: 2%;"><h3 style="color: black;;margin-left: 5%;"> 이벤트 상세내용</h3></td>
        </tr>
        <tr>
            <td class="first"><span style="color: red">*</span> 이벤트 명</td>
            <td class="second"><input type="text" name="subject" id="subject"><button id="coupon_open" style="margin-left: 41%;background: black;color: white;height: 40px; width: 90px;border-radius: 10px;">쿠폰등록</button>
                <div id="coupon_div">
                 
                    <div align="right" style="background: black;"><button id="coupon_close" style="color: white;margin-right: 1%;">X</button></div>
                  <div style="border-bottom: 1px solid; display: flex; margin-left: 2%;margin-right: 2%;">
                	<p style="margin-left: 4%;margin-top: 4%;font-size: 25px;font-weight: bold;">쿠폰</p><button id="coupon-plus"> + </button>   
                </div>
                <div align="center" style="height: 70%;width: 96%;overflow: auto;">
				<table  id="coupon-table" style="margin-top: 3%;font-size: 20px;overflow: scroll;">
					<thead>
						<tr style="background: black;color: white;">
							<th style="padding-left: 100px;border-right: 1px solid;">쿠폰명</th>
							<th style="padding-left: 105px;">쿠폰가격</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input class="coupon_name" type="text"></td>
							<td><input class="coupon_price" type="text"></td>
							<td><button>X</button></td>
						</tr>
						<tr>
							<td><input class="coupon_name" type="text"></td>
							<td><input class="coupon_price" type="text"></td>
							<td><button>X</button></td>
						</tr>
						<tr>
							<td><input class="coupon_name" type="text"></td>
							<td><input class="coupon_price" type="text"></td>
							<td><button>X</button></td>
						</tr>
						<tr>
							<td><input class="coupon_name" type="text"></td>
							<td><input class="coupon_price" type="text"></td>
							<td><button>X</button></td>
						</tr>
						<tr>
							<td><input class="coupon_name" type="text"></td>
							<td><input class="coupon_price" type="text"></td>
							<td><button>X</button></td>
						</tr>
						<tr>
							<td><input class="coupon_name" type="text"></td>
							<td><input class="coupon_price" type="text"></td>
							<td><button>X</button></td>
						</tr>
						<tr>
							<td><input class="coupon_name" type="text"></td>
							<td><input class="coupon_price" type="text"></td>
							<td><button>X</button></td>
						</tr>
						<tr>
							<td><input class="coupon_name" type="text"></td>
							<td><input class="coupon_price" type="text"></td>
							<td><button>X</button></td>
						</tr>
						<tr>
							<td><input class="coupon_name" type="text"></td>
							<td><input class="coupon_price" type="text"></td>
							<td><button>X</button></td>
						</tr>
					</tbody>
				</table>
				
				</div> 
				
				 <div align="center"><button id="coupon_input">쿠폰등록</button></div>
               </div>
                     <br>
                   
                </div>
            </td>
        
        </tr>
        
        <tr>
            <td class="first"><span style="color: red">*</span> 기 간</td>
            <td class="second"><input type=date name="startday" id="startday"> ~ 
                                <input type=date name="endday" id="endday">
                <label for="d-day30" style="margin-left: 3%;" >30일</label> <input style="margin-right: 5%;margin-left: 1%;" type="radio" name="d-day" class="d-day" id="d-day30"value="30">
               <label for="d-day60"  >60일 </label><input style="margin-right: 5%;margin-left: 1%;" type="radio" name="d-day" class="d-day" id="d-day60" value="60">
               <label for="d-day90" >90일 </label><input style="margin-right: 5%;margin-left: 1%;" type="radio" name="d-day" class="d-day" id="d-day90" value="90">
            </td>
        </tr>
        <tr>
            <td class="first"><span style="color: red">*</span> 사은품 종류</td>
            <td class="second">
              
               <label for="product" >상품</label> <input style="margin-right: 5%;margin-left: 1%;" type="radio" name="category" class="category" id="product"value="사은품">
               <label for="money"  >적립금 </label><input style="margin-right: 5%;margin-left: 1%;" type="radio" name="category" class="category" id="money" value="적립금">
               <label for="coupon" >쿠폰 </label><input style="margin-right: 5%;margin-left: 1%;" type="radio" name="category" class="category" id="coupon" value="쿠폰">
               							
            </td>
        </tr>
        <tr>
            <td class="first"><span style="color: red">*</span> 사은품</td>
            <td class="second">
               <label >상품</label> : <input style="margin-right: 5%; background: rgba(190, 181, 181, 0.24);" type="text" id="d_product" readonly>
               <label >적립금</label> : <input style="margin-right: 5%;  background: rgba(190, 181, 181, 0.24);" type="number"  id="d_money" min="1000" step="1000" readonly>
               <label >쿠폰</label> : <select name="coupon" style=" background: rgba(190, 181, 181, 0.24);" disabled id="d_coupon">            
                                        <option value=''>---------</option>
                                        <option value="daily">daily</option>
                                        <option value="joinmember">joinmember</option>
                                        <option value="buy50000">buy50000</option>
                                      </select> <span id="coupon-price" style="padding-left: 10px; color: darkred;"></span>
                                      
            </td>
        </tr>  
              <tr>
            <td class="first"><span style="color: red">*</span> 이벤트 내용</td>
            <td class="second"><textarea style="height: 195px;width: 600px; resize: none; border : 1px solid" ></textarea></td>
        </tr>
        <tr>
            <td class="first"><span style="color: red">*</span> 이미지</td>
            <td class="second"><input type="file" name="startday" id="startday" style="border:0px"> 
            </td>
        </tr>
    </table>

    <div style="height: 130px;">
            <div align="center">
                <button style="background: black;
                color: white;
              
                font-size: 20px;
                padding: 10px;
                height: 65px;
                width: 135px;
                border-radius: 10px;
                ">등록</button>
            </div>
    </div></div>
     <div class="page-wrapper">
    </div>

    <script>
        $('#coupon_open').click(function(){
               $('#coupon_div').css('display','block'); 
        });
        $('#coupon_close').click(function(){
            $('#coupon_div').css('display','none');
        });
        $('#coupon_input').click(function(){
            if($('.coupon_name').val() && $('#coupon_price').val() != ""){
                var coupon_name = $('.coupon_name').val();

                $('#d_coupon').append("<option value="+coupon_name+">"+coupon_name
                                        +"</option>");
                alert('쿠폰등록 완료');
                $('#coupon_div').css('display','none');
                    document.getElementById('.coupon_name').value = "";
                    document.getElementById('.coupon_price').value = "";
            }else{
                
                alert('쿠폰명 또는 쿠폰가격을 입력해 주세요')
            }


        });
    </script>


    <script>
       
        $('.category').click(function(){

        var product = document.getElementById('product');
        var money = document.getElementById('money');
        var coupon = document.getElementById('coupon');
          
        if(product.checked == true){
            $('#d_product').removeAttr('readonly').css('background','white').focus();
        }else if(product.checked == false){
            $('#d_product').css('background','rgba(190, 181, 181, 0.24)').attr("readonly",true).val('');
        }
        if(money.checked == true){
            $('#d_money').removeAttr('readonly').css('background','white').focus();
        }else if(money.checked == false){
            $('#d_money').css('background','rgba(190, 181, 181, 0.24)').attr("readonly",true).val('');
        }
        if(coupon.checked ==true){
            $('#d_coupon').removeAttr('disabled').css('background','white').focus();
        }else{
            $('#d_coupon').css('background','rgba(190, 181, 181, 0.24)').attr("disabled",true).val('');

        }
    });
    </script>
    <script>
        $('.d-day').click(function(){
            var day = parseInt($('input[name="d-day"]:checked').val());

            var startday = document.getElementById('startday').value;
                 startday = startday.split("-");
           var end = new Date((startday[0]),(startday[1]-1),(parseInt(startday[2])+day));
           
           var endday = end.toISOString().substr(0,10);
           
         $('#endday').val(endday);   
            
        });
        $('#d_coupon').click(function(){
        	
	     if($('#d_coupon').val()=='daily'){
    		 $('#coupon-price').html('쿠폰가 : 3,000원');
    	}else{
    		 $('#coupon-price').html('');
    	}
	
        });

    </script>

    <script type="text/javascript">
        function readURL(input) {
        if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
        $('#blah').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
        }
        }
        </script>
        
        
    


    </script>
     <!-- Jquery JS-->
     <script src="vendor/jquery-3.2.1.min.js"></script>
     <!-- Bootstrap JS-->
     <script src="vendor/bootstrap-4.1/popper.min.js"></script>
     <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
     <!-- Vendor JS       -->
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
</body>
</html>