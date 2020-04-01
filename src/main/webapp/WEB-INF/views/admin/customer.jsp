<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>oT. ADMIN</title>
        <link rel="icon" type="image/png" href="images/icon/favicon.png"/>
        
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="./assets/vendor/bootstrap/css/bootstrap.min.css">
        <link href="./assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
        <link rel="stylesheet" href="./assets/libs/css/style.css">
        <link rel="stylesheet" href="./assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
        <link rel="stylesheet" type="text/css" href="./assets/vendor/datatables/css/dataTables.bootstrap4.css">
        <link rel="stylesheet" type="text/css" href="./assets/vendor/datatables/css/buttons.bootstrap4.css">
        <link rel="stylesheet" type="text/css" href="./assets/vendor/datatables/css/select.bootstrap4.css">
        <link rel="stylesheet" type="text/css" href="./assets/vendor/datatables/css/fixedHeader.bootstrap4.css">
         <link href="css/theme.css" rel="stylesheet" media="all">
    </head>
    <style>
    .btn-outline-light {
    color: #7171a6 !important;
    background-color: transparent !important;
    border-color: #e6e6f2 !important;
	}
	.table table-striped table-bordered second tbody td.process {
    color: #00ad5f;
	}
	
	td{
	cursor: pointer;
	}
	td.process {
    color: #00ad5f;
	}
	td.denied {
    color: #fa4251;
	}
	.btn-danger{
	    margin-left: 40%;
	}
    </style>
    
    
    
