<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>oT.</title>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="<c:url value="/resources/images/icons/favicon.png" />">

<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css"/>">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/fonts/themify/themify-icons.css"/>">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/fonts/elegant-font/html-css/style.css"/>">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/animate/animate.css"/>">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/vendor/css-hamburgers/hamburgers.min.css"/>">
<!--===============================================================================================-->

 	<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/vendor/animsition/css/animsition.min.css"/>">  <!-- 일단여기 -->
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/vendor/select2/select2.min.css"/>">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/vendor/daterangepicker/daterangepicker.css"/>">
<!--===============================================================================================-->
<link href="<c:url value="/resources/vendor/slick/slick.css"/>" rel="stylesheet" type="text/css" >
<!--===============================================================================================-->
<link href="<c:url value="/resources/vendor/lightbox2/css/lightbox.min.css"/>" rel="stylesheet" type="text/css">
<!--===============================================================================================-->
<link href="<c:url value="/resources/css/util.css" />" rel="stylesheet">

<link rel="stylesheet"  type="text/css"  href="/ot/resources/css/main.css" >
<!--===============================================================================================-->
</head>
<style>
select{
background:none;outline: 0;width:80px;
}

.fa-star{
font-size: 9px !important;
    color: #ffa811;
}
</style>
<body class="animsition">
      
	<!-- header fixed -->
	<div class="wrap_header fixed-header2 trans-0-4"
		style="max-height: 50px;">
		<!-- Logo -->
		<c:url var="chatIcon" value="/resources/images/icons/chat_icon.png"/>
		<a href="index.jsp" class="logo"> <img src="<c:url value="/resources/images/icons/ot.png"/>"
			alt="IMG-LOGO" style="max-height: 28px;">
		</a> <a href="https://www.instagram.com/blackup_kr/" target="blank_"
			class="topbar-social-item fa fa-instagram"></a> <a href="#"
			class="chatBtn"><img
			style="width: 15px; margin-left: 11px; margin-bottom: 4px;"
			src="${ chatIcon }"></a> <a href="${cartbutton }"><img
			style="width: 17px; margin-left: 15px; margin-bottom: 4px;"
			src="<c:url value="/resources/images/icons/cart.png"/>"></a>

		<!-- Menu -->
		<div class="wrap_menu" style="margin-top: -0.5%;">
			<nav class="menu">
				<ul class="main_menu">

					<span class="linedivide1"></span>
					<!-- 프로덕트 1부분 경로 설정 -->
					<c:url var="best" value="product1.do">
						<c:param name="product1" value="BEST"/>
					</c:url>
					<c:url var="clothing" value="product1.do">
						<c:param name="product1" value="CLOTHING"/>
					</c:url>
					<c:url var="outer" value="product1.do">
						<c:param name="product1" value="OUTER"/>
					</c:url>
					<c:url var="shoes" value="product1.do">
						<c:param name="product1" value="SHOES"/>
					</c:url>
					<c:url var="acc" value="product1.do">
						<c:param name="product1" value="ACC"/>
					</c:url>
					<c:url var="event" value="product1.do">
						<c:param name="product1" value="EVENT"/>
					</c:url>
					<!-- 프로덕트 1 부분 경로설정 끝 -->
					<!-- 프로덕트 2 부분 경로설정  -->
					<c:url var="tnasi" value="product2.do">
						<c:param name="product2" value="TNASI"/>
					</c:url>
					<c:url var="mantoman" value="product2.do">
						<c:param name="product2" value="MANTOMAN"/>
					</c:url>
					<c:url var="hoody" value="product2.do">
						<c:param name="product2" value="HOODY"/>
					</c:url>
					<c:url var="pants" value="product2.do">
						<c:param name="product2" value="PANTS"/>
					</c:url>
					<c:url var="neat" value="product2.do">
						<c:param name="product2" value="NEAT"/>
					</c:url>
					<c:url var="onepieceskirt" value="product2.do">
						<c:param name="product2" value="ONEPIECESKIRT"/>
					</c:url>
					<c:url var="shirtblouse" value="product2.do">
						<c:param name="product2" value="SHIRTBLOUSE"/>
					</c:url>
					<c:url var="jacket" value="product2.do">
						<c:param name="product2" value="JACKET"/>
					</c:url>
					<c:url var="coatjumper" value="product2.do">
						<c:param name="product2" value="COATJUMPER"/>
					</c:url>
					<c:url var="cardigan" value="product2.do">
						<c:param name="product2" value="CARDIGAN"/>
					</c:url>
					<c:url var="belt" value="product2.do">
						<c:param name="product2" value="BELT"/>
					</c:url>
					<c:url var="glasses" value="product2.do">
						<c:param name="product2" value="GLASSES"/>
					</c:url>
					<c:url var="hat" value="product2.do">
						<c:param name="product2" value="HAT"/>
					</c:url>
					<c:url var="socks" value="product2.do">
						<c:param name="product2" value="SOCKS"/>
					</c:url>
					<c:url var="accessories" value="product2.do">
						<c:param name="product2" value="ACCESSORIES"/>
					</c:url>
					<c:url var="etc" value="product2.do">
						<c:param name="product2" value="ETC"/>
					</c:url>
					<c:url var="new5" value="product2.do">
						<c:param name="product2" value="NEW5"/>
					</c:url>
					<c:url var="sale" value="product2.do">
						<c:param name="product2" value="SALE"/>
					</c:url>
					
					<!-- 프로덕트 2 부분 경로설정 끝 -->
					<!-- 기타 버튼 경로설정 -->
					<c:url var="review" value="review.do"/>
					<c:url var="cartbutton" value="cartbutton.do"/>
					
					<li><a href="${best }">Best20</a>
						<ul class="sub_menu"
							style="border-radius: 10px; background: #000; filter: alpha(opacity = 7); opacity: 0.6; -moz-opacity: 0.1; width: 135%;">
							<li><a href="${best }">랭킹20</a></li>
						</ul></li>
					<span class="linedivide1"></span>
					
					<li><a href="${clothing }">CLOTHING</a>
						<ul class="sub_menu"
							style="border-radius: 10px; background: #000; filter: alpha(opacity = 7); opacity: 0.6; -moz-opacity: 0.1; width: 135%;">
							<li><a href="${tnasi }">티셔츠/나시</a></li>
							<li><a href="${mantoman }">맨투맨</a></li>
							<li><a href="${hoody }">후디</a></li>
							<li><a href="${pants }">바지</a></li>
							<li><a href="${neat }">니트</a></li>
							<li><a href="${onepieceskirt }">원피스/스커트</a></li>
							<li><a href="${shirtblouse }">셔츠/블라우스</a></li>
						</ul></li>
					<span class="linedivide1"></span>

					<li><a href="${outer }">OUTER</a>
						<ul class="sub_menu"
							style="border-radius: 10px; background: #000; filter: alpha(opacity = 7); opacity: 0.6; -moz-opacity: 0.1; width: 135%;">
							<li><a href="${jacket }">자켓</a></li>
							<li><a href="${coatjumper }">코트/점퍼</a></li>
							<li><a href="${cardigan }">가디건</a></li>
						</ul></li>
					<span class="linedivide1"></span>

					<li><a href="${shoes }">SHOES</a>
						<ul class="sub_menu"
							style="border-radius: 10px; background: #000; filter: alpha(opacity = 7); opacity: 0.6; -moz-opacity: 0.1; width: 135%;">
							<li><a href="${shoes }">신발</a></li>
						</ul></li>
					<span class="linedivide1"></span>

					<li><a href="${acc }">ACC</a>
						<ul class="sub_menu"
							style="border-radius: 10px; background: #000; filter: alpha(opacity = 7); opacity: 0.6; -moz-opacity: 0.1; width: 150%;">
							<li><a href="${belt }">벨트</a></li>
							<li><a href="${glasses }">안경</a></li>
							<li><a href="${hat }">모자</a></li>
							<li><a href="${socks }">양말</a></li>
							<li><a href="${accessories }">악세사리</a></li>
							<li><a href="${etc }">기타</a></li>
						</ul></li>
					<span class="linedivide1"></span>

					<li class="sale-noti"><a href="${event }">EVENT</a>
						<ul class="sub_menu"
							style="border-radius: 10px; background: #000; filter: alpha(opacity = 7); opacity: 0.6; -moz-opacity: 0.1; width: 135%;">
							<li><a href="${new5 }">NEW 5%</a></li>
							<li><a href="${sale }">SALE</a></li>

						</ul></li>
					<span class="linedivide1"></span>

				</ul>

			</nav>
		</div>

		<!-- Header Icon -->
		<div class="header-icons">


			<!-- <span class="linedivide1"></span> -->
			<!-- 검색창 인풋 부분 -->

			<form class="submitSearch" action="#">
				<input type="text"   name="search"
					 style="border: 1px solid black !important; border-radius: 5px; background: none;"
					placeholder="Search..">
				<button type="submit">
					<i class="fa fa-search"></i>
				</button>
			</form>
			
			&nbsp; <span
						class="topbar-email"> . </span> &nbsp; <a href="#" id="allmenubar"
						class="topbar-social-item fa fa-bars"></a>
			<!-- 
			<div class="header-wrapicon2">
				<img src="images/icons/icon-header-02.png" class="header-icon1 js-show-header-dropdown" alt="ICON">
				<span class="header-icons-noti">3</span>
 -->
			<!-- Header cart noti -->
			<div class="header-cart header-dropdown">
				<ul class="header-cart-wrapitem">
					<li class="header-cart-item">
						<div class="header-cart-item-img">
							<img src="<c:url value="/resources/images/item-cart-01.jpg"/>" alt="IMG">
						</div>

						<div class="header-cart-item-txt">
							<a href="#" class="header-cart-item-name"> White Shirt With
								Pleat Detail Back </a> <span class="header-cart-item-info"> 1
								x $19.00 </span>
						</div>
					</li>

					<li class="header-cart-item">
						<div class="header-cart-item-img">
							<img src="<c:url value="/resources/images/item-cart-02.jpg"/>" alt="IMG">
						</div>

						<div class="header-cart-item-txt">
							<a href="#" class="header-cart-item-name"> Converse All Star
								Hi Black Canvas </a> <span class="header-cart-item-info"> 1 x
								$39.00 </span>
						</div>
					</li>

					<li class="header-cart-item">
						<div class="header-cart-item-img">
							<img src="<c:url value="/resources/images/item-cart-03.jpg"/>" alt="IMG">
						</div>

						<div class="header-cart-item-txt">
							<a href="#" class="header-cart-item-name"> Nixon Porter
								Leather Watch In Tan </a> <span class="header-cart-item-info">
								1 x $17.00 </span>
						</div>
					</li>
				</ul>

				<div class="header-cart-total">Total: $75.00</div>

				<div class="header-cart-buttons">
					<div class="header-cart-wrapbtn">
						<!-- Button -->
						<a href="${cartbutton }"
							class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
							View Cart </a>
					</div>

					<div class="header-cart-wrapbtn">
						<!-- Button -->
						<a href="#"
							class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
							Check Out </a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
