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
<body class="animsition">
	<div class="page-wrapper">

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
                        
                        
                        <li class="active has-sub">
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
                        
                        <li class="has-sub">
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
        

      <!-- WELCOME-->
      <div style="padding-left:300px">
      <section class="welcome p-t-10">
          <div class="container">
              <div class="row">
                  <div class="col-md-12">
                      <h1 class="title-4">
                       &nbsp; &nbsp; 카테고리 관리
                      </h1>
                      <hr class="line-seprate">
                  </div>
              </div>
          </div>
       </section>
       <!-- END WELCOME-->
       
       
       <!-- 카테고리관리 내용 -->
       <br><br>
       
       <center>
       <table style="width:90%;">
        <tr>
            <td style="width:50%;">
            	<input class="btn btn-danger" type="button" value="삭제" id="btnRemoveLeft" style="margin-left:35%;"/>
                <input class="btn btn-success" type="button" value="모두 선택" id="getValue"/>
             	<input class="btn btn-success" type="button" value="선택값" id="getSelectedValue"/>
                <br>
                
                <select id="sel" name="sel" style="WIDTH: 50%; HEIGHT: auto; margin-left:30%; margin-top:3%;" 
                			size=20 multiple>
                    <option value="#" >#</option>
                    <option value="PROJECT" >PROJECT</option>
                    <option value="NTNY" >NTNY</option>
                    <option value="MADE" >MADE</option>
                    <option value="TOP" >TOP</option>
                    <option value="OUTER" >OUTER</option>
                    <option value="PANTS" >PANTS</option>
                    <option value="SKIRT" >SKIRT</option>
                    <option value="JEWELRY" >JEWELRY</option>
                    <option value="BAGSHOES" >BAGSHOES</option>
                    <option value="ACC" >ACC</option>
                    <option value="ETC" >ETC.</option>
                    <option value="ETC" >ETC.</option>
                    <option value="ETC" >ETC.</option>
                    <option value="ETC" >ETC.</option>
                    <option value="ETC" >ETC.</option>
                    <option value="ETC" >ETC.</option>
                    <option value="ETC" >ETC.</option>
                    <option value="ETC" >ETC.</option>
                    <option value="ETC" >ETC.</option>
                    <option value="ETC" >ETC.</option>
                    <option value="ETC" >ETC.</option>
                </select>
              
              	<br>
              	
                    
            	<input type="text" id="addOption"  style="margin-left:30%; width:50%;"/>
                <input class="btn btn-primary" type="button" value="추가" id="btnAdd"/>

            </td>
            <td>
            
            	<input class="btn btn-danger" type="button" value="삭제" id="btnRemoveRight" style="margin-left:24%;"/>
                <input class="btn btn-success" type="button" value="모두선택" id="getValue2"/>
                <input class="btn btn-success" type="button" value="선택값" id="getSelectedValue2"/>
                <br>
                
                <select id="sel2" name="sel2" style="WIDTH: 50%; HEIGHT: auto; margin-left:20%; margin-top:3%;" 
                	size="20" multiple>
                	<option value="1" >긴팔</option>
                	<option value="2" >니트</option>
                	<option value="3" >슬리브리스/반팔</option>
                	<option value="4" >크롭</option>
                	<option value="5" >오프숄더</option>
                	<option value="6" >자켓</option>
                	<option value="7" >코트/점퍼</option>
                	<option value="8" >가디건</option>
                	<option value="9" >베스트</option>
                	<option value="10" >슬렉스</option>
                	<option value="11" >데님</option>
                	<option value="12" >부츠컷</option>
                	<option value="13" >와이드</option>
                	<option value="14" >면바지/기타</option>
                	<option value="15" >트레이닝</option>
                	<option value="16" >조거팬츠</option>
                	<option value="17" >숏/반바지</option>
                	<option value="18" >등등</option>
                </select>
                 
                 <br>       
 
                <input type="text" id="addOption2"  style="margin-left:20%; width:50%;"/>
                <input class="btn btn-primary" type="button" value="추가" id="btnAdd2"/>
            </td>
        </tr>
    </table>
    </center>
       
       
       
       
       </div></div>
    <script type="text/javascript">

        $(function(){
            $("#btnRemoveLeft").on("click",function(){
                $('#sel option:selected').each( function() {
                    $(this).remove();
                });
            });
 
            $("#btnRemoveRight").on("click",function(){
                $('#sel2 option:selected').each( function() {
                    $(this).remove();
                });
            });
 
            $("#btnMoveRight").on("click",function(){
                $('#sel option:selected').each( function() {
                    $(this).remove().appendTo('#sel2');
                });
            });
 
            $("#btnMoveLeft").on("click",function(){
                $('#sel2 option:selected').each( function() {
                    $(this).remove().appendTo('#sel');
                });
            });
 
            $("#getValue").on("click",function(){
                var values = "";
                $('#sel option').each( function() {
                    values= values + "/" + $(this).val();
                });
                alert(values);
            });
 
            $("#getValue2").on("click",function(){
                var values = "";
                $('#sel2 option').each( function() {
                    values= values + "/" + $(this).val();
                });
                alert(values);
            });
 
            $("#getSelectedValue").on("click",function(){
                var values = "";
                $('#sel option:selected').each( function() {
                    values= values + "/" + $(this).val();
                });
                alert(values);
            });
 
            $("#getSelectedValue2").on("click",function(){
                var values = "";
                $('#sel2 option:selected').each( function() {
                    values= values + "/" + $(this).val();
                });
                alert(values);
            });
 
            $("#btnCopyLeft").on("click",function(){
                $('#sel option:selected').each( function() {
                    $(this).clone().appendTo('#sel2');
                });
            });
 
            $("#btnCopyLeft2").on("click",function(){
                $('#sel2 option:selected').each( function() {
                    $(this).clone().appendTo('#sel');
                });
            });
 
            $("#btnAdd").on("click",function(){
                if($('#sel').find("[value='"+$('#addOption').val().replace('"','\'')+"']").length == 0)
                {
                    $('#sel').append('<option value="'+$('#addOption').val().replace('"','\'')+'">'+$('#addOption').val()+"</option>");
                }else{
                    alert("존재하는 카테고리입니다. 다시입력해주세요");
                }
            });
 
            $("#btnAdd2").on("click",function(){
                if($('#sel2').find("[value='"+$('#addOption2').val().replace('"','\'')+"']").length == 0)
                {
                    $('#sel2').append('<option value="'+$('#addOption2').val().replace('"','\'')+'">'+$('#addOption2').val()+"</option>");
                }else{
                    alert("존재하는 카테고리입니다. 다시입력해주세요");
                }
            });
        });
 
        $(window).load(function(e){
 
        });
 

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