<body class="animsition" style="background: #f3f3f3;">
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
                        
                        <li class="active has-sub">
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
      <section class="welcome p-t-10">
          <div class="container">
              <div class="row">
                  <div class="col-md-12">
                      <h1 class="title-4">
                       &nbsp; &nbsp; &nbsp; 고객 관리
                      </h1>
                      <hr class="line-seprate">
                  </div>
              </div>
          </div>
       </section>
       <!-- END WELCOME-->
        
    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
        <div class="card">
    <div class="card-body">
        <div class="table-responsive">
            <table id="example" class="table table-striped table-bordered second" style="width:100%">
                <thead>
                    <tr>
                        <th>아이디</th>
                        <th>성명</th>
                        <th>성별</th>
                        <th>나이</th>
                        <th>전화번호</th>
                        <th>이메일</th>
                        <th>주소</th>
                        <th>총 주문금액</th>     
                        <th>등록일</th>                  
                    </tr>
                </thead>
                <tbody>
                    <tr>
                    	<td>it_seohyun</td>
                    	<td>이서현</td>
                    	<td>여</td>
                    	<td>25</td>
                    	<td>010-1234-5678</td>
                    	<td>pigplus0304@gmail.com</td>
                    	<td>경기도 시흥시 인선길53 123동 456호</td>
                    	<td>322,000 원 </td>
                    	<td>2019-03-28</td>
                    </tr>
                    <tr>
                    	<td>it_seohyun</td>
                    	<td>이서현</td>
                    	<td>여</td>
                    	<td>25</td>
                    	<td>010-1234-5678</td>
                    	<td>pigplus0304@gmail.com</td>
                    	<td>경기도 시흥시 인선길53 123동 456호</td>
                    	<td>322,000 원 </td>
                    	<td>2019-03-28</td>
                    </tr>
                    <tr>
                    	<td>it_seohyun</td>
                    	<td>이서현</td>
                    	<td>여</td>
                    	<td>25</td>
                    	<td>010-1234-5678</td>
                    	<td>pigplus0304@gmail.com</td>
                    	<td>경기도 시흥시 인선길53 123동 456호</td>
                    	<td>322,000 원 </td>
                    	<td>2019-03-28</td>
                    </tr>
                    <tr>
                    	<td>it_seohyun</td>
                    	<td>이서현</td>
                    	<td>여</td>
                    	<td>25</td>
                    	<td>010-1234-5678</td>
                    	<td>pigplus0304@gmail.com</td>
                    	<td>경기도 시흥시 인선길53 123동 456호</td>
                    	<td>322,000 원 </td>
                    	<td>2019-03-28</td>
                    </tr>
                    <tr>
                    	<td>it_seohyun</td>
                    	<td>이서현</td>
                    	<td>여</td>
                    	<td>25</td>
                    	<td>010-1234-5678</td>
                    	<td>pigplus0304@gmail.com</td>
                    	<td>경기도 시흥시 인선길53 123동 456호</td>
                    	<td>322,000 원 </td>
                    	<td>2019-03-28</td>
                    </tr>
                    <tr>
                    	<td>it_seohyun</td>
                    	<td>이서현</td>
                    	<td>여</td>
                    	<td>25</td>
                    	<td>010-1234-5678</td>
                    	<td>pigplus0304@gmail.com</td>
                    	<td>경기도 시흥시 인선길53 123동 456호</td>
                    	<td>322,000 원 </td>
                    	<td>2019-03-28</td>
                    </tr>
                    <tr>
                    	<td>it_seohyun</td>
                    	<td>이서현</td>
                    	<td>여</td>
                    	<td>25</td>
                    	<td>010-1234-5678</td>
                    	<td>pigplus0304@gmail.com</td>
                    	<td>경기도 시흥시 인선길53 123동 456호</td>
                    	<td>322,000 원 </td>
                    	<td>2019-03-28</td>
                    </tr>
                    <tr>
                    	<td>it_seohyun</td>
                    	<td>이서현</td>
                    	<td>여</td>
                    	<td>25</td>
                    	<td>010-1234-5678</td>
                    	<td>pigplus0304@gmail.com</td>
                    	<td>경기도 시흥시 인선길53 123동 456호</td>
                    	<td>322,000 원 </td>
                    	<td>2019-03-28</td>
                    </tr>
                    <tr>
                    	<td>it_seohyun</td>
                    	<td>이서현</td>
                    	<td>여</td>
                    	<td>25</td>
                    	<td>010-1234-5678</td>
                    	<td>pigplus0304@gmail.com</td>
                    	<td>경기도 시흥시 인선길53 123동 456호</td>
                    	<td>322,000 원 </td>
                    	<td>2019-03-28</td>
                    </tr>
                    <tr>
                    	<td>it_seohyun</td>
                    	<td>이서현</td>
                    	<td>여</td>
                    	<td>25</td>
                    	<td>010-1234-5678</td>
                    	<td>pigplus0304@gmail.com</td>
                    	<td>경기도 시흥시 인선길53 123동 456호</td>
                    	<td>322,000 원 </td>
                    	<td>2019-03-28</td>
                    </tr>
                    <tr>
                    	<td>it_seohyun</td>
                    	<td>이서현</td>
                    	<td>여</td>
                    	<td>25</td>
                    	<td>010-1234-5678</td>
                    	<td>pigplus0304@gmail.com</td>
                    	<td>경기도 시흥시 인선길53 123동 456호</td>
                    	<td>322,000 원 </td>
                    	<td>2019-03-28</td>
                    </tr>
                    <tr>
                    	<td>it_seohyun</td>
                    	<td>이서현</td>
                    	<td>여</td>
                    	<td>25</td>
                    	<td>010-1234-5678</td>
                    	<td>pigplus0304@gmail.com</td>
                    	<td>경기도 시흥시 인선길53 123동 456호</td>
                    	<td>322,000 원 </td>
                    	<td>2019-03-28</td>
                    </tr>
                    <tr>
                    	<td>it_seohyun</td>
                    	<td>이서현</td>
                    	<td>여</td>
                    	<td>25</td>
                    	<td>010-1234-5678</td>
                    	<td>pigplus0304@gmail.com</td>
                    	<td>경기도 시흥시 인선길53 123동 456호</td>
                    	<td>322,000 원 </td>
                    	<td>2019-03-28</td>
                    </tr>
                    <tr>
                    	<td>it_seohyun</td>
                    	<td>이서현</td>
                    	<td>여</td>
                    	<td>25</td>
                    	<td>010-1234-5678</td>
                    	<td>pigplus0304@gmail.com</td>
                    	<td>경기도 시흥시 인선길53 123동 456호</td>
                    	<td>322,000 원 </td>
                    	<td>2019-03-28</td>
                    </tr>
                    <tr>
                    	<td>it_seohyun</td>
                    	<td>이서현</td>
                    	<td>여</td>
                    	<td>25</td>
                    	<td>010-1234-5678</td>
                    	<td>pigplus0304@gmail.com</td>
                    	<td>경기도 시흥시 인선길53 123동 456호</td>
                    	<td>322,000 원 </td>
                    	<td>2019-03-28</td>
                    </tr>
                    <tr>
                    	<td>it_seohyun</td>
                    	<td>이서현</td>
                    	<td>여</td>
                    	<td>25</td>
                    	<td>010-1234-5678</td>
                    	<td>pigplus0304@gmail.com</td>
                    	<td>경기도 시흥시 인선길53 123동 456호</td>
                    	<td>322,000 원 </td>
                    	<td>2019-03-28</td>
                    </tr>
                    <tr>
                    	<td>it_seohyun</td>
                    	<td>이서현</td>
                    	<td>여</td>
                    	<td>25</td>
                    	<td>010-1234-5678</td>
                    	<td>pigplus0304@gmail.com</td>
                    	<td>경기도 시흥시 인선길53 123동 456호</td>
                    	<td>322,000 원 </td>
                    	<td>2019-03-28</td>
                    </tr>
                    <tr>
                    	<td>it_seohyun</td>
                    	<td>이서현</td>
                    	<td>여</td>
                    	<td>25</td>
                    	<td>010-1234-5678</td>
                    	<td>pigplus0304@gmail.com</td>
                    	<td>경기도 시흥시 인선길53 123동 456호</td>
                    	<td>322,000 원 </td>
                    	<td>2019-03-28</td>
                    </tr>
                    <tr>
                    	<td>it_seohyun</td>
                    	<td>이서현</td>
                    	<td>여</td>
                    	<td>25</td>
                    	<td>010-1234-5678</td>
                    	<td>pigplus0304@gmail.com</td>
                    	<td>경기도 시흥시 인선길53 123동 456호</td>
                    	<td>322,000 원 </td>
                    	<td>2019-03-28</td>
                    </tr>
                    <tr>
                    	<td>it_seohyun</td>
                    	<td>이서현</td>
                    	<td>여</td>
                    	<td>25</td>
                    	<td>010-1234-5678</td>
                    	<td>pigplus0304@gmail.com</td>
                    	<td>경기도 시흥시 인선길53 123동 456호</td>
                    	<td>322,000 원 </td>
                    	<td>2019-03-28</td>
                    </tr>
               </tbody>
            </table>
        </div>
        </div>
    </div>
    </div>
    </div>
    <div class="page-wrapper">
</div>
	
	
	<!-- // td(class=next) 클릭시 페이지 이동 -->
	<script>
     $("td").click(function(){
    	 location.href='customerDetail.jsp';
  	 <%-- var userId = $(this).parent().find('input').val();
  	 
  	 console.log("선택한 유저 ID : "+userId);
  	 
     location.href="<%= request.getContextPath() %>/sone.rp?userId=" + userId; --%>
    }); 
    </script>

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
    <script src="vendor/select2/select2.min.js"></script>
      <script src="js/main.js"></script>
</body>
</html>