<c:url var="dailyCheck" value="dailyCheck.do"/>
	<!-- top noti -->
	<div class="flex-c-m size22 bg0 s-text21 pos-relative"
		style="background: black;">
		출석체크 EVENT! <a href="${dailyCheck }" class="s-text22 hov6 p-l-5">
			바로가기 </a>

		<button
			class="flex-c-m pos2 size23 colorwhite eff3 trans-0-4 btn-romove-top-noti">
			<i class="fa fa-remove fs-13" aria-hidden="true"></i>
		</button>
	</div>

	<!-- Header -->
	<header class="header2">
		<!-- Header desktop -->
		<div class="container-menu-header-v2 p-t-26">
			<div class="topbar2" style="margin-top: -1%;">
				<div class="topbar-social">
					<a href="https://www.instagram.com/blackup_kr/" target="blank_"
						class="topbar-social-item fa fa-instagram"></a> <a href="#"
						class="chatBtn"><img
						style="width: 15px; margin-left: 11px; margin-bottom: 4px;"
						src="/ot/resources/images/icons/chat_icon.png"></a> <a href="${cartbutton }"><img
						style="width: 17px; margin-left: 15px; margin-bottom: 4px;"
						src="/ot/resources/images/icons/cart.png"></a>

				</div>

				<!-- Logo2 -->
				<a href="index.jsp" class="logo2"> <img
					src="<c:url value="/resources/images/icons/ot.png"/>" alt="IMG-LOGO" style="max-height: 40px;position:relative;left:20%;">
				</a>


				<div class="topbar-child2">
					<span class="topbar-email"> . </span>

			
					<c:url var="loginView" value="loginView.do"/>				
					<c:url var="joinView" value="joinView.do"/>				
					<c:url var="MyPage" value="MyPage.do"/>
					<c:url var="logout" value="logout.do"/>
									
					  <c:if test="${ empty sessionScope.loginMember }">													
					&nbsp;&nbsp; <a href='${loginView}'  class="topbar-email"> Login </a>
					</c:if>
					  <c:if test="${ !empty sessionScope.loginMember }">													
					&nbsp;&nbsp; <a href='${logout}'  class="topbar-email"> Logout </a>
					</c:if>
					&nbsp;&nbsp; <span class="topbar-email"> . </span> &nbsp;&nbsp; <a
						href="${joinView}" class="topbar-email"> Join </a> &nbsp;&nbsp; <span
						class="topbar-email"> . </span> &nbsp;&nbsp; <a
						href="${MyPage}" class="topbar-email"> MyPage </a>
					&nbsp;&nbsp; <span class="topbar-email"> . </span> &nbsp;&nbsp; <a
						href="notice.jsp" class="topbar-email"> Notice </a> &nbsp;&nbsp; <span
						class="topbar-email"> . </span> &nbsp; <a href="#" id="allmenubar1"
						class="topbar-social-item fa fa-bars"></a> &nbsp; <span
						class="topbar-email"> . </span>
				</div>

				<font style="font-size: 8px; color: brown; position: relative; bottom: -17px; left: 35.5%;">2000+</font>

			</div>
		</div>
		<hr>
		<div class="wrap_header"
			style="max-height: 20px; background: none; z-index: 3;">

			<!-- Menu -->
			<div class="wrap_menu" style="margin-top: -1.7%;">
				<nav class="menu">
					<ul class="main_menu">

						<span class="linedivide1"></span>

						<li><a href="${best }">Best20</a>
							<ul class="sub_menu"
								style="border-radius: 10px; background: #000; filter: alpha(opacity = 7); opacity: 0.6; -moz-opacity: 0.1; width: 135%;">
								<li><a href="${best }">랭킹20</a></li>
							</ul></li>
						<span class="linedivide1"></span>

						<li><a href="${clothing }">CLOTHING</a>
							<ul class="sub_menu"
								style="border-radius: 10px; background: #000; filter: alpha(opacity = 7); opacity: 0.6; -moz-opacity: 0.1; width: 135%;">
								<li><a href="${tnasi }">티셔츠/나시</a></li>
							<li><a href="${mantoman }">맨투맨</a></li>
							<li><a href="${hoody }">후디</a></li>
							<li><a href="${pants }">바지</a></li>
							<li><a href="${neat }">니트</a></li>
							<li><a href="${onepieceskirt }">원피스/스커트</a></li>
							<li><a href="${shirtblouse }">셔츠/블라우스</a></li>
							</ul></li>
						<span class="linedivide1"></span>

						<li><a href="${outer }">OUTER</a>
							<ul class="sub_menu"
								style="border-radius: 10px; background: #000; filter: alpha(opacity = 7); opacity: 0.6; -moz-opacity: 0.1; width: 135%;">
								<li><a href="${jacket }">자켓</a></li>
							<li><a href="${coatjumper }">코트/점퍼</a></li>
							<li><a href="${cardigan }">가디건</a></li>
							</ul></li>
						<span class="linedivide1"></span>

						<li><a href="${shoes }">SHOES</a>
							<ul class="sub_menu"
								style="border-radius: 10px; background: #000; filter: alpha(opacity = 7); opacity: 0.6; -moz-opacity: 0.1; width: 135%;">
								<li><a href="${shoes }">신발</a></li>
							</ul></li>
						<span class="linedivide1"></span>

						<li><a href="${acc }">ACC</a>
							<ul class="sub_menu"
								style="border-radius: 10px; background: #000; filter: alpha(opacity = 7); opacity: 0.6; -moz-opacity: 0.1; width: 150%;">
								<li><a href="${belt }">벨트</a></li>
							<li><a href="${glasses }">안경</a></li>
							<li><a href="${hat }">모자</a></li>
							<li><a href="${socks }">양말</a></li>
							<li><a href="${accessories }">악세사리</a></li>
							<li><a href="${etc }">기타</a></li>
							</ul></li>
						<span class="linedivide1"></span>

						<li class="sale-noti"><a href="${event }">EVENT</a>
							<ul class="sub_menu"
								style="border-radius: 10px; background: #000; filter: alpha(opacity = 7); opacity: 0.6; -moz-opacity: 0.1; width: 135%;">
								<li><a href="${new5 }">NEW 5%</a></li>
							<li><a href="${sale }">SALE</a></li>

							</ul></li>

						<span class="linedivide1"></span>


						<!-- 검색창 인풋 부분 -->

						<form class="submitSearch" action="#">
							<input type="text"  name="search"
								 style="border: 1px solid black !important; border-radius: 5px; background: none;"
								placeholder="Search..">
							<button type="submit">
								<i class="fa fa-search"></i>
							</button>
						</form>

					</ul>
					<hr style="margin-top: -1%;">
				</nav>
			</div>

			<!-- Header Icon -->
			<div class="header-icons"></div>
		</div>
		</div>

		<!-- Header Mobile -->
		<div class="wrap_header_mobile"
			style="margin-bottom: 20px; max-height: 30px;">
			<!-- Logo moblie -->
			<a href="index.jsp" class="logo-mobile" style="margin-bottom: 10px;">
				<img src="/ot/resources/images/icons/ot.png" alt="IMG-LOGO"
				style="max-height: 25px;">
			</a>

			<!-- Button show menu -->
			<div class="btn-show-menu" style="margin-bottom: 10px;">
				<!-- Header Icon mobile -->
				<div class="header-icons-mobile">
					<a href="https://www.instagram.com/blackup_kr/" target="blank_"
						class="topbar-social-item fa fa-instagram"></a> <a href="#"
						class="chatBtn"><img
						style="width: 15px; margin-left: 11px; margin-bottom: 4px;"
						src="/ot/resources/images/icons/chat_icon.png"></a> <a href="${cartbutton }"><img
						style="width: 17px; margin-left: 15px; margin-bottom: 4px;"
						src="/ot/resources/images/icons/cart.png"></a>

					<!-- 	<span class="linedivide2"></span> -->
					<!-- 
					<div class="header-wrapicon2">
						<img src="images/icons/icon-header-02.png" class="header-icon1 js-show-header-dropdown" alt="ICON">
						<span class="header-icons-noti">0</span>

						Header cart noti
						<div class="header-cart header-dropdown">
							<ul class="header-cart-wrapitem">
								<li class="header-cart-item">
									<div class="header-cart-item-img">
										<img src="images/item-cart-01.jpg" alt="IMG">
									</div>

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name">
											White Shirt With Pleat Detail Back
										</a>

										<span class="header-cart-item-info">
											1 x $19.00
										</span>
									</div>
								</li>

								<li class="header-cart-item">
									<div class="header-cart-item-img">
										<img src="images/item-cart-02.jpg" alt="IMG">
									</div>

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name">
											Converse All Star Hi Black Canvas
										</a>

										<span class="header-cart-item-info">
											1 x $39.00
										</span>
									</div>
								</li>

								<li class="header-cart-item">
									<div class="header-cart-item-img">
										<img src="images/item-cart-03.jpg" alt="IMG">
									</div>

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name">
											Nixon Porter Leather Watch In Tan
										</a>

										<span class="header-cart-item-info">
											1 x $17.00
										</span>
									</div>
								</li>
							</ul>

							<div class="header-cart-total">
								Total: $75.00
							</div>

							<div class="header-cart-buttons">
								<div class="header-cart-wrapbtn">
									Button
									<a href="${cartbutton }" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										View Cart
									</a>
								</div>

								<div class="header-cart-wrapbtn">
									Button
									<a href="#" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										Check Out
									</a>
								</div>
							</div>
						</div> -->
				</div>
			</div>

			<div class="btn-show-menu-mobile hamburger hamburger--squeeze"
				style="margin-bottom: 10px;">
				<span class="hamburger-box"> <span class="hamburger-inner"></span>
				</span>
			</div>
		</div>


		<!-- Menu Mobile -->
		<div class="wrap-side-menu">
			<nav class="side-menu">
				<ul class="main-menu">


					<li class="item-topbar-mobile p-l-10">
						<div class="topbar-social-mobile">
							<a href="https://www.instagram.com/blackup_kr/" target="blank_"
								class="topbar-social-item fa fa-instagram"></a>
						</div>
					</li>



					<li class="item-menu-mobile" style="background: black;"><a
						class="item-menu-mobile" href="product.jsp">BEST20</a>
						<ul class="sub-menu">
							<li><a href="index.jsp">랭킹20</a></li>
						</ul> <i class="arrow-main-menu fa fa-angle-right" aria-hidden="true"></i>
					</li>



					<li class="item-menu-mobile" style="background: black;"><a
						href="${clothing }">CLOTHING</a>
						<ul class="sub-menu">
							<li><a href="${tnasi }">티셔츠/나시</a></li>
							<li><a href="${mantoman }">맨투맨</a></li>
							<li><a href="${hoody }">후디</a></li>
							<li><a href="${pants }">바지</a></li>
							<li><a href="${neat }">니트</a></li>
							<li><a href="${onepieceskirt }">원피스/스커트</a></li>
							<li><a href="${shirtblouse }">셔츠/블라우스</a></li>
						</ul> <i class="arrow-main-menu fa fa-angle-right" aria-hidden="true"></i>
					</li>

					<li class="item-menu-mobile" style="background: black;"><a
						href="${outer }">OUTER</a>
						<ul class="sub-menu">
							<li><a href="${jacket }">자켓</a></li>
							<li><a href="${coatjumper }">코트/점퍼</a></li>
							<li><a href="${cardigan }">가디건</a></li>
						</ul> <i class="arrow-main-menu fa fa-angle-right" aria-hidden="true"></i>
					</li>


					<li class="item-menu-mobile" style="background: black;"><a
						href="${shoes }">SHOES</a>
						<ul class="sub-menu">
							<li><a href="${shoes }">신발</a></li>
						</ul> <i class="arrow-main-menu fa fa-angle-right" aria-hidden="true"></i>
					</li>


					<li class="item-menu-mobile" style="background: black;"><a
						href="${acc }">ACC</a>
						<ul class="sub-menu">
							<li><a href="${belt }">벨트</a></li>
							<li><a href="${glasses }">안경</a></li>
							<li><a href="${hat }">모자</a></li>
							<li><a href="${socks }">양말</a></li>
							<li><a href="${accessories }">악세사리</a></li>
							<li><a href="${etc }">기타</a></li>
						</ul> <i class="arrow-main-menu fa fa-angle-right" aria-hidden="true"></i>
					</li>

					<li class="item-menu-mobile" style="background: black;"><a
						class="item-menu-mobile" href="${event }">EVENT</a>
						<ul class="sub-menu">
							<li><a href="${new5 }">NEW 5%</a></li>
							<li><a href="${sale }">SALE</a></li>
						</ul> <i class="arrow-main-menu fa fa-angle-right" aria-hidden="true"></i>
					</li>



				</ul>
			</nav>
		</div>
	</header>
	<div class="allMenuOuter">
		<div class="allMenuInner">
			<div class="allMenuTop">
				<h3 class="helve">Shop</h3>
				<div>
					<h4 class="helve">EVENT</h4>
					<ul>
						<li><a href="${new5 }">NEW5%</a></li>
						<li><a href="${sale }">SALE</a></li>
					</ul>
				</div>
				<div>
					<h4 class="helve">BEST20</h4>
					<ul>
						<li><a href="${best }">랭킹20</a></li>
					</ul>
				</div>
				<div>
					<h4 class="helve">
						<a href="${clothing }">CLOTHING</a>
					</h4>
					<ul>
						<li><a href="${tnasi }">티셔츠/나시</a></li>
							<li><a href="${mantoman }">맨투맨</a></li>
							<li><a href="${hoody }">후디</a></li>
							<li><a href="${pants }">바지</a></li>
							<li><a href="${neat }">니트</a></li>
							<li><a href="${onepieceskirt }">원피스/스커트</a></li>
							<li><a href="${shirtblouse }">셔츠/블라우스</a></li>
					</ul>
				</div>
				<div>
					<h4 class="helve">
						<a href="${outer }">OUTER</a>
					</h4>
					<ul>
						<li><a href="${jacket }">자켓</a></li>
							<li><a href="${coatjumper }">코트/점퍼</a></li>
							<li><a href="${cardigan }">가디건</a></li>
					</ul>
				</div>
				<div>
					<h4 class="helve">
						<a href="${shoes }">SHOES</a>
					</h4>
					<ul>
						<li><a href="index.jsp">신발</a></li>

					</ul>
				</div>
				<div>
					<h4 class="helve">
						<a href="${acc }">ACC</a>
					</h4>
					<ul>
						<li><a href="${belt }">벨트</a></li>
							<li><a href="${glasses }">안경</a></li>
							<li><a href="${hat }">모자</a></li>
							<li><a href="${socks }">양말</a></li>
							<li><a href="${accessories }">악세사리</a></li>
							<li><a href="${etc }">기타</a></li>
					</ul>
				</div>
				
			</div>

			<div class="allMenuBottom">
				<div class="allMBleft" style="position: relative; top: -42px;">
					<h3 class="helve">Board</h3>
					<div>
						<h4 class="helve">
							<a href="FaQ.jsp">Q&amp;A</a>
						</h4>
						<ul>
							<li><a href="FaQ.jsp">자주하는 질문</a></li>
							<li><a href="product_board.jsp">상품문의</a></li>
							<li><a href="delivery_board.jsp">배송문의</a></li>
							<li><a href="delivery_cancel.jsp">배송전취소/변경</a></li>
							<li><a href="product_change.jsp">배송후교환/반품</a></li>
							<li><a href="bank_insert_board.jsp">입금확인/입금자변경</a></li>
							<li><a href="/board/free/list.html?board_no=101">해외배송문의</a></li>
							<li><a href="bad_product_board.jsp">상품불량 및
									오배송접수</a></li>
						</ul>
					</div>
					<div>
						<h4 class="helve">
							<a href="notice.jsp">NOTICE</a>
						</h4>
						<ul>
							<li><a href="/board/free/list.html?board_no=1">공지사항</a></li>
							<!--li><a href="/shopinfo/company.html">회사소개</a></li-->
							<li><a
								href="/front/php/b/board_list.php?board_no=15&amp;is_pcver=T">모델지원</a></li>
							<!--li><a href="">직원채용</a></li-->
							<li><a href="/shopinfo/guide.html">이용안내</a></li>
							<li><a href="/product/list.html?cate_no=54">-</a></li>
						</ul>
					</div>
					<div>
						<h4 class="helve">
							<a href="${review }">REVIEW</a>
						</h4>
					</div>
				</div>

				<div class="allMBright">
					<div>
						<h3 class="helve">
							<a href="/myshop/index.html">My page</a>
						</h3>
						<ul>
							<li><a href="/myshop/order/list.html">주문내역</a></li>
							<li></li>
							<li><a href="${cartbutton }"
								class="xans-element- xans-layout xans-layout-statelogoff ">장바구니
									<span class="">(<span class="EC-Layout-Basket-count"></span>)
								</span>
							</a></li>
							<li><a href="/myshop/wish_list.html">관심상품</a></li>
							<li><a href="/myshop/mileage/historyList.html">적립금</a></li>
							<li><a href="/myshop/coupon/coupon.html">쿠폰</a></li>
							<li><a href="/product/recent_view_product.html">최근 본 상품</a></li>
							<li><a href="/myshop/deposits/historyList.html">예치금</a></li>
							<li><a href="/myshop/board_list.html">내가 쓴 게시글</a></li>
							<li><a href="/member/modify.html">회원 정보 수정</a></li>
						</ul>
					</div>
					<div>
						<h3 class="helve">CS center</h3>
						<ul>
							<li class="helve" style="font-size: 22px; margin-bottom: 5px;">010-9252-2608</li>
							<li>평일 11:00 - 18:00</li>
							<li>점심 13:00 - 14:00</li>
							<li>토,일,공휴일 휴무</li>
						</ul>
					</div>
					<div>
						<h3 class="helve">Bank info</h3>
						<ul>
							<li>국민 093402-04-081571</li>
							<li>예금주 : (주)ot</li>
						</ul>
					</div>
					<div>
						<h3 class="helve">Instagram</h3>
						<ul>
							<li><a href="https://www.instagram.com/blackup_kr/" target="_blank">@ot_</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<p class="close">X</p>

	</div>
	<!-- All Menu End -->

	<script>
	$('#allmenubar').click(function(){
		$('.animsition').css('overflow','hidden');
		$('.allMenuOuter').fadeIn(500);
		
	});
	$('#allmenubar1').click(function(){
		$('.animsition').css('overflow','hidden');
		$('.allMenuOuter').fadeIn(500);
		
	});
	
	$('.close').click(function(){
		$('.allMenuOuter').fadeOut(500);
		$('.animsition').css('overflow','visible');
	});
	
	</script>


</body>
</html>
