<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<link rel="icon" type="image/png" href="/ot/resources/aimages/icon/favicon.png"/>

    <!-- Title Page-->
    <title>oT. ADMIN</title>

    <!-- Fontfaces CSS-->
    <link href="/ot/resources/acss/font-face.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="/ot/resources/avendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="/ot/resources/avendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="/ot/resources/avendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="/ot/resources/acss/theme.css" rel="stylesheet" media="all">
</head>
<body class="animsition">
	<div class="page-wrapper">
		<jsp:include page="a_header.jsp"/>
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
                        <li class="active has-sub"> 
                            <%-- <!-- active has-sub 파란색 --> --%>
                            <a class="js-arrow" href="#">
                                <i class="fa fa-bar-chart-o"></i>통계</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="todaymain.do">당일현황</a>
                                </li>
                                <li>
                                    <a href="todaychart.do">매출그래프</a>
                                </li>
                                <li>
                                    <a href="best.do">상품판매순위</a>
                                </li>
                            </ul>
                        </li>
                        
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fa fa-truck"></i>회원 </a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="customer.do">회원 관리</a>
                                </li>
                            </ul>
                        </li>
                        
                         <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fa fa-truck"></i>주문 </a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="order.do">주문 관리</a>
                                </li>
                            </ul>
                        </li>
                        
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fa fa-shopping-cart"></i>상품관리</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                            	<li>
                                    <a href="category.do">카테고리관리</a>
                                </li>
                                <li>
                                    <a href="productAdd.do">상품등록</a>
                                </li>
                                <li>
                                    <a href="productList.do">상품관리</a>
                                </li>
                            </ul>
                        </li>
                        
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fa fa-bullhorn"></i>이벤트&nbsp;/&nbsp;쿠폰</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="eventAdd.do">이벤트/쿠폰 등록</a>
                                </li>
                                <li>
                                    <a href="eventList.do">이벤트/쿠폰 관리</a>
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
                                    <a href="QnA_Product.do">상품문의</a>
                                </li>
                                <li>
                                    <a href="QnA_delivery_cancel.do">배송전 문의</a>
                                </li>
                                <li>
                                    <a href="productReturn.do">배송후 문의</a>
                                </li>
                                 <li>
                                    <a href="QnA_bank_insert.do">입금확인/입급자 변경 문의</a>
                                </li>
                                 <li>
                                    <a href="QnA_bad_product.do">상품불량 및 오배송 문의</a>
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
                       &nbsp; &nbsp; &nbsp; 당일현황
                      </h1>
                      <hr class="line-seprate">
                  </div>
              </div>
          </div>
       </section>
       <!-- END WELCOME-->

        <!-- STATISTIC-->
        <section class="statistic statistic2" onclick="location.href='status.do'">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-lg-3">
                        <div class="statistic__item statistic__item--green">
                            <h2 class="number">35</h2>
                            <span class="desc">오늘 Q&A</span>
                            <div class="icon">
                                <i class="zmdi zmdi-account-o"></i>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="statistic__item statistic__item--orange">
                            <h2 class="number">4</h2>
                            <span class="desc">오늘 반품 수</span>
                            <div class="icon">
                                <i class="zmdi zmdi-shopping-cart"></i>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="statistic__item statistic__item--blue">
                            <h2 class="number">249</h2>
                            <span class="desc">오늘 판매량</span>
                            <div class="icon">
                                <i class="zmdi zmdi-calendar-note"></i>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="statistic__item statistic__item--red">
                            <h2 class="number">	&#8361;650,000</h2>
                            <span class="desc">오늘 판매금액</span>
                            <div class="icon">
                                <i class="zmdi zmdi-money"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- END STATISTIC-->

        <!-- STATISTIC CHART-->
        <section class="statistic-chart">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h3 class="title-5 m-b-35">통계</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-lg-4" style="margin-left: 15%">
                        <!-- CHART-->
                        <div class="statistic-chart-1" 
                        	style="margin-left:-35%; width:140%; height:auto;" onclick="location.href='todaychart.do'">
                            <h3 class="title-3 m-b-30">일별 판매량</h3>
                            <div class="chart-wrap">
                                <canvas id="widgetChart5"></canvas>
                            </div>
                            <div class="statistic-chart-1-note">
                                <span class="big">10,368</span>
                                <span>/ 16220 items sold</span>
                            </div>
                        </div>
                        <!-- END CHART-->
                    </div>
                    <div class="col-md-6 col-lg-4" style="margin-left: 1%;">
                        <!-- TOP CAMPAIGN-->
                        <div class="top-campaign" style="width:140%; height:auto;" onclick="location.href='best.do'">
                            <h3 class="title-3 m-b-30">인기 상품</h3>
                            <div class="table-responsive">
                                <table class="table table-top-campaign">
                                    <tbody>
                                        <tr>
                                            <td>1. 골지나시 </td>
                                            <td>790</td>
                                        </tr>
                                        <tr>
                                            <td>2. 베이직 크롭 나시</td>
                                            <td>500</td>
                                        </tr>
                                        <tr>
                                            <td>3. 베이직 라운드티</td>
                                            <td>120</td>
                                        </tr>
                                        <tr>
                                            <td>4. 기본 슬렉스</td>
                                            <td>90</td>
                                        </tr>
                                        <tr>
                                            <td>5. 은링 귀걸이</td>
                                            <td>45</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- END TOP CAMPAIGN-->
                    </div>
                        <!-- END CHART PERCENT-->
                    </div>
                </div>
        </section>
        <!-- END STATISTIC CHART-->

	</div>

    <!-- Jquery JS-->
    <script src="/ot/resources/avendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="/ot/resources/avendor/bootstrap-4.1/popper.min.js"></script>
    <script src="/ot/resources/avendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="/ot/resources/avendor/slick/slick.min.js">
    </script>
    <script src="/ot/resources/avendor/wow/wow.min.js"></script>
    <script src="/ot/resources/avendor/animsition/animsition.min.js"></script>
    <script src="/ot/resources/avendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="/ot/resources/avendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="/ot/resources/avendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="/ot/resources/avendor/circle-progress/circle-progress.min.js"></script>
    <script src="/ot/resources/avendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="/ot/resources/avendor/chartjs/Chart.bundle.min.js"></script>
    <script src="/ot/resources/avendor/select2/select2.min.js"></script>

    <!-- Main JS-->
    <script src="/ot/resources/ajs/main.js"></script>
    </div>

</body>
</html>
