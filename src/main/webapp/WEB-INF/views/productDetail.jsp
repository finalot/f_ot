<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="/ot/resources/css/mypage_list.css">
<link rel="stylesheet" href="/ot/resources/css/mypage_basic.css">
<link rel="icon" type="image/png" href="/ot/resources/images/icons/favicon.png"/>
<style>

            #container{
                width: 100%;
                height: 100%;
                text-align: center;
                position: absolute;
                left: 0px;
            }

            #profile{
                width: 850px;
                height: 280px;
                padding: 10px;
                padding-top: 25px;
                border: none;
                display: inline-block;
                margin-bottom: 0px;
            }

            .post{
                width: 260px;
                margin: 7px;
            }


            #show-profile{
                width: 850px;
                height: 280px;
                border-radius: 9px;
                position: absolute;
                background: none;
            }
            
            #profilebackgound{
                width: 850px;
                height: 280px;
                background-color: lightgrey;
                border-radius: 9px;
                display: inline-block;
                position:absolute;
				margin-left: -425px; 
				z-index: -1;
                
                -webkit-box-shadow: 0 5px 10px -6px #222;
                -moz-box-shadow: 0 5px 10px -6px #222;
                box-shadow: 0 5px 10px -6px #222;
            }
            

            #profileimgbox{
                width: 170px;
                height: 165px;
                border-radius: 100%;
                float: left;
                margin-top: 110px;
                margin-left: 60px;  
                text-align: center;
                background-color: white;
                box-shadow: 1px 3px 6px 0px #222;

            }
            #profileimg{
                border-radius: 100%;
                width: 160px;
                height: 155px;
                float: left;
                padding: 5px;
                text-align: center;
                display: inline-block;
            }
            

            .profile{
                font-size: 25px;
                margin: 10px;
                margin-top: 1px;

            }

			#hr1{
			 margin: 0px 0px 5px 0px; 
			 width: 850px;
			 display: inline-block;
			 }

            #settingimg{
                width: 50px;
                height: 50px;
            }

            #profilename{
                width: 300px;
                height: 140px;
                margin-top: 130px;
                border: none;
                border-radius: 6px;
                padding: 5px;
                float: left;
                margin-left: 10px;
                text-align: left;
                padding-left: 10px;
                color: white;
            }

            #name{
                font-size: 50px;
            }

            #memo{
                font-size: 25px;
            }

            #profileright{
                width: 130px;
                height: 280px;
                float: right;
                border-radius: 15px;
                text-align: left;
                font-size: 18px;
                color: white;
                padding: 10px;
               
            }

            #profileSetbtn{
                font-family: 'Jua', sans-serif;
                margin-top: 10px;
                font-size: 15px;
                border: none;
                border-radius: 10px;
                width: 100px;
                height: 28px;
                opacity: 70%;
            }

            #settingbtn{
                font-family: 'Jua', sans-serif;
                font-size: 15px;
                width: 70px;
                height: 27px;
                border: none;
                border-radius: 10px;
                margin-left: 25px;
                opacity: 70%;
            }

            #userprofilshow{
                background-color: whitesmoke;
                border: none;
                width: 300px;
                height: 50px;
                

            }
            #modal{
                display: none;
                position: fixed;
                z-index: 10; 
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                overflow: auto;
                background-color: rgb(0,0,0);
                background-color: rgba(0,0,0,0.4);
                text-align: center;
            }

            #modalcontent{
                width: 900px;
                height: 500px;
                font-size: 25px;
                margin-top: 4%;
                display: inline-block;
            }

			.contentimgs{
				width: auto;
                height: 800px;
                float: left;
			 
			}
			
			#dotbox{
				position: absolute;
                background-color: rgba(0,0,0,0.4);
				bottom: 0px;
				left: 200px;
			}

            #modalimg{
            	width:auto;
                height:100%;
                float: left;
            }

            #coments{
                background-color: white;
                width: 400px;
                height: 800px;
                float: left;
                padding: 20px;
                overflow: hidden;
            }
            .coments{
                float: left;
            }

            #innercoment{
                height: 150px;
            }

            #closebtn{
                margin-left: 1050px;
                width: 40px;
                height: 40px;
                background-color: transparent;
                border: 1px solid transparent;
                font-size: 45px;
            }

            #comentarea{
                margin-top: 10px;
            }

            #comentinput{
                width: 245px;
                height: 25px;
                float: left;
            }

            #comentsend{
                height: 25px;
                background-color: lightslategray;
                border: 0px;
                font-size:18px;
            }

            #setting{
                display: none;
                position: fixed;
                z-index: 10; 
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                overflow: auto;
                background-color: rgb(0,0,0);
                background-color: rgba(0,0,0,0.4);
                text-align: center;
            }

            #settinglist{
                height: 490px;
                width: 250px;
                border:none;
                background-color: white;
                border-radius: 15px;
                font-size: 20.5px;
                margin: 120px auto;
                padding-top: 2px;
                display: inline-block;
            }

            #profileModal{
                display: none;
                position: fixed;
                z-index: 10; 
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                overflow: auto;
                background-color: rgb(0,0,0);
                background-color: rgba(0,0,0,0.4);
                text-align: center;
            }
            #profileSet{
                height: 530px;
                width: 260px;
                border:none;
                background-color: white;
                border-radius: 15px;
                font-size: 18px;
                margin: 85px auto;
                padding-top: 2px;
                text-align: center;
                display: inline-block;
            }

            #Public_scope{
                height: 320px;
                width: 250px;
                border: none;
                background-color: white;
                border-radius: 15px;
                font-size: 23px;
                margin: 150px auto;
                padding-top: 10px;
                text-align: center;
                display: inline-block;
            }

            #Public_Scope_Modal{
                display: none;
                position: fixed;
                z-index: 10; 
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                overflow: auto;
                background-color: rgb(0,0,0);
                background-color: rgba(0,0,0,0.4);
                text-align: center;
            }

            #comentSet{
                height: 320px;
                width: 250px;
                border: none;
                background-color: white;
                border-radius: 15px;
                font-size: 23px;
                margin: 150px auto;
                padding-top: 10px;
                text-align: center;
                display: inline-block;
            }

            #comentSetModal{
                display: none;
                position: fixed;
                z-index: 10; 
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                overflow: auto;
                background-color: rgb(0,0,0);
                background-color: rgba(0,0,0,0.4); 
                text-align: center;
            }

            #comenttextarea{
                height: 100px;
                width: 230px;
            }

            #nameSet{
                height: 250px;
                width: 250px;
                border: none;
                background-color: white;
                border-radius: 15px;
                font-size: 23px;
                margin: 150px auto;
                padding-top: 10px;
                text-align: center;
                display: inline-block;
            }

            #nameSetModal{
                display: none;
                position: fixed;
                z-index: 10; 
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                overflow: auto;
                background-color: rgb(0,0,0);
                background-color: rgba(0,0,0,0.4); 
                text-align: center;
                /* display: inline-block; */
            }

            #nametextarea{
                height: 25px;
                width: 230px;
            }

            .checkBox{
               border-radius: 100%;
               width: 15px;
               height: 15px; 
            }
            
            #proImgSet{
             	height: 250px;
                width: 250px;
                border: none;
                background-color: white;
                border-radius: 15px;
                font-size: 23px;
                margin: 150px auto;
                padding-top: 10px;
                text-align: center;
                display: inline-block;
            }
            
            #proImgModal{
             display: none;
                position: fixed;
                z-index: 10; 
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                overflow: auto;
                background-color: rgb(0,0,0);
                background-color: rgba(0,0,0,0.4); 
                text-align: center;
                /* display: inline-block; */
            }
            
              #proimgarea{
                height: 25px;
                width: 230px;
            }
            
             #proBackSet{
             	height: 250px;
                width: 250px;
                border: none;
                background-color: white;
                border-radius: 15px;
                font-size: 23px;
                margin: 150px auto;
                padding-top: 10px;
                text-align: center;
                display: inline-block;
            }
            
            #proBackModal{
             display: none;
                position: fixed;
                z-index: 10; 
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                overflow: auto;
                background-color: rgb(0,0,0);
                background-color: rgba(0,0,0,0.4); 
                text-align: center;
                /* display: inline-block; */
            }
            
              #probackarea{
                height: 25px;
                width: 230px;
            }

.ec-base-table td{
  border-top: 1px solid #EEE !important;
}
.ec-base-table.typeList .center td.left {
    padding-left: 3px;
    text-align: left !important;
 }
 
 
 
.thumb{
 text-align: left !important;
	padding-left: 1% !important;
}
</style>
<title>Product Detail</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="/ot/resources/images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/ot/resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/ot/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/ot/resources/fonts/themify/themify-icons.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/ot/resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/ot/resources/fonts/elegant-font/html-css/style.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="/ot/resources/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/ot/resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/ot/resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/ot/resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="/ot/resources/vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="/ot/resources/css/util.css">
<link rel="stylesheet" type="text/css" href="/ot/resources/css/main.css">
<!--===============================================================================================-->
</head>
<body class="animsition" style="overflow-x:hidden;">

	<!-- Header -->
	<jsp:include page="header.jsp"/>

	<!-- breadcrumb -->
	<div class="bread-crumb bgwhite flex-w p-l-52 p-r-15 p-t-30 p-l-15-sm">
		<a href="index.html" class="s-text16"> Home <i
			class="fa fa-angle-right m-l-8 m-r-9" aria-hidden="true"></i>
		</a> <a href="product.jsp" class="s-text16"> clothing <i
			class="fa fa-angle-right m-l-8 m-r-9" aria-hidden="true"></i>
		</a> <a href="product.jsp" class="s-text16"> 티셔츠/나시 <i
			class="fa fa-angle-right m-l-8 m-r-9" aria-hidden="true"></i>
		</a> <span class="s-text17"> [B-BASIC] 베이직 크롭 컬러나시 </span>
	</div>
<br>
	<!-- Product Detail -->
	<div class="container bgwhite p-t-35 p-b-80" style="padding-bottom:0px;padding-left:0px;padding-right:0px;width:1500px;">
		<div class="flex-w flex-sb">
			<div class="w-size13 p-t-30 respon5">
				<div class="wrap-slick3 flex-sb flex-w">
					<div class="wrap-slick3-dots"></div>

					<div class="wrap-pic-w">
						<img
							src="images/oT/clothing/t_nasi/basic_crop_color_nasi/basic_crop_color_nasi.webp"
							alt="IMG-PRODUCT">
					</div>

					<!-- <div class="item-slick3" data-thumb="images/thumb-item-02.jpg">
							<div class="wrap-pic-w">
								<img src="images/product-detail-02.jpg" alt="IMG-PRODUCT">
							</div>
						</div>

						<div class="item-slick3" data-thumb="images/thumb-item-03.jpg">
							<div class="wrap-pic-w">
								<img src="images/product-detail-03.jpg" alt="IMG-PRODUCT">
							</div>
						</div> -->
				</div>
			</div>
			<div class="w-size14 p-t-30 respon5" style="margin-top:-3%">

				<h4 class="product-detail-name m-text16 p-b-13">[B-BASIC] 베이직
					크롭 컬러나시</h4>

				price&nbsp;:&nbsp;&nbsp; <span class="m-text17 format-money">
					<small>7000</small>

				</span>WON <br> point(1%)&nbsp;:&nbsp;&nbsp; <span class="m-text17">
					<small>70</small>
				</span>p
				<hr>

				<p class="s-text8 p-t-10">핏한 착용감과 세련된 색감으로 간편히 입을 수 있는 크롭 나시입니다.
				</p>
				
				<hr>
				
				<span class="m-text17" ><small>total</small>&nbsp;:&nbsp;&nbsp;
						<font id="total" class="format-money">7000</font>&nbsp;<small>WON</small>
					</span> <br>
					<div class="flex-r-m flex-w p-t-10" style="margin-left:-39%;">
						<div class="w-size16 flex-m flex-w">
							<div class="flex-w bo5 of-hidden m-r-22 m-t-10 m-b-10">
								<button onclick="optionDel();"class="num-product-down color1 flex-c-m size7 bg8 eff2">
									<i class="fs-12 fa fa-minus" aria-hidden="true"></i>
								</button>

								<input class="size8 m-text18 t-center num-product" type="number"
									name="num-product" value="1">


								<button onclick="option1Add();"class="num-product-up color1 flex-c-m size7 bg8 eff2">
									<i class="fs-12 fa fa-plus" aria-hidden="true"></i>
								</button>


							</div>
							<!-- 토탈계산을 위한 프로덕트 price -->
							<input class="num-price" type="hidden" value="7000">

							<div
								class="btn-addcart-product-detail size9 trans-0-4 m-t-10 m-b-10"
								style="width:18%;height:50px;margin-left: 12%">
								<!-- Button -->
								<button
									class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
									<small>장바구니 담기</small>
								</button>
							</div>


							<br>
							<br>
						</div>
						</div>
					<br>
					
				<div class="p-t-33 p-b-60" 
					style="margin-left: -10%;margin-top:-20px; height: 300px; overflow-y: scroll;">
					
					
					
					
					<!-- 셀렉트시작 -->
					
					<div id="select1o">
					<!-- 셀렉 -->
    	
						<div
							style="display: -webkit-box; display: -webkit-flex; display: -moz-box; display: -ms-flexbox; display: flex; -webkit-flex-wrap: wrap; -moz-flex-wrap: wrap; -ms-flex-wrap: wrap; -o-flex-wrap: wrap; flex-wrap: wrap; -ms-align-items: center; align-items: center;">
							<div
								style="font-family: Montserrat-Regular; font-size: 15px; color: #666666; line-height: 1.8; width: 21%; text-align: center;">1.Size</div>

							<div 
								style="padding-top: 10px; background-color: white; line-height: 20px; color: #555555; padding-left: 22px; right: 10px; height: 45px; display: block; border: 1px solid #e6e6e6; border-radius: 2px; overflow: hidden; width: 79%;">
								<select id="select1" style="border:none;background:none;outline: 0;width:98%;" name="size" >
									<option>--------</option>
									<option>XS</option>
									<option>S</option>
									<option>M</option>
									<option>L</option>
								</select>
							</div>
						</div>
						<div style="height: 3px;"></div>
						<div style="display: -webkit-box; display: -webkit-flex; display: -moz-box; display: -ms-flexbox; display: flex; -webkit-flex-wrap: wrap; -moz-flex-wrap: wrap; -ms-flex-wrap: wrap; -o-flex-wrap: wrap; flex-wrap: wrap; -ms-align-items: center; align-items: center;">
							<div
								style="font-family: Montserrat-Regular; font-size: 15px; color: #666666; line-height: 1.8; width: 21%; text-align: center;">1.Color</div>

							<div
								style="padding-top: 10px; background-color: white; line-height: 20px; color: #555555; padding-left: 22px; right: 10px; height: 57px; display: block; border: 1px solid #e6e6e6; border-radius: 2px; overflow: hidden; width: 79%;">

								<select id="select2" style="border:none;background:none;outline: 0;width:98%;hover:black;" name="color">
									<option>--------</option>
									<option>블랙</option>
									<option>그레이</option>
									<option>그린</option>
									<option>네온옐로우</option>
								</select><div/>

								<div
									style="width: 17px; height: 17px; background: black; float: left; border: 1px solid black;"></div>
								<div
									style="width: 17px; height: 17px; background: gray; margin-left: 3px; float: left; border: 1px solid black;"></div>
								<div
									style="width: 17px; height: 17px; background: #39761F; margin-left: 3px; float: left; border: 1px solid black;"></div>
								<div
									style="width: 17px; height: 17px; background: #E4F650; margin-left: 3px; float: left; border: 1px solid black;"></div>
								<div
									style="width: 17px; height: 17px; background: none; margin-left: 3px;"></div>
							</div>
						
					</div>
					
						</div>
						<!-- 셀렉 -->
						<br>
					<!-- 셀렉트끝 -->

					
					</div>

				</div>
<script>
    var count = 2;
    
function option1Add(){
    
    const str = 
   	 `
    <!-- 셀렉2 -->
    	<div id="select`+count+`o">
						<div
							style="display: -webkit-box; display: -webkit-flex; display: -moz-box; display: -ms-flexbox; display: flex; -webkit-flex-wrap: wrap; -moz-flex-wrap: wrap; -ms-flex-wrap: wrap; -o-flex-wrap: wrap; flex-wrap: wrap; -ms-align-items: center; align-items: center;">
							<div
								style="font-family: Montserrat-Regular; font-size: 15px; color: #666666; line-height: 1.8; width: 21%; text-align: center;">`+count+`.Size</div>

							<div 
								style="padding-top: 10px; background-color: white; line-height: 20px; color: #555555; padding-left: 22px; right: 10px; height: 45px; display: block; border: 1px solid #e6e6e6; border-radius: 2px; overflow: hidden; width: 79%;">
								<select id="select1" style="border:none;background:none;outline: 0;width:98%;" name="size" >
									<option mouseover="background:black">--------</option>
									<option>XS</option>
									<option>S</option>
									<option>M</option>
									<option>L</option>
								</select>
							</div>
						</div>
						<div style="height: 3px;"></div>
						<div style="display: -webkit-box; display: -webkit-flex; display: -moz-box; display: -ms-flexbox; display: flex; -webkit-flex-wrap: wrap; -moz-flex-wrap: wrap; -ms-flex-wrap: wrap; -o-flex-wrap: wrap; flex-wrap: wrap; -ms-align-items: center; align-items: center;">
							<div
								style="font-family: Montserrat-Regular; font-size: 15px; color: #666666; line-height: 1.8; width: 21%; text-align: center;">`+count+`.Color</div>

							<div
								style="padding-top: 10px; background-color: white; line-height: 20px; color: #555555; padding-left: 22px; right: 10px; height: 57px; display: block; border: 1px solid #e6e6e6; border-radius: 2px; overflow: hidden; width: 79%;">

								<select id="select2" style="border:none;background:none;outline: 0;width:98%;hover:black;" name="color">
									<option>--------</option>
									<option>블랙</option>
									<option>그레이</option>
									<option>그린</option>
									<option>네온옐로우</option>
								</select><div/>

								<div
									style="width: 17px; height: 17px; background: black; float: left; border: 1px solid black;"></div>
								<div
									style="width: 17px; height: 17px; background: gray; margin-left: 3px; float: left; border: 1px solid black;"></div>
								<div
									style="width: 17px; height: 17px; background: #39761F; margin-left: 3px; float: left; border: 1px solid black;"></div>
								<div
									style="width: 17px; height: 17px; background: #E4F650; margin-left: 3px; float: left; border: 1px solid black;"></div>
								<div
									style="width: 17px; height: 17px; background: none; margin-left: 3px;"></div>
							</div>
						</div>
						<!-- 셀렉2 -->
						</div>
<br id="select`+count+`a">`;
	
    $("#select1o").append(str); 
    count++;
    
}


function optionDel(){
	if(count>2){
    $("#select"+(count-1)+"o").remove();
    $("#select"+(count-1)+"a").remove();
    count--;}
}
</script>


				<div class="p-b-45">
					<span class="s-text8 m-r-35">oT: n-01</span> <span class="s-text8">Categories:
						나시</span>
				</div>

				<style class="modalcss">
.page {
	transition: opacity 0.3s ease-out;
	font-size: 12px;
}

.modal {
	position: relative;
	top: -10%;
}

.reviews_index__body {
	border-bottom: 1px solid #dadada;
}

.reviews_index__no_data_message {
	display: none;
	text-align: center;
	color: #9e9e9e;
	margin-top: 30px;
	font-weight: bold;
}

.reviews_index--gallery .reviews_index__reviews:after {
	clear: both;
	content: ".";
	display: block;
	font-size: 0;
	height: 0;
	line-height: 0;
	visibility: hidden;
}

.photo_review_thumbnail__author_name {
	margin-right: 75px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

.reviews_index_gallery_review__review_product:after {
	clear: both;
	content: ".";
	display: block;
	font-size: 0;
	height: 0;
	line-height: 0;
	visibility: hidden;
}

.reviews_index_gallery_review {
	cursor: pointer;
	float: left;
	font-family: "나눔고딕", "NanumGothic", "맑은 고딕", "Malgun Gothic", "돋움",
		"Dotum", "굴림", "Helvetica Neue", Helvetica, Arial, sans-serif;
	width: 215px;
	border: 1px solid #e5e5e5;
	padding: 0;
	margin: 0 10px 50px 10px;
	box-shadow: 0 3px 3px #fafafa;
	position: relative;
}

.reviews_index__foot {
	text-align: center;
	padding-top: 25px;
}

.reviews_index_gallery_review__review_product {
	padding: 13px 11px;
	height: 40px !important;
	cursor: pointer;
	*min-height: 0;
}
</style>

				<div class="wrap-dropdown-content bo7 p-t-15 p-b-14 modalcss">

					<!-- Trigger/Open The Modal -->
					<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4"
						id="myBtn1" style="width: 40%; float: left;"><small>Review(98)</small></button>
						
					<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4"
						onclick="qna();" style="position: relative; left: 10%; width: 40%;"><small>Q&A(3)</small></button>
						
						<br>
						
					<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4"
						 onclick="washing_tip();" style="width: 40%; float: left;"><small>sizeInfo & wasingTip</small></button>
						 
					<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4"
						onclick="order();" style="position: relative; left: 10%; width: 40%;">Buy Now</button>

<script>

function order(){
	location.href="order.jsp";
}
function washing_tip(){
	location.href="#washing_tip";
}
function qna(){
	location.href="#qna";
}

</script>
   

					<!-- The Modal -->
					<div id="myModal" class="modal">

						<!-- Modal content -->
						<div class="modal-content"
							style="width: 80%; height: 80%; overflow-y: scroll; overflow-x: hidden; margin-top: 100px;">
							<button class="close1"
								style="position: relative; left: 49.5%; top: -2%;">&times;</button>

							<div class="page">

								<img class="." alt="best_review"
									src="/ot/resources/images/oT/common/best_review.jpg" width="100%"
									height="auto" style="margin-left: 2.9%">
									
									<br>
									<div class="products_reviews_form__title" style="float:left;">
      <strong>REVIEW</strong><span class="divider">|</span><span class="weak">문의글 혹은 악의적인 비방글은 무통보 삭제된다는 점 유의해주세요^^</span>
      
    </div>
    					<button class="flex-c-m bg4 bo-rad-23 hov1 s-text1 trans-0-4" onclick="reviewOn();" 
						style="position: relative; left: 55%; width: 7%; height: 20px; font-size: 12px; float:left;background:#c3b798; ">리뷰 작성하기</button>
    					<button class="flex-c-m bg4 bo-rad-23 hov1 s-text1 trans-0-4" onclick="location.href='review.jsp'"
						style="position: relative; left: 56%; width: 7%; height: 20px; font-size: 12px; ">리뷰 게시판</button>
    								<hr>
									<br>
									<!-- 리뷰 작성하기부분 -->

								<div id="reviewWrite"
									style="display: none; -webkit-box-shadow: 0 4px 6px -6px #222;
  -moz-box-shadow: 0 4px 6px -6px #222;
  box-shadow: 0 4px 6px -6px #222;padding: 20px 0px 20px 29px; border-width: 1px; border-style: solid; border-color: rgb(218, 218, 218); border-image: initial; height: 22%; background: white; margin-bottom: 3%;">

									<form action="#">
										<label>키 : <input type="text" placeholder="필수입력"
											style="width: 80px; align: center; height: 25px; border: 2px solid lightgray; text-align: center; border-radius: 10px;"
											maxlength="6">&nbsp;<small>cm</small></label>&nbsp;&nbsp;&nbsp;

										<label>몸무게 : <input type="text" placeholder="필수입력"
											style="width: 80px; height: 25px; border: 2px solid lightgray; text-align: center; border-radius: 10px;"
											maxlength="6">&nbsp;<small>kg</small></label>&nbsp;&nbsp;&nbsp;
											
										<div style="display:inline-block;width: 100px; height: 25px; border: 2px solid lightgray; 
										text-align: center; border-radius: 10px;font-size:10px;">
										<input name="gong" type="radio">공개
										<input name="gong" type="radio">비공개
										</div>
										&nbsp;&nbsp;&nbsp;&nbsp;
										<label>선택한옵션(컬러) : <select style="background: none;width:80px;">
												<option>------</option>
												<option>그레이</option>
												<option>블랙</option>
												<option>네이비</option>
												<option>네온옐로우</option>
										</select> 
										</label>
										
										<label>선택한옵션(사이즈) : <select style="background: none;width:80px;">
												<option>------</option>
												<option>XS</option>
												<option>S</option>
												<option>M</option>
												<option>L</option>
										</select> 
										</label>

										<button  onclick="reviewOff();"
											style="position: relative; float: right; width: 70px; height: 30px; background: black; border-radius: 9%; margin-right: 15px; color: white;">작성
											취소</button>
										<button
											style="position: relative; float: right; width: 70px; height: 30px; background: #c3b798; border-radius: 9%; margin-right: 15px; color: white;">작성
											완료</button>

										<br>
										<br> <input type="file"
											style="background: #c3b798; border: 2px solid lightgray">&nbsp;<input
											type="file"
											style="background: #c3b798; border: 2px solid lightgray">
										<br>
										<br>
										<br> <label>리뷰 내용 <small>(200자 이내)</small><br>
										<textarea maxlength="200"
												style="border: 2px solid lightgray; border-image: initial; width: 700%; height: 270px; resize: none; font-size: 15px;"></textarea></label>
									</form>

								</div>
								
								<hr id="scrollX">

<style>
.moveOn{
 position: relative;
  animation-name: example;
  animation-duration: 2s;  
  animation-fill-mode: forwards;
  }


 
  @keyframes example {
  from {top: -25%; height:600px;background-color: white;}
  to {top: -25%; height:1px;background-color: white;}

 
</style>

								<!-- 리뷰작성 끝 -->
									
									
						<script>
						var scrollX=document.getElementById('scrollX');
						
						function reviewOn() {
							$('#reviewWrite').css("display","block");
							scrollX.className ='moveOn';
						}
						function reviewOff() {
							$('#reviewWrite').css("display","none");
							scrollX.className ='';
						}
						
						</script>			
									
									
					
						
						
						
									
									
									<!-- 리뷰평점부분-->
<style>
.products_reviews_form {
    padding-bottom: 44px;
}
.products_reviews_form__head {
    padding-bottom: 10px;
    margin-bottom: 3px;
    font-family: 나눔고딕, NanumGothic, "맑은 고딕", "Malgun Gothic", 돋움, Dotum, 굴림, "Helvetica Neue", Helvetica, Arial, sans-serif;
    height: 11px;
    line-height: 20px;
}
.products_reviews_form__title {
    font-size: 12px;
    float: left;
}
.products_reviews_form__button {
    float: right;
    width: auto;
    line-height: 20px;
    background-color: rgb(48, 48, 48);
    color: rgb(255, 255, 255);
    text-align: center;
    font-size: 10px;
    cursor: pointer;
    white-space: nowrap;
    border-width: 1px;
    border-style: solid;
    border-color: rgb(16, 16, 16);
    border-image: initial;
    border-radius: 3px;
    padding: 0px 2px;
}
.products_reviews_summary {
    padding: 20px 0px 20px 29px;
    border-width: 1px;
    border-style: solid;
    border-color: rgb(218, 218, 218);
    border-image: initial;
}
.products_reviews_summary__inner {
    position: relative;
}
.products_reviews_summary__lcontent {
    margin-right: 263px;
    padding: 9px 20px 9px 0px;
    border-right: 1px solid rgb(237, 237, 237);
}
.products_reviews_summary__rcontent {
    position: absolute;
    right: 0px;
    top: 0px;
}
.score_summary {
    min-width: 90px;
}
.score_summary__footer {
    font-size: 14px;
    margin-top: 16px;
}
.score_summary__avg_score {
    width: 96px;
    float: left;
}
.score_summary__score_filters {
    padding-left: 120px;
}
.score_summary__average {
    line-height: 77px;
    text-align: center;
    color: white;
    font-size: 50px;
    background: rgb(37, 37, 37);
}
.score_summary__reviews_count {
    text-align: center;
    color: rgb(118, 118, 118);
    padding: 7px;
}
.score_summary__score_filter {
    display: inline-block;
    margin-bottom: 9px;
    height: 14px;
    width: 100%;
}
.score_summary__score_filter a {
    display: block;
    color: rgb(157, 157, 157);
}
.score_summary__score_filter__title {
    float: left;
    width: 50px;
}
.score_summary__score_filter__status {
    float: right;
    width: 64px;
    margin-left: 6px;
}
.score_summary__score_filter__gauge {
    margin-left: 54px;
    margin-right: 70px;
    position: relative;
    background: rgb(244, 244, 244);
}
.score_summary__score_filter__count {
    float: left;
    text-align: right;
    color: rgb(157, 157, 157);
    width: 42px;
}
.score_summary__score_filter__check {
    float: left;
    visibility: hidden;
    margin-left: 10px;
}
.sprites-check {
    vertical-align: middle;
    background-image: url(//assets.cre.ma/latte/assets/sprites-9f78e5e….png);
    width: 12px;
    height: 12px;
    background-repeat: no-repeat;
    background-position: -35px -88px;
}
.score_summary__score_filter a {
    display: block;
    color: rgb(157, 157, 157);
}
.score_summary__score_filter__gauge .percentile {
    width: 0px;
    height: 14px;
    background: rgb(255, 76, 35);
}
.score_summary__footer {
    font-size: 14px;
    margin-top: 16px;
}
.score_summary__footer .percentage {
    color: rgb(110, 182, 126);
}
.products_reviews_summary__rcontent {
    position: absolute;
    right: 0px;
    top: 0px;
}
.products_reviews_summary_thumbnail_small_with_score {
    width: 245px;
}
.products_reviews_summary_thumbnail_small_with_score__items {
    text-align: center;
    font-size: 0px;
    margin-top: 8px;
}
.products_reviews_summary_thumbnail_small_with_score__show_all_photo_reviews {
    text-align: center;
    margin-top: 18px !important;
}
.products_reviews_summary_thumbnail_small_with_score__item_row:first-child {
    margin-top: 0px;
}
.products_reviews_summary_thumbnail_small_with_score__item_row {
    margin-top: 8px;
    display: inline-block;
}
.products_reviews_summary_thumbnail_small_with_score__item:first-child {
    margin-left: 0px;
}
.products_reviews_summary_thumbnail_small_with_score__item {
    float: left;
    margin-left: 4px;
    background: rgb(237, 237, 237);
}
.products_reviews_summary_thumbnail_small_with_score__item_link {
    display: inline-block;
    font-size: 0px;
    position: relative;
}
.products_reviews_summary_thumbnail_small_with_score__show_all_photo_reviews {
    text-align: center;
    margin-top: 18px !important;
}
.widget_reviews {
    padding: 44px 0px;
}
.products_reviews_header {
    font-size: 16px;
}
.widget_reviews__body {
    border-bottom: 1px solid rgb(218, 218, 218);
}
.products_reviews_header__upper {
    font-family: 나눔고딕, NanumGothic, "맑은 고딕", "Malgun Gothic", 돋움, Dotum, 굴림, "Helvetica Neue", Helvetica, Arial, sans-serif;
    position: relative;
}
.products_reviews_header__separator {
    height: 1px;
    background: rgb(218, 218, 218);
    margin: 10px 0px;
}
.products_reviews_header__lower {
    padding-top: 10px;
    padding-bottom: 15px;
}
.products_reviews_header__sort_type--selected {
    color: rgb(51, 51, 51);
    font-size: 16px;
}
.products_reviews_header__sort_type {
    color: rgb(148, 148, 148);
    font-size: 13px;
    letter-spacing: -1px;
}
.products_reviews_header__sort_type_divider {
    font-size: 13px;
    padding: 0px 13px;
}
.products_reviews_header__upper {
    font-family: 나눔고딕, NanumGothic, "맑은 고딕", "Malgun Gothic", 돋움, Dotum, 굴림, "Helvetica Neue", Helvetica, Arial, sans-serif;
    position: relative;
}
.reviews_manager--absolute {
    position: absolute;
    top: 0px;
    right: 0px;
}
.products_reviews_header__separator {
    height: 1px;
    background: rgb(218, 218, 218);
    margin: 10px 0px;
}
.review_options_search__option_types {
    float: right;
}
.widget_reviews__body {
    border-bottom: 1px solid rgb(218, 218, 218);
}
.products_reviews_summary__lcontent {
    margin-right: 263px;
    padding: 9px 20px 9px 0px;
    border-right: 1px solid rgb(237, 237, 237);
}
.score_summary__avg_score {
    width: 96px;
    float: left;
}
.score_summary__average {
    line-height: 77px;
    text-align: center;
    color: white;
    font-size: 50px;
    background: rgb(37, 37, 37);
}
.products_reviews_summary_thumbnail_small_with_score__show_all_photo_reviews_icon {
    display: none;
    position: absolute;
    right: -15px;
}
.sprites-check {
    vertical-align: middle;
    background-image: url(//assets.cre.ma/latte/assets/sprites-9f78e5e….png);
    width: 12px;
    height: 12px;
    background-repeat: no-repeat;
    background-position: -35px -88px;
}
</style>
									<div  style="margin-bottom:5%;-webkit-box-shadow: 0 4px 6px -6px #222;
  -moz-box-shadow: 0 4px 6px -6px #222;
  box-shadow: 0 4px 6px -6px #222;"class="products_reviews_summary
           products_reviews_summary--small_with_score
           products_reviews_summary--without_write_form" data-url="/black-up.kr/products/reviews?app=0&amp;atarget=reviews&amp;iframe=1&amp;iframe_id=crema-product-reviews-1&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fproduct%2Fblack-up-%25EB%25B2%25A0%25EC%259D%25B4%25EC%25A7%2581-%25ED%2581%25AC%25EB%25A1%25AD-%25EC%25BB%25AC%25EB%259F%25AC%25EB%2582%2598%25EC%258B%259C%2F12124%2Fcategory%2F97%2Fdisplay%2F1%2F%3F&amp;product_code=12124&amp;widget_env=100">
    <div class="products_reviews_summary__inner">
      
        <div class="products_reviews_summary__lcontent">
          <div class="score_summary score_summary--list">
  <div class="score_summary__body">
    <div class="score_summary__avg_score">
      <div class="score_summary__average">4.9</div>
      
      <div class="score_summary__reviews_count">395개 리뷰 평점</div>
    </div>
    <ul class="score_summary__score_filters">
      
        <li class="score_summary__score_filter " data-score="5">
          <a class="js-link-score">
            <div class="score_summary__score_filter__title">5Stars</div>
            <div class="score_summary__score_filter__status">
              <div class="score_summary__score_filter__count">(377)</div>
              <div class="score_summary__score_filter__check sprites-check"></div>
            </div>
            <div class="score_summary__score_filter__gauge">
              <div style="width: 95%" class="percentile"></div>
            </div>
          </a>
        </li>
      
        <li class="score_summary__score_filter " data-score="4">
          <a class="js-link-score">
            <div class="score_summary__score_filter__title">4Stars</div>
            <div class="score_summary__score_filter__status">
              <div class="score_summary__score_filter__count">(12)</div>
              <div class="score_summary__score_filter__check sprites-check"></div>
            </div>
            <div class="score_summary__score_filter__gauge">
              <div style="width: 3%" class="percentile"></div>
            </div>
          </a>
        </li>
      
        <li class="score_summary__score_filter " data-score="3">
          <a class="js-link-score">
            <div class="score_summary__score_filter__title">3Stars</div>
            <div class="score_summary__score_filter__status">
              <div class="score_summary__score_filter__count">(5)</div>
              <div class="score_summary__score_filter__check sprites-check"></div>
            </div>
            <div class="score_summary__score_filter__gauge">
              <div style="width: 1%" class="percentile"></div>
            </div>
          </a>
        </li>
      
        <li class="score_summary__score_filter " data-score="2">
          <a class="js-link-score">
            <div class="score_summary__score_filter__title">2Stars</div>
            <div class="score_summary__score_filter__status">
              <div class="score_summary__score_filter__count">(1)</div>
              <div class="score_summary__score_filter__check sprites-check"></div>
            </div>
            <div class="score_summary__score_filter__gauge">
              <div style="width: 0%" class="percentile"></div>
            </div>
          </a>
        </li>
      
        <li class="score_summary__score_filter " data-score="1">
          <a class="js-link-score">
            <div class="score_summary__score_filter__title">1Star</div>
            <div class="score_summary__score_filter__status">
              <div class="score_summary__score_filter__count">(0)</div>
              <div class="score_summary__score_filter__check sprites-check"></div>
            </div>
            <div class="score_summary__score_filter__gauge">
              <div style="width: 0%" class="percentile"></div>
            </div>
          </a>
        </li>
      
    </ul>
  </div>
  <div class="score_summary__footer">
    <span class="percentage">100%</span>
    의 구매자들이 이 상품을 좋아합니다.
    
    
    <span class="score_summary__likes_count">( 395명 중 394명 )</span>
  </div>
</div>

        </div>
        <div class="products_reviews_summary__rcontent" style="margin-left:-1%;">
          
<div class="products_reviews_summary_thumbnail_small_with_score">
  
    <div class="products_reviews_summary_thumbnail_small_with_score__items">
      
        <ul class="products_reviews_summary_thumbnail_small_with_score__item_row">
          
            
            
            
              <li class="products_reviews_summary_thumbnail_small_with_score__item">
                <a data-url="/black-up.kr/reviews/99189/photo_review_popup?app=0&amp;filter=20&amp;iframe=1&amp;iframe_id=crema-product-reviews-1&amp;page=1&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fproduct%2Fblack-up-%25EB%25B2%25A0%25EC%259D%25B4%25EC%25A7%2581-%25ED%2581%25AC%25EB%25A1%25AD-%25EC%25BB%25AC%25EB%259F%25AC%25EB%2582%2598%25EC%258B%259C%2F12124%2Fcategory%2F97%2Fdisplay%2F1%2F%3F&amp;parent_widget_id=2&amp;photo_index=1&amp;product_code=12124&amp;product_id=10590&amp;sort=10&amp;widget_env=100" ,="" class="products_reviews_summary_thumbnail_small_with_score__item_link js-link-fullscreen-popup">
                  
                  <img src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/09/91/89/image1/thumbnail_fda4eef876b2c0dd.jpg" alt="//assets6.cre.ma/p/black-up-kr/reviews/00/00/09/91/89/image1/thumbnail_fda4eef876b2c0dd.jpg" width="54" height="54" class="products_reviews_summary_thumbnail_small_with_score__back_photo grayscale" style="opacity: 1;">
                </a>
              </li>
            
          
            
            
            
              <li class="products_reviews_summary_thumbnail_small_with_score__item">
                <a data-url="/black-up.kr/reviews/118246/photo_review_popup?app=0&amp;filter=20&amp;iframe=1&amp;iframe_id=crema-product-reviews-1&amp;page=1&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fproduct%2Fblack-up-%25EB%25B2%25A0%25EC%259D%25B4%25EC%25A7%2581-%25ED%2581%25AC%25EB%25A1%25AD-%25EC%25BB%25AC%25EB%259F%25AC%25EB%2582%2598%25EC%258B%259C%2F12124%2Fcategory%2F97%2Fdisplay%2F1%2F%3F&amp;parent_widget_id=2&amp;photo_index=1&amp;product_code=12124&amp;product_id=10590&amp;sort=10&amp;widget_env=100" ,="" class="products_reviews_summary_thumbnail_small_with_score__item_link js-link-fullscreen-popup">
                  
                  <img src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/11/82/46/image1/thumbnail_21bdba5e22122276.jpg" alt="//assets6.cre.ma/p/black-up-kr/reviews/00/00/11/82/46/image1/thumbnail_21bdba5e22122276.jpg" width="54" height="54" class="products_reviews_summary_thumbnail_small_with_score__back_photo grayscale" style="opacity: 1;">
                </a>
              </li>
            
          
            
            
            
              <li class="products_reviews_summary_thumbnail_small_with_score__item">
                <a data-url="/black-up.kr/reviews/112232/photo_review_popup?app=0&amp;filter=20&amp;iframe=1&amp;iframe_id=crema-product-reviews-1&amp;page=1&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fproduct%2Fblack-up-%25EB%25B2%25A0%25EC%259D%25B4%25EC%25A7%2581-%25ED%2581%25AC%25EB%25A1%25AD-%25EC%25BB%25AC%25EB%259F%25AC%25EB%2582%2598%25EC%258B%259C%2F12124%2Fcategory%2F97%2Fdisplay%2F1%2F%3F&amp;parent_widget_id=2&amp;photo_index=1&amp;product_code=12124&amp;product_id=10590&amp;sort=10&amp;widget_env=100" ,="" class="products_reviews_summary_thumbnail_small_with_score__item_link js-link-fullscreen-popup">
                 
                  <img src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/11/22/32/image1/thumbnail_0bd7c2eee101616e.jpg" alt="//assets6.cre.ma/p/black-up-kr/reviews/00/00/11/22/32/image1/thumbnail_0bd7c2eee101616e.jpg" width="54" height="54" class="products_reviews_summary_thumbnail_small_with_score__back_photo grayscale" style="opacity: 1;">
                </a>
              </li>
            
          
            
            
            
              <li class="products_reviews_summary_thumbnail_small_with_score__item">
                <a data-url="/black-up.kr/reviews/102392/photo_review_popup?app=0&amp;filter=20&amp;iframe=1&amp;iframe_id=crema-product-reviews-1&amp;page=1&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fproduct%2Fblack-up-%25EB%25B2%25A0%25EC%259D%25B4%25EC%25A7%2581-%25ED%2581%25AC%25EB%25A1%25AD-%25EC%25BB%25AC%25EB%259F%25AC%25EB%2582%2598%25EC%258B%259C%2F12124%2Fcategory%2F97%2Fdisplay%2F1%2F%3F&amp;parent_widget_id=2&amp;photo_index=1&amp;product_code=12124&amp;product_id=10590&amp;sort=10&amp;widget_env=100" ,="" class="products_reviews_summary_thumbnail_small_with_score__item_link js-link-fullscreen-popup">
                  
                  <img src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/10/23/92/image1/thumbnail_1756221246c8471e.jpg" alt="//assets6.cre.ma/p/black-up-kr/reviews/00/00/10/23/92/image1/thumbnail_1756221246c8471e.jpg" width="54" height="54" class="products_reviews_summary_thumbnail_small_with_score__back_photo grayscale" style="opacity: 1;">
                </a>
              </li>
            
          
        </ul>
      
        <ul class="products_reviews_summary_thumbnail_small_with_score__item_row">
          
            
            
            
              <li class="products_reviews_summary_thumbnail_small_with_score__item">
                <a data-url="/black-up.kr/reviews/108463/photo_review_popup?app=0&amp;filter=20&amp;iframe=1&amp;iframe_id=crema-product-reviews-1&amp;page=1&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fproduct%2Fblack-up-%25EB%25B2%25A0%25EC%259D%25B4%25EC%25A7%2581-%25ED%2581%25AC%25EB%25A1%25AD-%25EC%25BB%25AC%25EB%259F%25AC%25EB%2582%2598%25EC%258B%259C%2F12124%2Fcategory%2F97%2Fdisplay%2F1%2F%3F&amp;parent_widget_id=2&amp;photo_index=1&amp;product_code=12124&amp;product_id=10590&amp;sort=10&amp;widget_env=100" ,="" class="products_reviews_summary_thumbnail_small_with_score__item_link js-link-fullscreen-popup">
                 
                  <img src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/10/84/63/image1/thumbnail_a05db29f134c34b3.jpg" alt="//assets6.cre.ma/p/black-up-kr/reviews/00/00/10/84/63/image1/thumbnail_a05db29f134c34b3.jpg" width="54" height="54" class="products_reviews_summary_thumbnail_small_with_score__back_photo grayscale" style="opacity: 1;">
                </a>
              </li>
            
          
            
            
            
              <li class="products_reviews_summary_thumbnail_small_with_score__item">
                <a data-url="/black-up.kr/reviews/144494/photo_review_popup?app=0&amp;filter=20&amp;iframe=1&amp;iframe_id=crema-product-reviews-1&amp;page=2&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fproduct%2Fblack-up-%25EB%25B2%25A0%25EC%259D%25B4%25EC%25A7%2581-%25ED%2581%25AC%25EB%25A1%25AD-%25EC%25BB%25AC%25EB%259F%25AC%25EB%2582%2598%25EC%258B%259C%2F12124%2Fcategory%2F97%2Fdisplay%2F1%2F%3F&amp;parent_widget_id=2&amp;photo_index=1&amp;product_code=12124&amp;product_id=10590&amp;sort=10&amp;widget_env=100" ,="" class="products_reviews_summary_thumbnail_small_with_score__item_link js-link-fullscreen-popup">
                
                  <img src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/14/44/94/image1/thumbnail_56c606efc6baaad0.jpg" alt="//assets6.cre.ma/p/black-up-kr/reviews/00/00/14/44/94/image1/thumbnail_56c606efc6baaad0.jpg" width="54" height="54" class="products_reviews_summary_thumbnail_small_with_score__back_photo grayscale" style="opacity: 1;">
                </a>
              </li>
            
          
            
            
            
              <li class="products_reviews_summary_thumbnail_small_with_score__item">
                <a data-url="/black-up.kr/reviews/123041/photo_review_popup?app=0&amp;filter=20&amp;iframe=1&amp;iframe_id=crema-product-reviews-1&amp;page=2&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fproduct%2Fblack-up-%25EB%25B2%25A0%25EC%259D%25B4%25EC%25A7%2581-%25ED%2581%25AC%25EB%25A1%25AD-%25EC%25BB%25AC%25EB%259F%25AC%25EB%2582%2598%25EC%258B%259C%2F12124%2Fcategory%2F97%2Fdisplay%2F1%2F%3F&amp;parent_widget_id=2&amp;photo_index=1&amp;product_code=12124&amp;product_id=10590&amp;sort=10&amp;widget_env=100" ,="" class="products_reviews_summary_thumbnail_small_with_score__item_link js-link-fullscreen-popup">
                 
                  <img src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/12/30/41/image1/thumbnail_c9149c95281400a7.jpg" alt="//assets6.cre.ma/p/black-up-kr/reviews/00/00/12/30/41/image1/thumbnail_c9149c95281400a7.jpg" width="54" height="54" class="products_reviews_summary_thumbnail_small_with_score__back_photo grayscale" style="opacity: 1;">
                </a>
              </li>
            
          
            
            
            
              <li class="products_reviews_summary_thumbnail_small_with_score__item">
                <a data-url="/black-up.kr/reviews/111847/photo_review_popup?app=0&amp;filter=20&amp;iframe=1&amp;iframe_id=crema-product-reviews-1&amp;page=2&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fproduct%2Fblack-up-%25EB%25B2%25A0%25EC%259D%25B4%25EC%25A7%2581-%25ED%2581%25AC%25EB%25A1%25AD-%25EC%25BB%25AC%25EB%259F%25AC%25EB%2582%2598%25EC%258B%259C%2F12124%2Fcategory%2F97%2Fdisplay%2F1%2F%3F&amp;parent_widget_id=2&amp;photo_index=1&amp;product_code=12124&amp;product_id=10590&amp;sort=10&amp;widget_env=100" ,="" class="products_reviews_summary_thumbnail_small_with_score__item_link js-link-fullscreen-popup">
                 
                  <img src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/11/18/47/image1/thumbnail_b187976297932d92.jpg" alt="//assets6.cre.ma/p/black-up-kr/reviews/00/00/11/18/47/image1/thumbnail_b187976297932d92.jpg" width="54" height="54" class="products_reviews_summary_thumbnail_small_with_score__back_photo grayscale" style="opacity: 1;">
                </a>
              </li>
            
          
        </ul>
      
    </div>
    <div class="products_reviews_summary_thumbnail_small_with_score__show_all_photo_reviews">
      <a class="products_reviews_summary_thumbnail_small_with_score__show_all_photo_reviews_link
                js-link-photo-reviews
                ">
        이 상품의 포토리뷰 모아보기
        <span class="products_reviews_summary_thumbnail_small_with_score__show_all_photo_reviews_icon sprites-check"></span>
      </a>
    </div>
  
</div>

        </div>
      
    </div>
  </div>
									<!-- 리뷰평점부분끝 -->
									<!-- 정렬 부분 버튼 -->
						<div id=sortButton>
									
								<!-- Button -->
								<button id="scoreSort" class=" bg4 bo-rad-23 hov1 s-text1 trans-0-4" href="review.jsp"
						style=" width: 7%; height: 20px; font-size: 12px; background:white;color:gray;"><Strong>평점순</Strong> <small>(100)</small></button>
									
									&nbsp;|
									
								<!-- Button -->
								<button id="recommandSort"class="bg4 bo-rad-23 hov1 s-text1 trans-0-4" href="review.jsp"
						style=" width: 4%; height: 20px; font-size: 12px; background:white;color:gray;"><Strong>좋아요순</Strong></button>
									
									&nbsp;|
									
								<!-- Button -->
								<button id="newSort"class=" bg4 bo-rad-23 hov1 s-text1 trans-0-4" href="review.jsp"
						style=" width: 4%; height: 20px; font-size: 12px; background:white;color:gray;"><Strong>최신순</Strong></button>
									
						</div>
						<!-- 정렬 부분 버튼 -->
						
						
						<div class="products_reviews_header__lower" >
      
  <div class="review_options_search js-review-options-search">
    
    <ul class="review_options_search__option_types"style="border:2px solid lightgray;margin-top:17px;color:#c3b798;">
      <br>
        <li class="review_options_search__option_type">
          <a class="review_options_search__option_type_link js-link-review-option-type">
            <div class="review_options_search__option_type_name" title="키"><small><strong>키</strong></small></div>
            <div class="review_options_search__option_type_dropdown_button">
              <i class="review_options_search__option_type_icon sprites-icon-drop-down-s"></i>
            </div>
          </a>
          <div class="review_options_search__dropdown_menu js-dialog-iframe-height">
            
              <ul class="review_options_search__values"style="margin-left:10px;">
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_3" value="-150" class="checkbox-review-option-search" style="border:none;" id="review_option_type_3_0">
                    <label for="review_option_type_3_0">149 cm 이하</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_3" value="150-153" class="checkbox-review-option-search" style="border:none;" id="review_option_type_3_1">
                    <label for="review_option_type_3_1">150 - 152 cm</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_3" value="153-156" class="checkbox-review-option-search" style="border:none;" id="review_option_type_3_2">
                    <label for="review_option_type_3_2">153 - 155 cm</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_3" value="156-159" class="checkbox-review-option-search" style="border:none;" id="review_option_type_3_3">
                    <label for="review_option_type_3_3">156 - 158 cm</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_3" value="159-162" class="checkbox-review-option-search" style="border:none;" id="review_option_type_3_4">
                    <label for="review_option_type_3_4">159 - 161 cm</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_3" value="162-165" class="checkbox-review-option-search" style="border:none;" id="review_option_type_3_5">
                    <label for="review_option_type_3_5">162 - 164 cm</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_3" value="165-168" class="checkbox-review-option-search" style="border:none;" id="review_option_type_3_6">
                    <label for="review_option_type_3_6">165 - 167 cm</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_3" value="168-171" class="checkbox-review-option-search" style="border:none;" id="review_option_type_3_7">
                    <label for="review_option_type_3_7">168 - 170 cm</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_3" value="171-174" class="checkbox-review-option-search" style="border:none;" id="review_option_type_3_8">
                    <label for="review_option_type_3_8">171 - 173 cm</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_3" value="174-177" class="checkbox-review-option-search" style="border:none;" id="review_option_type_3_9">
                    <label for="review_option_type_3_9">174 - 176 cm</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_3" value="177-180" class="checkbox-review-option-search" style="border:none;" id="review_option_type_3_10">
                    <label for="review_option_type_3_10">177 - 179 cm</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_3" value="180" class="checkbox-review-option-search" style="border:none;" id="review_option_type_3_11">
                    <label for="review_option_type_3_11">180 cm 이상</label>
                  </li>
                
              </ul>
            
          </div>
        </li>
      <br><br>
        <li class="review_options_search__option_type">
          <a class="review_options_search__option_type_link js-link-review-option-type">
            <div class="review_options_search__option_type_name" title="몸무게"><small><strong>몸무게</strong></small></div>
            <div class="review_options_search__option_type_dropdown_button">
              <i class="review_options_search__option_type_icon sprites-icon-drop-down-s"></i>
            </div>
          </a>
          <div class="review_options_search__dropdown_menu js-dialog-iframe-height">
            
              <ul class="review_options_search__values"style="margin-left:11px;">
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_4" value="-45" class="checkbox-review-option-search" style="border:none;" id="review_option_type_4_0">
                    <label for="review_option_type_4_0">44 kg 이하</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_4" value="45-48" class="checkbox-review-option-search" style="border:none;" id="review_option_type_4_1">
                    <label for="review_option_type_4_1">45 - 47 kg</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_4" value="48-51" class="checkbox-review-option-search" style="border:none;" id="review_option_type_4_2">
                    <label for="review_option_type_4_2">48 - 50 kg</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_4" value="51-54" class="checkbox-review-option-search" style="border:none;" id="review_option_type_4_3">
                    <label for="review_option_type_4_3">51 - 53 kg</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_4" value="54-57" class="checkbox-review-option-search" style="border:none;" id="review_option_type_4_4">
                    <label for="review_option_type_4_4">54 - 56 kg</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_4" value="57-60" class="checkbox-review-option-search" style="border:none;" id="review_option_type_4_5">
                    <label for="review_option_type_4_5">57 - 59 kg</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_4" value="60-63" class="checkbox-review-option-search" style="border:none;" id="review_option_type_4_6">
                    <label for="review_option_type_4_6">60 - 62 kg</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_4" value="63-66" class="checkbox-review-option-search" style="border:none;" id="review_option_type_4_7">
                    <label for="review_option_type_4_7">63 - 65 kg</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_4" value="66-69" class="checkbox-review-option-search" style="border:none;" id="review_option_type_4_8">
                    <label for="review_option_type_4_8">66 - 68 kg</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_4" value="69-72" class="checkbox-review-option-search" style="border:none;" id="review_option_type_4_9">
                    <label for="review_option_type_4_9">69 - 71 kg</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_4" value="72-75" class="checkbox-review-option-search" style="border:none;" id="review_option_type_4_10">
                    <label for="review_option_type_4_10">72 - 74 kg</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_4" value="75-78" class="checkbox-review-option-search" style="border:none;" id="review_option_type_4_11">
                    <label for="review_option_type_4_11">75 - 77 kg</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_4" value="78-81" class="checkbox-review-option-search" style="border:none;" id="review_option_type_4_12">
                    <label for="review_option_type_4_12">78 - 80 kg</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_4" value="81" class="checkbox-review-option-search" style="border:none;" id="review_option_type_4_13">
                    <label for="review_option_type_4_13">81 kg 이상</label>
                  </li>
                
              </ul>
            
          </div>
        </li>
      <br><br>
        <li class="review_options_search__option_type">
          <a class="review_options_search__option_type_link js-link-review-option-type">
            <div class="review_options_search__option_type_name" title="평소사이즈-상의"><small><strong>평소사이즈</strong></small></div>
            <div class="review_options_search__option_type_dropdown_button">
              <i class="review_options_search__option_type_icon sprites-icon-drop-down-s"></i>
            </div>
          </a>
          <div class="review_options_search__dropdown_menu js-dialog-iframe-height">
            
              <ul class="review_options_search__values"style="margin-left:12px;">
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_5" value="XS" class="checkbox-review-option-search" style="border:none;" id="review_option_type_5_0">
                    <label for="review_option_type_5_0">XS</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_5" value="S" class="checkbox-review-option-search" style="border:none;" id="review_option_type_5_1">
                    <label for="review_option_type_5_1">S</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_5" value="M" class="checkbox-review-option-search" style="border:none;" id="review_option_type_5_2">
                    <label for="review_option_type_5_2">M</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_5" value="L" class="checkbox-review-option-search" style="border:none;" id="review_option_type_5_3">
                    <label for="review_option_type_5_3">L</label>
                  </li>
                
                  <li class="review_options_search__value">
                    <input type="checkbox" name="option_5" value="XL" class="checkbox-review-option-search" style="border:none;" id="review_option_type_5_4">
                    <label for="review_option_type_5_4">XL</label>
                  </li>
                
              </ul>
            
          </div>
        </li>
      <br>
    </ul>
  </div>


    </div>
						
						
						
						<!-- modal시작!!!!!!!!!!!!!!!!!!!!!!!! -->
									<div id="modal" style="overflow-y:hidden;">
								<div id="modalcontent" style="width:100%;height:100%;margin-left:18.5%;margin-top:80px !important;">
                
               
                
                <div id="modalpost" >
                    <div id="modalimg" class="slideshow-container" style="position:relative;top:-20px;" >
                        
                         <div style="width:10px;height:10px;position:relative;top:400px;left:5px;">
                         <a class="prev" onclick="plusSlides(-1);"style="font-size:25px;background:gray;opacity: 0.6;" ><strong>&#10094;</strong></a>
                         </div>
                        <div style="width:10px;height:10px;position:relative;top:390px;left:780px;">
                        <a class="next" onclick="plusSlides(1);" style="font-size:25px;background:gray;opacity: 0.6;"><strong>&#10095;</strong></a>
                        </div>
                        
                        <div class="mySlides" style="display: block;">
                            <div class="numbertext" ><font style="font-size:14px;">1 / 2</font></div>
                            <img class="contentimgs" src="/ot/resources/images/oT/review/review_sample1.jpg" alt="sample1" style="margin-top:-5%;">
                        </div>
                        
                        <div class="mySlides">
                            <div class="numbertext"><font style="font-size:14px;">2 / 2</font></div>
                            <img class="contentimgs" src="/ot/resources/images/oT/review/review_sample2.jpg" alt="sample2" style="margin-top:-5%;" >
                        </div>
                        
               
                       
                       
                        
                        <div id="dotbox" style="text-align:center">
                            <span class="dot" onclick="currentSlide(1);"></span> 
                            <span class="dot" onclick="currentSlide(2);"></span> 
                           
                        </div>      
                        
                                    
                   </div>
            
               </div>
<button class="close1" onclick="modalclose();"style="position: relative;right: 365px;bottom: 37px;color:ivory;">&times;</button>
                    <div id="coments"style="margin-top:-3px;overflow-y:scroll;" >
								<br>
								<div style="position: relative; top: -6%; font-size:14px;margin:0px 0px -20px 0px;"
											class="reviews_index_gallery_review__review_product js-link-iframe "
											data-url="http://www.black-up.kr/product/detail.html?cate_no=1&amp;product_no=10550">
											<div
												class="reviews_index_gallery_review__review_product_thumbnail">
												<img class="" alt="(BLACK UP) 호딘 트레이닝 팬츠" width="33"
													height="33"
													src="//assets6.cre.ma/p/black-up-kr/products/00/00/00/20/53/image/extra_small_9743a898d5f04dba.jpg"
													style="padding-right: 3%; opacity: 1; float: left;">

											</div>
											<div
												class="reviews_index_gallery_review__review_product_info" >
												<div
													class="reviews_index_gallery_review__product_info_title">
													(BLACK UP) 호딘 트레이닝 팬츠</div>
												<div
													class="reviews_index_gallery_review__product_info_feedbacks" >
	<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>
													<span class="reviews_index_gallery_review__reviews_count" style="color:gray;">
													<small>이대*</small>
													</span>
												</div>
											</div>
										</div>
										<hr>
                        <div style="color:gray; border:1px solid lightgray; font-size:16px;">
                          	<small>이 리뷰를 <strong style="color:black;">2</strong>명이 좋아합니다.</small>
                        </div><hr>
                         <div style="color:gray; border:2px dotted lightgray; font-size:16px;">
                          	선택한 옵션 <br> <small>color : <strong style="color:black;">그레이</strong></small><br>
                          				<small>size : <strong style="color:black;">M</strong></small>	
                        </div><hr>
                        <div id="innercoment">
                            <div class="coments" style="font-size:12px;text-align:left;padding:10px;letter-spacing: 1px;">이런 기본템일수록 핏을 되게 중요하게 생각하는데 이거는 진짜 핏 장난 아닙니다 후후
편하게 입는 꾸안꾸룩 좋아하는데 맨투맨이나 기본 티셔츠에 입어도 편해보이면서 예뻐요! 출근 복장이 자유로운 편이라 자주 입을 것 같습니다ㅎㅎ</div><br>
                            
                           
                        </div>
                         <div style="color:lightgray;font-size:12px;float:right;">2020-03-30</div>
                        <div><hr>
                            <div style="margin-top:-4px;">
                            <font style="font-size:15px;color:gray;">이  리뷰가</font> &nbsp;
                            <button onclick="#" style="font-size: 12px; border: none; border-radius: 10px; background-color: lightgray; color:white; width:60px;height:30px;">좋아요</button>         
                            </div>
                        </div><hr>
                        <div id="comentarea">
                        	<div>
                            <input onkeyPress="reviewReply();" type="text" id="comentinput" placeholder="댓글을 작성해주세요 :)" maxlength="80" style="resize:none; border-radius: 5px 0px 0px 5px; 
                            border: 0.5px solid lightgray; background-color: whitesmoke; padding: 2px; height:40px;width:85%;">
                            <button onclick="" id="comentsend" style=" font-size: 15px;
                             background: white; border: 1px solid lightgray; border-radius:0px 5px 5px 0px; width:50px;height: 40px;position:relative;bottom:2px;">등록</button>
                             </div><br>
                             
                             <div style="color:gray; border:1px solid lightgray; border-radius:5px; font-size:16px;">
                          	<small>우왕 이쁘게입으셧네요오~!</small>
                          	<button style="float:right;">&times;</button><br>
                          	<button style="float:right;font-size:10px;color:#e65540;">&nbsp;&nbsp;신고하기</button>
                          	 <div style="color:lightgray;font-size:11px;float:right;"><font>이대*</font>&nbsp;&nbsp;2020-03-31</div></div><br>
                          	 
                          	 <div style="color:gray; border:1px solid lightgray; border-radius:5px; font-size:16px;">
                          	<small>우왕 야아 으아앙 우오애애애 옿어뺘액애ㅐㄱ빼애애액야아 으아앙 우오애애애 옿어뺘액애ㅐㄱ빼애애액야아 으아앙 우오애애애 옿어뺘액애ㅐㄱ빼애애액야아 으아앙 우오애애애 옿어뺘액애ㅐㄱ빼애애액~!</small>
                          	<button style="float:right;">&times;</button><br>
                          	<button style="float:right;font-size:10px;color:#e65540;">&nbsp;&nbsp;신고하기</button>
                          	 <div style="color:lightgray;font-size:11px;float:right;"><font>박주*</font>&nbsp;&nbsp;2020-03-31</div></div><br>
                          	 
                          	 <div style="color:gray; border:1px solid lightgray; border-radius:5px; font-size:16px;">
                          	<small style="margin:5px 5px 5px 5px;">우왕 아주 사고십구만요 이야아 으아앙 우오애애애 옿어뺘액애ㅐㄱ빼애애액</small>
                          	<button style="float:right;">&times;</button><br>
                          	<button style="float:right;font-size:10px;color:#e65540;">&nbsp;&nbsp;신고하기</button>
                          	 <div style="color:lightgray;font-size:11px;float:right;"><font>이대*</font>&nbsp;&nbsp;2020-03-31</div></div><br>
                        
                        </div>
                    </div>
                            
                </div>
                </div>
                <!-- modal끝!!!!!!!!!!!!!!!!!!!!!!!! -->
									
									<hr style="border:1px solid lightgray;margin-top:2px;">
									<br><br>
								<div class="reviews_index__no_data_message">아직 작성한 리뷰가
									없습니다.</div>
								<ul class="reviews_index__reviews reviews">
								
									<!-- 리뷰1줄 시작 -->
									<!-- 리뷰1 -->
									<li class="reviews_index_gallery_review" id="review1"
										style="-webkit-box-shadow: 0 4px 6px -6px #222;
  -moz-box-shadow: 0 4px 6px -6px #222;
  box-shadow: 0 4px 6px -6px #222;width: 15%; height: 370px; font-size: 11px; border: 2px solid lightgray; border-radius: 2%; margin-left: 2%; margin-top: -1%;">
										<div class="photo_review_thumbnail js-link-fullscreen-popup"
											data-url="/black-up.kr/reviews/180783/photo_review_popup?app=0&amp;iframe=1&amp;iframe_id=crema-reviews-2&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fboard%2Fproduct%2Flist.html%3Fboard_no%3D4&amp;parent_widget_id=29&amp;widget_env=100">
											<div class="photo_review_thumbnail__thumbnail_container">
												<ul>
													<li class="photo_review_thumbnail__review_image_thumbnail">
														<img class="js-review-image"
														alt="그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했"
														src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/18/07/83/image1/portrait_cb3ba3c75d217685.jpg"
														style="width: 100%; opacity: 1; border-bottom: 2px solid lightgray;">
													</li>
												</ul>
												<div class="photo_review_thumbnail__review_info">
													<div
														class="
            photo_review_thumbnail__media_count_indicator
            photo_review_thumbnail__media_count_indicator--total_count_1
          ">
														<div
															class="photo_review_thumbnail__media_count_indicator_dot"></div>
													</div>
												</div>
											</div>
											<div style="border-radius: 2%; width: 90%; margin-left: 5%;"
												class="photo_review_thumbnail__review_author_info">

												<div style="margin-top: 2%; border-radius: 2%;"
													class="photo_review_thumbnail__review_title js-translate-review-message">

													그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했어요! 키가 큰편....</div>
												<br>
												<div style="margin-top: -2%; color: gray;"
													class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">
													<div class="photo_review_thumbnail__author_name"
														style="float: left;">
														<strong>이채*</strong>
													</div>

													<div class="photo_review_thumbnail__created_at"
														style="position: relative; left: 5%;">2020. 03. 18</div>
													<hr>
												</div>
											</div>
										</div>

										<div style="position: relative; top: -6%;"
											class="reviews_index_gallery_review__review_product js-link-iframe "
											data-url="http://www.black-up.kr/product/detail.html?cate_no=1&amp;product_no=10550">
											<div
												class="reviews_index_gallery_review__review_product_thumbnail">
												<img class="" alt="(BLACK UP) 호딘 트레이닝 팬츠" width="33"
													height="33"
													src="//assets6.cre.ma/p/black-up-kr/products/00/00/00/20/53/image/extra_small_9743a898d5f04dba.jpg"
													style="padding-right: 3%; opacity: 1; float: left;">

											</div>
											<div
												class="reviews_index_gallery_review__review_product_info">
												<div
													class="reviews_index_gallery_review__product_info_title">
													(BLACK UP) 호딘 트레이닝 팬츠</div>
												<div
													class="reviews_index_gallery_review__product_info_feedbacks">
													<span class="reviews_index_gallery_review__reviews_count"
														style="color: #c3b798;">리뷰<strong
														style="color: black;">1,841</strong></span> <span
														class="reviews_index_gallery_review__display_score"
														style="color: #c3b798;">평점<strong
														style="color: black;">4.9</strong></span>
														<i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>
														
												</div>
											</div>
										</div>
									</li>
									<!-- 리뷰1 끝 -->
									<!-- 리뷰1 -->
									<li class="reviews_index_gallery_review"
										style="-webkit-box-shadow: 0 4px 6px -6px #222;
  -moz-box-shadow: 0 4px 6px -6px #222;
  box-shadow: 0 4px 6px -6px #222;width: 15%; height: 370px; font-size: 11px; border: 2px solid lightgray; border-radius: 2%; margin-left: 2%; margin-top: -1%;">
										<div class="photo_review_thumbnail js-link-fullscreen-popup"
											data-url="/black-up.kr/reviews/180783/photo_review_popup?app=0&amp;iframe=1&amp;iframe_id=crema-reviews-2&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fboard%2Fproduct%2Flist.html%3Fboard_no%3D4&amp;parent_widget_id=29&amp;widget_env=100">
											<div class="photo_review_thumbnail__thumbnail_container">
												<ul>
													<li class="photo_review_thumbnail__review_image_thumbnail">
														<img class="js-review-image"
														alt="그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했"
														src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/18/07/83/image1/portrait_cb3ba3c75d217685.jpg"
														style="width: 100%; opacity: 1; border-bottom: 2px solid lightgray;">
													</li>
												</ul>
												<div class="photo_review_thumbnail__review_info">
													<div
														class="
            photo_review_thumbnail__media_count_indicator
            photo_review_thumbnail__media_count_indicator--total_count_1
          ">
														<div
															class="photo_review_thumbnail__media_count_indicator_dot"></div>
													</div>
												</div>
											</div>
											<div style="border-radius: 2%; width: 90%; margin-left: 5%;"
												class="photo_review_thumbnail__review_author_info">

												<div style="margin-top: 2%; border-radius: 2%;"
													class="photo_review_thumbnail__review_title js-translate-review-message">

													그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했어요! 키가 큰편....</div>
												<br>
												<div style="margin-top: -2%; color: gray;"
													class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">
													<div class="photo_review_thumbnail__author_name"
														style="float: left;">
														<strong>이채*</strong>
													</div>

													<div class="photo_review_thumbnail__created_at"
														style="position: relative; left: 5%;">2020. 03. 18</div>
													<hr>
												</div>
											</div>
										</div>

										<div style="position: relative; top: -6%;"
											class="reviews_index_gallery_review__review_product js-link-iframe "
											data-url="http://www.black-up.kr/product/detail.html?cate_no=1&amp;product_no=10550">
											<div
												class="reviews_index_gallery_review__review_product_thumbnail">
												<img class="" alt="(BLACK UP) 호딘 트레이닝 팬츠" width="33"
													height="33"
													src="//assets6.cre.ma/p/black-up-kr/products/00/00/00/20/53/image/extra_small_9743a898d5f04dba.jpg"
													style="padding-right: 3%; opacity: 1; float: left;">

											</div>
											<div
												class="reviews_index_gallery_review__review_product_info">
												<div
													class="reviews_index_gallery_review__product_info_title">
													(BLACK UP) 호딘 트레이닝 팬츠</div>
												<div
													class="reviews_index_gallery_review__product_info_feedbacks">
													<span class="reviews_index_gallery_review__reviews_count"
														style="color: #c3b798;">리뷰<strong
														style="color: black;">1,841</strong></span> <span
														class="reviews_index_gallery_review__display_score"
														style="color: #c3b798;">평점<strong
														style="color: black;">4.9</strong></span>
												</div>
											</div>
										</div>
									</li>
									<!-- 리뷰1 끝 -->
									<!-- 리뷰1 -->
									<li class="reviews_index_gallery_review"
										style="-webkit-box-shadow: 0 4px 6px -6px #222;
  -moz-box-shadow: 0 4px 6px -6px #222;
  box-shadow: 0 4px 6px -6px #222;width: 15%; height: 370px; font-size: 11px; border: 2px solid lightgray; border-radius: 2%; margin-left: 2%; margin-top: -1%;">
										<div class="photo_review_thumbnail js-link-fullscreen-popup"
											data-url="/black-up.kr/reviews/180783/photo_review_popup?app=0&amp;iframe=1&amp;iframe_id=crema-reviews-2&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fboard%2Fproduct%2Flist.html%3Fboard_no%3D4&amp;parent_widget_id=29&amp;widget_env=100">
											<div class="photo_review_thumbnail__thumbnail_container">
												<ul>
													<li class="photo_review_thumbnail__review_image_thumbnail">
														<img class="js-review-image"
														alt="그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했"
														src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/18/07/83/image1/portrait_cb3ba3c75d217685.jpg"
														style="width: 100%; opacity: 1; border-bottom: 2px solid lightgray;">
													</li>
												</ul>
												<div class="photo_review_thumbnail__review_info">
													<div
														class="
            photo_review_thumbnail__media_count_indicator
            photo_review_thumbnail__media_count_indicator--total_count_1
          ">
														<div
															class="photo_review_thumbnail__media_count_indicator_dot"></div>
													</div>
												</div>
											</div>
											<div style="border-radius: 2%; width: 90%; margin-left: 5%;"
												class="photo_review_thumbnail__review_author_info">

												<div style="margin-top: 2%; border-radius: 2%;"
													class="photo_review_thumbnail__review_title js-translate-review-message">

													그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했어요! 키가 큰편....</div>
												<br>
												<div style="margin-top: -2%; color: gray;"
													class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">
													<div class="photo_review_thumbnail__author_name"
														style="float: left;">
														<strong>이채*</strong>
													</div>

													<div class="photo_review_thumbnail__created_at"
														style="position: relative; left: 5%;">2020. 03. 18</div>
													<hr>
												</div>
											</div>
										</div>

										<div style="position: relative; top: -6%;"
											class="reviews_index_gallery_review__review_product js-link-iframe "
											data-url="http://www.black-up.kr/product/detail.html?cate_no=1&amp;product_no=10550">
											<div
												class="reviews_index_gallery_review__review_product_thumbnail">
												<img class="" alt="(BLACK UP) 호딘 트레이닝 팬츠" width="33"
													height="33"
													src="//assets6.cre.ma/p/black-up-kr/products/00/00/00/20/53/image/extra_small_9743a898d5f04dba.jpg"
													style="padding-right: 3%; opacity: 1; float: left;">

											</div>
											<div
												class="reviews_index_gallery_review__review_product_info">
												<div
													class="reviews_index_gallery_review__product_info_title">
													(BLACK UP) 호딘 트레이닝 팬츠</div>
												<div
													class="reviews_index_gallery_review__product_info_feedbacks">
													<span class="reviews_index_gallery_review__reviews_count"
														style="color: #c3b798;">리뷰<strong
														style="color: black;">1,841</strong></span> <span
														class="reviews_index_gallery_review__display_score"
														style="color: #c3b798;">평점<strong
														style="color: black;">4.9</strong></span>
												</div>
											</div>
										</div>
									</li>
									<!-- 리뷰1 끝 -->
									<!-- 리뷰1 -->
									<li class="reviews_index_gallery_review"
										style="-webkit-box-shadow: 0 4px 6px -6px #222;
  -moz-box-shadow: 0 4px 6px -6px #222;
  box-shadow: 0 4px 6px -6px #222;width: 15%; height: 370px; font-size: 11px; border: 2px solid lightgray; border-radius: 2%; margin-left: 2%; margin-top: -1%;">
										<div class="photo_review_thumbnail js-link-fullscreen-popup"
											data-url="/black-up.kr/reviews/180783/photo_review_popup?app=0&amp;iframe=1&amp;iframe_id=crema-reviews-2&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fboard%2Fproduct%2Flist.html%3Fboard_no%3D4&amp;parent_widget_id=29&amp;widget_env=100">
											<div class="photo_review_thumbnail__thumbnail_container">
												<ul>
													<li class="photo_review_thumbnail__review_image_thumbnail">
														<img class="js-review-image"
														alt="그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했"
														src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/18/07/83/image1/portrait_cb3ba3c75d217685.jpg"
														style="width: 100%; opacity: 1; border-bottom: 2px solid lightgray;">
													</li>
												</ul>
												<div class="photo_review_thumbnail__review_info">
													<div
														class="
            photo_review_thumbnail__media_count_indicator
            photo_review_thumbnail__media_count_indicator--total_count_1
          ">
														<div
															class="photo_review_thumbnail__media_count_indicator_dot"></div>
													</div>
												</div>
											</div>
											<div style="border-radius: 2%; width: 90%; margin-left: 5%;"
												class="photo_review_thumbnail__review_author_info">

												<div style="margin-top: 2%; border-radius: 2%;"
													class="photo_review_thumbnail__review_title js-translate-review-message">

													그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했어요! 키가 큰편....</div>
												<br>
												<div style="margin-top: -2%; color: gray;"
													class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">
													<div class="photo_review_thumbnail__author_name"
														style="float: left;">
														<strong>이채*</strong>
													</div>

													<div class="photo_review_thumbnail__created_at"
														style="position: relative; left: 5%;">2020. 03. 18</div>
													<hr>
												</div>
											</div>
										</div>

										<div style="position: relative; top: -6%;"
											class="reviews_index_gallery_review__review_product js-link-iframe "
											data-url="http://www.black-up.kr/product/detail.html?cate_no=1&amp;product_no=10550">
											<div
												class="reviews_index_gallery_review__review_product_thumbnail">
												<img class="" alt="(BLACK UP) 호딘 트레이닝 팬츠" width="33"
													height="33"
													src="//assets6.cre.ma/p/black-up-kr/products/00/00/00/20/53/image/extra_small_9743a898d5f04dba.jpg"
													style="padding-right: 3%; opacity: 1; float: left;">

											</div>
											<div
												class="reviews_index_gallery_review__review_product_info">
												<div
													class="reviews_index_gallery_review__product_info_title">
													(BLACK UP) 호딘 트레이닝 팬츠</div>
												<div
													class="reviews_index_gallery_review__product_info_feedbacks">
													<span class="reviews_index_gallery_review__reviews_count"
														style="color: #c3b798;">리뷰<strong
														style="color: black;">1,841</strong></span> <span
														class="reviews_index_gallery_review__display_score"
														style="color: #c3b798;">평점<strong
														style="color: black;">4.9</strong></span>
												</div>
											</div>
										</div>
									</li>
									<!-- 리뷰1 끝 -->
									<!-- 리뷰1 -->
									<li class="reviews_index_gallery_review"
										style="-webkit-box-shadow: 0 4px 6px -6px #222;
  -moz-box-shadow: 0 4px 6px -6px #222;
  box-shadow: 0 4px 6px -6px #222;width: 15%; height: 370px; font-size: 11px; border: 2px solid lightgray; border-radius: 2%; margin-left: 2%; margin-top: -1%;">
										<div class="photo_review_thumbnail js-link-fullscreen-popup"
											data-url="/black-up.kr/reviews/180783/photo_review_popup?app=0&amp;iframe=1&amp;iframe_id=crema-reviews-2&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fboard%2Fproduct%2Flist.html%3Fboard_no%3D4&amp;parent_widget_id=29&amp;widget_env=100">
											<div class="photo_review_thumbnail__thumbnail_container">
												<ul>
													<li class="photo_review_thumbnail__review_image_thumbnail">
														<img class="js-review-image"
														alt="그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했"
														src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/18/07/83/image1/portrait_cb3ba3c75d217685.jpg"
														style="width: 100%; opacity: 1; border-bottom: 2px solid lightgray;">
													</li>
												</ul>
												<div class="photo_review_thumbnail__review_info">
													<div
														class="
            photo_review_thumbnail__media_count_indicator
            photo_review_thumbnail__media_count_indicator--total_count_1
          ">
														<div
															class="photo_review_thumbnail__media_count_indicator_dot"></div>
													</div>
												</div>
											</div>
											<div style="border-radius: 2%; width: 90%; margin-left: 5%;"
												class="photo_review_thumbnail__review_author_info">

												<div style="margin-top: 2%; border-radius: 2%;"
													class="photo_review_thumbnail__review_title js-translate-review-message">

													그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했어요! 키가 큰편....</div>
												<br>
												<div style="margin-top: -2%; color: gray;"
													class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">
													<div class="photo_review_thumbnail__author_name"
														style="float: left;">
														<strong>이채*</strong>
													</div>

													<div class="photo_review_thumbnail__created_at"
														style="position: relative; left: 5%;">2020. 03. 18</div>
													<hr>
												</div>
											</div>
										</div>

										<div style="position: relative; top: -6%;"
											class="reviews_index_gallery_review__review_product js-link-iframe "
											data-url="http://www.black-up.kr/product/detail.html?cate_no=1&amp;product_no=10550">
											<div
												class="reviews_index_gallery_review__review_product_thumbnail">
												<img class="" alt="(BLACK UP) 호딘 트레이닝 팬츠" width="33"
													height="33"
													src="//assets6.cre.ma/p/black-up-kr/products/00/00/00/20/53/image/extra_small_9743a898d5f04dba.jpg"
													style="padding-right: 3%; opacity: 1; float: left;">

											</div>
											<div
												class="reviews_index_gallery_review__review_product_info">
												<div
													class="reviews_index_gallery_review__product_info_title">
													(BLACK UP) 호딘 트레이닝 팬츠</div>
												<div
													class="reviews_index_gallery_review__product_info_feedbacks">
													<span class="reviews_index_gallery_review__reviews_count"
														style="color: #c3b798;">리뷰<strong
														style="color: black;">1,841</strong></span> <span
														class="reviews_index_gallery_review__display_score"
														style="color: #c3b798;">평점<strong
														style="color: black;">4.9</strong></span>
												</div>
											</div>
										</div>
									</li>
									<!-- 리뷰1 끝 -->
									<!-- 리뷰1줄 끝 -->
									<!-- 리뷰2줄 시작-->
									<!-- 리뷰1 -->
									<li class="reviews_index_gallery_review"
										style="-webkit-box-shadow: 0 4px 6px -6px #222;
  -moz-box-shadow: 0 4px 6px -6px #222;
  box-shadow: 0 4px 6px -6px #222;width: 15%; height: 370px; font-size: 11px; border: 2px solid lightgray; border-radius: 2%; margin-left: 2%; margin-top: -1%;">
										<div class="photo_review_thumbnail js-link-fullscreen-popup"
											data-url="/black-up.kr/reviews/180783/photo_review_popup?app=0&amp;iframe=1&amp;iframe_id=crema-reviews-2&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fboard%2Fproduct%2Flist.html%3Fboard_no%3D4&amp;parent_widget_id=29&amp;widget_env=100">
											<div class="photo_review_thumbnail__thumbnail_container">
												<ul>
													<li class="photo_review_thumbnail__review_image_thumbnail">
														<img class="js-review-image"
														alt="그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했"
														src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/18/07/83/image1/portrait_cb3ba3c75d217685.jpg"
														style="width: 100%; opacity: 1; border-bottom: 2px solid lightgray;">
													</li>
												</ul>
												<div class="photo_review_thumbnail__review_info">
													<div
														class="
            photo_review_thumbnail__media_count_indicator
            photo_review_thumbnail__media_count_indicator--total_count_1
          ">
														<div
															class="photo_review_thumbnail__media_count_indicator_dot"></div>
													</div>
												</div>
											</div>
											<div style="border-radius: 2%; width: 90%; margin-left: 5%;"
												class="photo_review_thumbnail__review_author_info">

												<div style="margin-top: 2%; border-radius: 2%;"
													class="photo_review_thumbnail__review_title js-translate-review-message">

													그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했어요! 키가 큰편....</div>
												<br>
												<div style="margin-top: -2%; color: gray;"
													class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">
													<div class="photo_review_thumbnail__author_name"
														style="float: left;">
														<strong>이채*</strong>
													</div>

													<div class="photo_review_thumbnail__created_at"
														style="position: relative; left: 5%;">2020. 03. 18</div>
													<hr>
												</div>
											</div>
										</div>

										<div style="position: relative; top: -6%;"
											class="reviews_index_gallery_review__review_product js-link-iframe "
											data-url="http://www.black-up.kr/product/detail.html?cate_no=1&amp;product_no=10550">
											<div
												class="reviews_index_gallery_review__review_product_thumbnail">
												<img class="" alt="(BLACK UP) 호딘 트레이닝 팬츠" width="33"
													height="33"
													src="//assets6.cre.ma/p/black-up-kr/products/00/00/00/20/53/image/extra_small_9743a898d5f04dba.jpg"
													style="padding-right: 3%; opacity: 1; float: left;">

											</div>
											<div
												class="reviews_index_gallery_review__review_product_info">
												<div
													class="reviews_index_gallery_review__product_info_title">
													(BLACK UP) 호딘 트레이닝 팬츠</div>
												<div
													class="reviews_index_gallery_review__product_info_feedbacks">
													<span class="reviews_index_gallery_review__reviews_count"
														style="color: #c3b798;">리뷰<strong
														style="color: black;">1,841</strong></span> <span
														class="reviews_index_gallery_review__display_score"
														style="color: #c3b798;">평점<strong
														style="color: black;">4.9</strong></span>
												</div>
											</div>
										</div>
									</li>
									<!-- 리뷰1 끝 -->
									<!-- 리뷰1 -->
									<li class="reviews_index_gallery_review"
										style="-webkit-box-shadow: 0 4px 6px -6px #222;
  -moz-box-shadow: 0 4px 6px -6px #222;
  box-shadow: 0 4px 6px -6px #222;width: 15%; height: 370px; font-size: 11px; border: 2px solid lightgray; border-radius: 2%; margin-left: 2%; margin-top: -1%;">
										<div class="photo_review_thumbnail js-link-fullscreen-popup"
											data-url="/black-up.kr/reviews/180783/photo_review_popup?app=0&amp;iframe=1&amp;iframe_id=crema-reviews-2&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fboard%2Fproduct%2Flist.html%3Fboard_no%3D4&amp;parent_widget_id=29&amp;widget_env=100">
											<div class="photo_review_thumbnail__thumbnail_container">
												<ul>
													<li class="photo_review_thumbnail__review_image_thumbnail">
														<img class="js-review-image"
														alt="그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했"
														src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/18/07/83/image1/portrait_cb3ba3c75d217685.jpg"
														style="width: 100%; opacity: 1; border-bottom: 2px solid lightgray;">
													</li>
												</ul>
												<div class="photo_review_thumbnail__review_info">
													<div
														class="
            photo_review_thumbnail__media_count_indicator
            photo_review_thumbnail__media_count_indicator--total_count_1
          ">
														<div
															class="photo_review_thumbnail__media_count_indicator_dot"></div>
													</div>
												</div>
											</div>
											<div style="border-radius: 2%; width: 90%; margin-left: 5%;"
												class="photo_review_thumbnail__review_author_info">

												<div style="margin-top: 2%; border-radius: 2%;"
													class="photo_review_thumbnail__review_title js-translate-review-message">

													그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했어요! 키가 큰편....</div>
												<br>
												<div style="margin-top: -2%; color: gray;"
													class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">
													<div class="photo_review_thumbnail__author_name"
														style="float: left;">
														<strong>이채*</strong>
													</div>

													<div class="photo_review_thumbnail__created_at"
														style="position: relative; left: 5%;">2020. 03. 18</div>
													<hr>
												</div>
											</div>
										</div>

										<div style="position: relative; top: -6%;"
											class="reviews_index_gallery_review__review_product js-link-iframe "
											data-url="http://www.black-up.kr/product/detail.html?cate_no=1&amp;product_no=10550">
											<div
												class="reviews_index_gallery_review__review_product_thumbnail">
												<img class="" alt="(BLACK UP) 호딘 트레이닝 팬츠" width="33"
													height="33"
													src="//assets6.cre.ma/p/black-up-kr/products/00/00/00/20/53/image/extra_small_9743a898d5f04dba.jpg"
													style="padding-right: 3%; opacity: 1; float: left;">

											</div>
											<div
												class="reviews_index_gallery_review__review_product_info">
												<div
													class="reviews_index_gallery_review__product_info_title">
													(BLACK UP) 호딘 트레이닝 팬츠</div>
												<div
													class="reviews_index_gallery_review__product_info_feedbacks">
													<span class="reviews_index_gallery_review__reviews_count"
														style="color: #c3b798;">리뷰<strong
														style="color: black;">1,841</strong></span> <span
														class="reviews_index_gallery_review__display_score"
														style="color: #c3b798;">평점<strong
														style="color: black;">4.9</strong></span>
												</div>
											</div>
										</div>
									</li>
									<!-- 리뷰1 끝 -->
									<!-- 리뷰1 -->
									<li class="reviews_index_gallery_review"
										style="-webkit-box-shadow: 0 4px 6px -6px #222;
  -moz-box-shadow: 0 4px 6px -6px #222;
  box-shadow: 0 4px 6px -6px #222;width: 15%; height: 370px; font-size: 11px; border: 2px solid lightgray; border-radius: 2%; margin-left: 2%; margin-top: -1%;">
										<div class="photo_review_thumbnail js-link-fullscreen-popup"
											data-url="/black-up.kr/reviews/180783/photo_review_popup?app=0&amp;iframe=1&amp;iframe_id=crema-reviews-2&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fboard%2Fproduct%2Flist.html%3Fboard_no%3D4&amp;parent_widget_id=29&amp;widget_env=100">
											<div class="photo_review_thumbnail__thumbnail_container">
												<ul>
													<li class="photo_review_thumbnail__review_image_thumbnail">
														<img class="js-review-image"
														alt="그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했"
														src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/18/07/83/image1/portrait_cb3ba3c75d217685.jpg"
														style="width: 100%; opacity: 1; border-bottom: 2px solid lightgray;">
													</li>
												</ul>
												<div class="photo_review_thumbnail__review_info">
													<div
														class="
            photo_review_thumbnail__media_count_indicator
            photo_review_thumbnail__media_count_indicator--total_count_1
          ">
														<div
															class="photo_review_thumbnail__media_count_indicator_dot"></div>
													</div>
												</div>
											</div>
											<div style="border-radius: 2%; width: 90%; margin-left: 5%;"
												class="photo_review_thumbnail__review_author_info">

												<div style="margin-top: 2%; border-radius: 2%;"
													class="photo_review_thumbnail__review_title js-translate-review-message">

													그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했어요! 키가 큰편....</div>
												<br>
												<div style="margin-top: -2%; color: gray;"
													class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">
													<div class="photo_review_thumbnail__author_name"
														style="float: left;">
														<strong>이채*</strong>
													</div>

													<div class="photo_review_thumbnail__created_at"
														style="position: relative; left: 5%;">2020. 03. 18</div>
													<hr>
												</div>
											</div>
										</div>

										<div style="position: relative; top: -6%;"
											class="reviews_index_gallery_review__review_product js-link-iframe "
											data-url="http://www.black-up.kr/product/detail.html?cate_no=1&amp;product_no=10550">
											<div
												class="reviews_index_gallery_review__review_product_thumbnail">
												<img class="" alt="(BLACK UP) 호딘 트레이닝 팬츠" width="33"
													height="33"
													src="//assets6.cre.ma/p/black-up-kr/products/00/00/00/20/53/image/extra_small_9743a898d5f04dba.jpg"
													style="padding-right: 3%; opacity: 1; float: left;">

											</div>
											<div
												class="reviews_index_gallery_review__review_product_info">
												<div
													class="reviews_index_gallery_review__product_info_title">
													(BLACK UP) 호딘 트레이닝 팬츠</div>
												<div
													class="reviews_index_gallery_review__product_info_feedbacks">
													<span class="reviews_index_gallery_review__reviews_count"
														style="color: #c3b798;">리뷰<strong
														style="color: black;">1,841</strong></span> <span
														class="reviews_index_gallery_review__display_score"
														style="color: #c3b798;">평점<strong
														style="color: black;">4.9</strong></span>
												</div>
											</div>
										</div>
									</li>
									<!-- 리뷰1 끝 -->
									<!-- 리뷰1 -->
									<li class="reviews_index_gallery_review"
										style="-webkit-box-shadow: 0 4px 6px -6px #222;
  -moz-box-shadow: 0 4px 6px -6px #222;
  box-shadow: 0 4px 6px -6px #222;width: 15%; height: 370px; font-size: 11px; border: 2px solid lightgray; border-radius: 2%; margin-left: 2%; margin-top: -1%;">
										<div class="photo_review_thumbnail js-link-fullscreen-popup"
											data-url="/black-up.kr/reviews/180783/photo_review_popup?app=0&amp;iframe=1&amp;iframe_id=crema-reviews-2&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fboard%2Fproduct%2Flist.html%3Fboard_no%3D4&amp;parent_widget_id=29&amp;widget_env=100">
											<div class="photo_review_thumbnail__thumbnail_container">
												<ul>
													<li class="photo_review_thumbnail__review_image_thumbnail">
														<img class="js-review-image"
														alt="그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했"
														src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/18/07/83/image1/portrait_cb3ba3c75d217685.jpg"
														style="width: 100%; opacity: 1; border-bottom: 2px solid lightgray;">
													</li>
												</ul>
												<div class="photo_review_thumbnail__review_info">
													<div
														class="
            photo_review_thumbnail__media_count_indicator
            photo_review_thumbnail__media_count_indicator--total_count_1
          ">
														<div
															class="photo_review_thumbnail__media_count_indicator_dot"></div>
													</div>
												</div>
											</div>
											<div style="border-radius: 2%; width: 90%; margin-left: 5%;"
												class="photo_review_thumbnail__review_author_info">

												<div style="margin-top: 2%; border-radius: 2%;"
													class="photo_review_thumbnail__review_title js-translate-review-message">

													그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했어요! 키가 큰편....</div>
												<br>
												<div style="margin-top: -2%; color: gray;"
													class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">
													<div class="photo_review_thumbnail__author_name"
														style="float: left;">
														<strong>이채*</strong>
													</div>

													<div class="photo_review_thumbnail__created_at"
														style="position: relative; left: 5%;">2020. 03. 18</div>
													<hr>
												</div>
											</div>
										</div>

										<div style="position: relative; top: -6%;"
											class="reviews_index_gallery_review__review_product js-link-iframe "
											data-url="http://www.black-up.kr/product/detail.html?cate_no=1&amp;product_no=10550">
											<div
												class="reviews_index_gallery_review__review_product_thumbnail">
												<img class="" alt="(BLACK UP) 호딘 트레이닝 팬츠" width="33"
													height="33"
													src="//assets6.cre.ma/p/black-up-kr/products/00/00/00/20/53/image/extra_small_9743a898d5f04dba.jpg"
													style="padding-right: 3%; opacity: 1; float: left;">

											</div>
											<div
												class="reviews_index_gallery_review__review_product_info">
												<div
													class="reviews_index_gallery_review__product_info_title">
													(BLACK UP) 호딘 트레이닝 팬츠</div>
												<div
													class="reviews_index_gallery_review__product_info_feedbacks">
													<span class="reviews_index_gallery_review__reviews_count"
														style="color: #c3b798;">리뷰<strong
														style="color: black;">1,841</strong></span> <span
														class="reviews_index_gallery_review__display_score"
														style="color: #c3b798;">평점<strong
														style="color: black;">4.9</strong></span>
												</div>
											</div>
										</div>
									</li>
									<!-- 리뷰1 끝 -->
									<!-- 리뷰1 -->
									<li class="reviews_index_gallery_review"
										style="-webkit-box-shadow: 0 4px 6px -6px #222;
  -moz-box-shadow: 0 4px 6px -6px #222;
  box-shadow: 0 4px 6px -6px #222;width: 15%; height: 370px; font-size: 11px; border: 2px solid lightgray; border-radius: 2%; margin-left: 2%; margin-top: -1%;">
										<div class="photo_review_thumbnail js-link-fullscreen-popup"
											data-url="/black-up.kr/reviews/180783/photo_review_popup?app=0&amp;iframe=1&amp;iframe_id=crema-reviews-2&amp;parent_url=http%3A%2F%2Fblack-up.kr%2Fboard%2Fproduct%2Flist.html%3Fboard_no%3D4&amp;parent_widget_id=29&amp;widget_env=100">
											<div class="photo_review_thumbnail__thumbnail_container">
												<ul>
													<li class="photo_review_thumbnail__review_image_thumbnail">
														<img class="js-review-image"
														alt="그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했"
														src="//assets6.cre.ma/p/black-up-kr/reviews/00/00/18/07/83/image1/portrait_cb3ba3c75d217685.jpg"
														style="width: 100%; opacity: 1; border-bottom: 2px solid lightgray;">
													</li>
												</ul>
												<div class="photo_review_thumbnail__review_info">
													<div
														class="
            photo_review_thumbnail__media_count_indicator
            photo_review_thumbnail__media_count_indicator--total_count_1
          ">
														<div
															class="photo_review_thumbnail__media_count_indicator_dot"></div>
													</div>
												</div>
											</div>
											<div style="border-radius: 2%; width: 90%; margin-left: 5%;"
												class="photo_review_thumbnail__review_author_info">

												<div style="margin-top: 2%; border-radius: 2%;"
													class="photo_review_thumbnail__review_title js-translate-review-message">

													그레이 사고 너무 잘 입어서 블랙 롱 버전으로 재구매했어요! 키가 큰편....</div>
												<br>
												<div style="margin-top: -2%; color: gray;"
													class="photo_review_thumbnail__date_name_container photo_review_thumbnail__date_name_container--show_created_at">
													<div class="photo_review_thumbnail__author_name"
														style="float: left;">
														<strong>이채*</strong>
													</div>

													<div class="photo_review_thumbnail__created_at"
														style="position: relative; left: 5%;">2020. 03. 18</div>
													<hr>
												</div>
											</div>
										</div>

										<div style="position: relative; top: -6%;"
											class="reviews_index_gallery_review__review_product js-link-iframe "
											data-url="http://www.black-up.kr/product/detail.html?cate_no=1&amp;product_no=10550">
											<div
												class="reviews_index_gallery_review__review_product_thumbnail">
												<img class="" alt="(BLACK UP) 호딘 트레이닝 팬츠" width="33"
													height="33"
													src="//assets6.cre.ma/p/black-up-kr/products/00/00/00/20/53/image/extra_small_9743a898d5f04dba.jpg"
													style="padding-right: 3%; opacity: 1; float: left;">

											</div>
											<div
												class="reviews_index_gallery_review__review_product_info">
												<div
													class="reviews_index_gallery_review__product_info_title">
													(BLACK UP) 호딘 트레이닝 팬츠</div>
												<div
													class="reviews_index_gallery_review__product_info_feedbacks">
													<span class="reviews_index_gallery_review__reviews_count"
														style="color: #c3b798;">리뷰<strong
														style="color: black;">1,841</strong></span> <span
														class="reviews_index_gallery_review__display_score"
														style="color: #c3b798;">평점<strong
														style="color: black;">4.9</strong></span>
												</div>
											</div>
										</div>
									</li>
									<!-- 리뷰1 끝 -->
									<!-- 리뷰 2줄 끝 -->
									

								</ul>
							</div>
							<br><hr><br>
<font align="center">
<Strong>1</Strong>&nbsp;&nbsp;...&nbsp;
<a style="border-radius:5px; border:1px solid black;background:black;color:white;">&nbsp;<Strong>6</Strong>&nbsp;</a>&nbsp;&nbsp;
<a><Strong>7</Strong></a>&nbsp;&nbsp;
<a><Strong>8</Strong></a>&nbsp;&nbsp;
<a><Strong>9</Strong></a>&nbsp;&nbsp;
<a><Strong>10</Strong></a>&nbsp;&nbsp;
&nbsp;...&nbsp;&nbsp;<Strong>13</Strong>
</font>
						
					</div>
				</div>
			</div>
		
		</div>
	</div>
	<style>
/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 15% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 50%; /* Could be more or less, depending on screen size */
}
/* The Close Button */
.close1 {
	color: #aaa;
	align: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}
</style>
	<script>
		// Get the modal
		var modal = document.getElementById('myModal');

		// Get the button that opens the modal
		var btn = document.getElementById("myBtn1");

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close1")[0];

		// When the user clicks on the button, open the modal 
		btn.onclick = function() {
			modal.style.display = "block";
		}

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</script>
	<!-- 디테일 사진 시작부분 -->
	<style>
.detail_pic {
	position: relative;
	left: 8.4%;
}
</style>
	<img class="detail_pic"
		src="/ot/resources/images/oT/clothing/t_nasi/detail/basic_crop_color_nasi/basic_crop_color_nasi_1.jpg"
		alt="IMG-PRODUCT" width="1000" height="auto">
	<img class="detail_pic"
		src="/ot/resources/images/oT/clothing/t_nasi/detail/basic_crop_color_nasi/basic_crop_color_nasi_3.jpg"
		alt="IMG-PRODUCT" width="1000" height="auto">
	<img class="detail_pic"
		src="/ot/resources/images/oT/clothing/t_nasi/detail/basic_crop_color_nasi/basic_crop_color_nasi_2.jpg"
		alt="IMG-PRODUCT" width="1000" height="auto">
	<img class="detail_pic"
		src="/ot/resources/images/oT/clothing/t_nasi/detail/basic_crop_color_nasi/basic_crop_color_nasi_5.jpg"
		alt="IMG-PRODUCT" width="1000" height="auto">
	<img class="detail_pic"
		src="/ot/resources/images/oT/clothing/t_nasi/detail/basic_crop_color_nasi/basic_crop_color_nasi_4.jpg"
		alt="IMG-PRODUCT" width="1000" height="auto">
<!-- 디테일 사진 부분 끝-->
<div id="washing_tip"></div>
<br><br>
<!-- 워싱팁 사진-->
<img class="detail_pic"
		src="/ot/resources/images/oT/common/washing_tip1.jpg"
		alt="IMG-PRODUCT" width="1000" height="auto">
<img class="detail_pic"
		src="/ot/resources/images/oT/common/washing_tip.jpg"
		alt="IMG-PRODUCT" width="1000" height="auto">
<!-- 워싱팁 끝-->
<div id="sizeInfo"></div>
	<!-- size info 시작 -->
	<style>
@media ( min-width : 640px) .fit_product_basic {
	position
	:
	 
	relative
	;
	
    
	height
	:
	 
	100%;
	overflow
	:
	 
	hidden
	;
	

}

.text_content--small {
	font-weight: normal;
	font-size: 12px;
	line-height: 1.29;
	color: #191919;
}
</style>
	<br>
	<br>
	<div  class="fit_product_basic text_content--small"
		style="font-size: 15px; text-align: center;">
		<div class="fit_product_basic__left" >



			<div class="fit_product_basic__size">
				<div class="fit_product_basic__size_title" >SIZE INFO</div>
				<div class="fit_product_basic__size_tables">
					<br>


					<table
						class="fit_product_basic__size_table
                fit_product_basic__size_table--free-size
                "
						border="0" cellspacing="0" cellpadding="0"
						style="border-top: 1px solid gray; border-bottom: 1px solid gray; font-size: 15px; width: 800px; margin-left:17%;">
						<thead>
							<tr class="fit_product_basic__size_table_title_row"
								style="background: ivory;">


								<td class="fit_product_basic__size_table_title_col"
									style="width: 20.0%; border-right: 1px solid gray;">어깨단면<br>
								</td>

								<td class="fit_product_basic__size_table_title_col"
									style="width: 20.0%; border-right: 1px solid gray;">가슴단면<br>
								</td>

								<td class="fit_product_basic__size_table_title_col"
									style="width: 20.0%; border-right: 1px solid gray;">암홀단면<br>
								</td>

								<td class="fit_product_basic__size_table_title_col"
									style="width: 20.0%; border-right: 1px solid gray;">밑단단면<br>
								</td>

								<td class="fit_product_basic__size_table_title_col"
									style="width: 20.0%;">총장 <br>
								</td>

								<td style="width: 100%">&nbsp;</td>
							</tr>
						</thead>
						<tbody style="">

							<tr class="fit_product_basic__size_table_content_row">


								<td class="fit_product_basic__size_table_content_col"
									style="width: 20.0%; border-right: 1px solid gray;">28</td>

								<td class="fit_product_basic__size_table_content_col"
									style="width: 20.0%; border-right: 1px solid gray;">34.5</td>

								<td class="fit_product_basic__size_table_content_col"
									style="width: 20.0%; border-right: 1px solid gray;">19.5</td>

								<td class="fit_product_basic__size_table_content_col"
									style="width: 20.0%; border-right: 1px solid gray;">32</td>

								<td class="fit_product_basic__size_table_content_col"
									style="width: 20.0%;">39.5</td>

								<td style="width: 100%">&nbsp;</td>
							</tr>

						</tbody>
					</table>

				</div>
				<div class="fit_product_basic__size_unit" style="margin-left: 63%;"><small>단위:
					cm</small></div>
				<br>
				<br>
				<br>
				<div class="fit_product_basic__size_description">
					사이즈 측정방법에 따라 1~3cm정도의 오차가 있을 수 있습니다.<br>블랙업의 모든 제품의 첫 세탁은
					드라이크리닝을 권장드립니다.<br>세탁 부주의로 인한 제품손상은 교환/환불 사유가 될 수 없습니다.<br>
					<br>모니터 해상도 또는 조명에 따라 실제 상품과 색상차이가 있을 수 있으니<br>구매전
					디테일페이지의 색상을 반드시 참고바랍니다.<br>
					<br>컬러별 제작 과정, 시기에 따라 같은상품이더라도<br>사이즈,색감 차이가 다소 있을 수 있으며
					이는 불량사유가 되지 않습니다.<br>
					<br>짙은 컬러의 상품은 소재 특성상 땀이나 물에 의한 이염 가능성이 있습니다.<br>밝은 색상의
					속옷이나 가방 기타 아이템과의 마찰에 주의하세요.
				</div>
			</div>


		</div>
		<div class="fit_product_basic__right">

			<div class="fit_product_basic__info">
				<div class="fit_product_basic__info_title">
					<br> ㅡ<br> <b> PRODUCT INFO </b>
				</div>
				<div class="fit_product_basic__info_content">
					<br>

					<div class="fit_product_basic__info_item">
						<span class="fit_product_basic__info_key">옵션 컬러</span> : <span
							class="fit_product_basic__info_value">화이트/옐로우/라임/블루/퍼플/라이트카키/딥카키/블랙/스카이블루/베이지</span>
					</div>

					<div class="fit_product_basic__info_item">
						<span class="fit_product_basic__info_key">사이즈</span> : <span
							class="fit_product_basic__info_value">One Size</span>
					</div>

					<div class="fit_product_basic__info_item">
						<span class="fit_product_basic__info_key">모델 착용</span> : <span
							class="fit_product_basic__info_value">화이트(나래)/그린(나래)/블랙(나래)/베이지(나래)</span>
					</div>

					<div class="fit_product_basic__info_item">
						<span class="fit_product_basic__info_key">소재</span> : <span
							class="fit_product_basic__info_value">코튼 95 스판 5</span>
					</div>

				</div>
			</div>
			<br>


			<div class="fit_product_basic__etc">
				<div class="fit_product_basic__etc_description">
					ㅡ<br>
					<b>MD COMMENT</b><br>
					<br>다양한 컬러로 구성된 블랙업 자체 제작 나시입니다. <br>기본적인 심플한 라운드 디자인으로<br>베이직한
					무드를 연출해드리며<br>어떤 룩에도 이지하게 매치해보실 수 있는 <br>활용적인 아이템이에요.<br>바디에
					슬림 하게 피트되어 라인을 더욱 돋보이게 해드리며 <br>착용 시 우수한 텐션감으로 편안하고<br>자유로운
					활동을 도와드드립니다. <br>시즌에 알맞게 단품으로 매치해보셔도 좋으며 <br>이너탑으로도 멋스러운
					스타일링을 해보시기 좋아요. <br>다채로운 컬러들로 구성되어 <br>선택의 폭을 넓게 느끼실 수 있어
					소장을 추천드립니다. <br>모델컷과 상세 사이즈 참고 부탁드려요.<br>
					<br>ㅡ<br>
					<b>MODEL</b> <br>
					<br>나래 : 167cm 55size S(26)<br>
					<br>ㅡ<br>
					<b>PRODUCTION</b><br>
					<br>제조자 : 블랙업 협력업체<br>제조년월 : 2019년 03월<br>상품정보고시항목 :
					관련법에 의거<br>품질보증기준 : 관련법에 의거하여 품질보증기준을 준수함<br>MD/CNKJA/SB
				</div>
			</div>

		</div>
	</div>
	<!-- size info 끝 -->
	<div id="qna"/>
<br><br><br>


<!-- Q&A -->

<div id="container">
        <div id="contents" style="margin-top:11.5%;">
			<div class="mypage_top_outer">
			 
			</div>

			<div class="titleArea">
    			<h2>문의</h2>
			</div>

			<div class="xans-element- xans-layout xans-layout-logincheck ">
			<!--
			    $url = /member/login.html
			-->
			</div>
			
			<div class="xans-element- xans-myshop xans-myshop-wishlist ec-base-table typeList xans-record-">
			<!--
        		$login_page = /member/login.html
       		    $count = 10
  			-->
				<table border="1" summary>
					<caption style="display:none;">관심상품 목록</caption>
       				<colgroup>
						<col style="width:6%;">
						<col style="width:85%">
						<col style="width:auto">
						<col style="width:17%">



					</colgroup>
					<thead>
						<tr>
			                <th scope="col">NO</th>
			                <th scope="col">SUBJECT</th>
			                <th scope="col">WRITER</th>
			                <th scope="col">DATE</th>
            			</tr>
          			</thead>

					<tbody class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center"><!--
                
                --><tr style="background-color:#F9F9F9; color:#555555;" class="xans-record-">
				<td style="font-weight:600;"> 공지</td>
                    <td class="displaynone"></td>
                    <td class="subject left txtBreak">
                        <strong> <a href="/article/배송문의/3001/279655/" style="color:#555555; font-size:14px;">▶ 배송 안내입니다.</a></span></strong>
                    </td>
                    <td>홍길동</td>
                    <td class=""><span class="txtNum">2017-11-09</span></td>
                    <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point0.gif" alt="0점"></td>
                </tr>
		</tbody>	

				<tbody class="xans-element- xans-myshop xans-myshop-wishlistitem center">
          				<tr class="xans-record-">
							<td>
								<!-- no 공지번호 들어갈 곳 -->
									<span id="idMsg4">141261</span>
							</td>
               				<td class="thumb" >
               					<!-- subject 내용 들어갈 곳 -->
               					
                        <img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_lock.gif" alt="비밀글" class="ec-common-rwd-image"> 
                        <a id="idMsg10" style="color:#555555;"href="product_detail_qna_detail.jsp">
                        [배송문의]</a> <img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_new.gif" alt="NEW" class="ec-common-rwd-image"><span class="txtEm"></span>
                    </td>
               				
       						</td>
               				<td class="left">
                   				<!-- writer 내용들어갈곳 -->
								<span id="idMsg11">홍길동</span>
                				<td class="price center"><span id="idMsg4">2020-03-19</span></td>
				                <td class="button">
				                  
				                </td>
           					</tr>
					</tbody>
					
					<tbody class="xans-element- xans-myshop xans-myshop-wishlistitem center">
          				<tr class="xans-record-">
							<td>
								<!-- no 공지번호 들어갈 곳 -->
									<span id="idMsg4">141262</span>
							</td>
               				<td class="subject left txtBreak">
                        &nbsp;&nbsp;&nbsp;<img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_re.gif" alt="답변" class="ec-common-rwd-image"> 
                        <img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_lock.gif" alt="비밀글" class="ec-common-rwd-image"> 
                        <a id="idMsg10" style="color:#555555;">답변완료:)</a> <img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_new.gif" alt="NEW" class="ec-common-rwd-image"><span class="txtEm"></span>
                    </td>
               				
       						</td>
               				<td class="left">
                   				<!-- writer 내용들어갈곳 -->
								<span id="idMsg11">홍길동</span>
                				<td class="price center"><span id="idMsg4">2020-03-19</span></td>
				                <td class="button">
				                  
				                </td>
           					</tr>
					</tbody>
					
        		</table>
        		
		
			</div>
				
        <a href="product_detail_qna_write.jsp" class="hov1 s-text1 trans-0-4 yg_btn_145">
        <span style="position: relative;top: -2px;">write</span></a>
    			
			<div class="xans-element- xans-board xans-board-search-1002 xans-board-search xans-board-1002 "><fieldset class="boardSearch">
<legend>게시물 검색</legend>
            <p style="width:120%;"><select id="search_date" name="search_date">
				<option value="week">일주일</option>
				<option value="month">한달</option>
				<option value="month3">세달</option>
				<option value="all">전체</option>
				</select> 
				<select id="search_key" name="search_key">
				<option value="subject">제목</option>
				<option value="content">내용</option>
				<option value="writer_name">글쓴이</option>
				<option value="member_id">아이디</option>
				<option value="nick_name">별명</option>
				<option value="product">상품정보</option>
				</select> 
		<input id="search" name="search" class="inputTypeText" placeholder="" value="" type="text">
		<a href="#none" onclick="BOARD.form_submit('boardSearchForm');" class="yg_btn_28 yg_btn318">
		<span id="idMsg9">SEARCH</span></a></p>
       	 </fieldset>
	</div>
			
			<div class="xans-element- xans-myshop xans-myshop-orderhistorypaging ec-base-paginate">
				<a href="?page=1&amp;history_start_date=2019-12-15&amp;history_end_date=2020-03-14&amp;past_year=2019" class="first">
					<img src="/ot/resources/images/btn_page_first.gif" alt="첫 페이지"></a>
				<a href="?page=1&amp;history_start_date=2019-12-15&amp;history_end_date=2020-03-14&amp;past_year=2019">
					<img src="/ot/resources/images/btn_page_prev.gif" alt="이전 페이지"></a>
					
					<ol>
						<li class="xans-record-">
							<a href="?page=1&amp;history_start_date=2019-12-15&amp;history_end_date=2020-03-14&amp;past_year=2019" class="this">1</a>
						</li>
       				</ol>
       				
				<a href="?page=1&amp;history_start_date=2019-12-15&amp;history_end_date=2020-03-14&amp;past_year=2019">
					<img src="/ot/resources/images/btn_page_next.gif" alt="다음 페이지"></a>
				<a href="?page=1&amp;history_start_date=2019-12-15&amp;history_end_date=2020-03-14&amp;past_year=2019" class="last">
					<img src="/ot/resources/images/btn_page_last.gif" alt="마지막 페이지"></a>
			</div>

        </div>
		<hr class="layout">
	</div>
<!-- Q&A -->


	<!-- Relate Product -->
	<section class="relateproduct bgwhite p-t-45 p-b-138">
	
			<div class="sec-title p-b-60">
				<h3 class="m-text5 t-center">With Item</h3>
			</div>

			<!-- Slide2 -->
			<div class="wrap-slick2">
				<div class="slick2">

					<!-- 뉴프로덕트블록 샘플 -->
					<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
						<div class="block2">
							<div
								class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
								<img
									src="images/oT/clothing/t_nasi/basic_crop_color_nasi/basic_crop_color_nasi.webp"
									alt="IMG-PRODUCT">

								<div class="block2-overlay trans-0-4">
									<a href="#"
										class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
										class="icon-wishlist icon_heart_alt" aria-hidden="true"></i> <i
										class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
									</a>

									<div class="block2-btn-addcart w-size1 trans-0-4">
										<!-- Button -->
										<button
											class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4"
											style="width: 60%; margin-left: 20%">
											<small>관심상품 담기</small>
										</button>
									</div>
								</div>
							</div>

							<div class="block2-txt p-t-20">
								<span class="block2-price m-text6 p-r-5">
									<div
										style="width: 17px; height: 17px; background: black; float: left; border: 1px solid black;"></div>
									<div
										style="width: 17px; height: 17px; background: gray; margin-left: 3px; float: left; border: 1px solid black;"></div>
									<div
										style="width: 17px; height: 17px; background: #39761F; margin-left: 3px; float: left; border: 1px solid black;"></div>
									<div
										style="width: 17px; height: 17px; background: #E4F650; margin-left: 3px; float: left; border: 1px solid black;"></div>
									<div
										style="width: 17px; height: 17px; background: #4A87B9; margin-left: 3px; float: left; border: 1px solid black;"></div>
								</span> <br> <a href="productDetail.jsp"
									class="block2-name dis-block s-text3 p-b-5"
									style="font-size: 12px"> [B-BASIC] 베이직 크롭 컬러나시 </a> <span
									class="block2-price m-text6 p-r-5"> <small><font
										class="format-money">7000</font> won</small>&nbsp;&nbsp;<font
									style="font-size: 9px; color: gray">리뷰 : 100</font>
								</span>
							</div>
						</div>
					</div>
					<!-- 세일프로덕트블록 샘플 -->
					<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
						<div class="block2">
							<div
								class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
								<img
									src="images/oT/clothing/t_nasi/numb_lettering_t/numb_lettering_t.webp"
									alt="IMG-PRODUCT">

								<div class="block2-overlay trans-0-4">
									<a href="#"
										class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
										class="icon-wishlist icon_heart_alt" aria-hidden="true"></i> <i
										class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
									</a>

									<div class="block2-btn-addcart w-size1 trans-0-4">
										<!-- Button -->
										<button
											class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4"
											style="width: 60%; margin-left: 20%">
											<small>관심상품 담기</small>
										</button>
									</div>
								</div>
							</div>

							<div class="block2-txt p-t-20">
								<span class="block2-price m-text6 p-r-5">
									<div
										style="width: 17px; height: 17px; background: white; float: left; border: 1px solid black;"></div>
								</span> <br> <a href="productDetail.jsp"
									class="block2-name dis-block s-text3 p-b-5"
									style="font-size: 12px"> [B-BASIC] 넘브 레터링 티셔츠 </a> <span
									class="block2-price m-text6 p-r-5"> <small><font
										class="format-money">20000</font> won</small>&nbsp;&nbsp;<font
									style="font-size: 9px; color: gray">리뷰 : 100</font>
								</span>
							</div>
						</div>
					</div>
					<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
						<!-- 기본프로덕트블록 샘플 -->
						<div class="block2">
							<div class="block2-img wrap-pic-w of-hidden pos-relative">
								<img
									src="images/oT/clothing/t_nasi/standard_round_t/standard_round_t.webp"
									alt="IMG-PRODUCT">

								<div class="block2-overlay trans-0-4">
									<a href="#"
										class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
										class="icon-wishlist icon_heart_alt" aria-hidden="true"></i> <i
										class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
									</a>

									<div class="block2-btn-addcart w-size1 trans-0-4">
										<!-- Button -->
										<button
											class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4"
											style="width: 60%; margin-left: 20%">
											<small>관심상품 담기</small>
										</button>
									</div>
								</div>
							</div>

							<div class="block2-txt p-t-20">
								<span class="block2-price m-text6 p-r-5">
									<div
										style="width: 17px; height: 17px; background: black; float: left; border: 1px solid black;"></div>
									<div
										style="width: 17px; height: 17px; background: white; margin-left: 3px; float: left; border: 1px solid black;"></div>
									<div
										style="width: 17px; height: 17px; background: gray; margin-left: 3px; float: left; border: 1px solid black;"></div>
									<div
										style="width: 17px; height: 17px; background: navy; margin-left: 3px; float: left; border: 1px solid black;"></div>
								</span> <br> <a href="productDetail.jsp"
									class="block2-name dis-block s-text3 p-b-5"
									style="font-size: 12px"> [B-BASIC] 베이직 라운드 반팔티 </a> <span
									class="block2-price m-text6 p-r-5"> <small><font
										class="format-money">12000</font> won</small>&nbsp;&nbsp;<font
									style="font-size: 9px; color: gray">리뷰 : 100</font>
								</span>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15">
						<!-- Block2 -->
						<div class="block2">
							<div
								class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
								<img src="images/item-07.jpg" alt="IMG-PRODUCT">

								<div class="block2-overlay trans-0-4">
									<a href="#"
										class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
										class="icon-wishlist icon_heart_alt" aria-hidden="true"></i> <i
										class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
									</a>

									<div class="block2-btn-addcart w-size1 trans-0-4">
										<!-- Button -->
										<button
											class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4"
											style="width: 60%; margin-left: 20%">
											<small>관심상품 담기</small>
										</button>
									</div>
								</div>
							</div>

							<div class="block2-txt p-t-20">
								<a href="product-detail.html"
									class="block2-name dis-block s-text3 p-b-5"> Frayed denim
									shorts </a> <span class="block2-oldprice m-text7 p-r-5">
									$29.50 </span> <span class="block2-newprice m-text8 p-r-5">
									$15.90 </span>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15">
						<!-- Block2 -->
						<div class="block2">
							<div
								class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
								<img src="images/item-02.jpg" alt="IMG-PRODUCT">

								<div class="block2-overlay trans-0-4">
									<a href="#"
										class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
										class="icon-wishlist icon_heart_alt" aria-hidden="true"></i> <i
										class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
									</a>

									<div class="block2-btn-addcart w-size1 trans-0-4">
										<!-- Button -->
										<button
											class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4"
											style="width: 60%; margin-left: 20%">
											<small>관심상품 담기</small>
										</button>
									</div>
								</div>
							</div>

							<div class="block2-txt p-t-20">
								<a href="product-detail.html"
									class="block2-name dis-block s-text3 p-b-5"> Herschel
									supply co 25l </a> <span class="block2-price m-text6 p-r-5">
									$75.00 </span>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-img wrap-pic-w of-hidden pos-relative">
								<img src="images/item-03.jpg" alt="IMG-PRODUCT">

								<div class="block2-overlay trans-0-4">
									<a href="#"
										class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
										class="icon-wishlist icon_heart_alt" aria-hidden="true"></i> <i
										class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
									</a>

									<div class="block2-btn-addcart w-size1 trans-0-4">
										<!-- Button -->
										<button
											class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4"
											style="width: 60%; margin-left: 20%">
											<small>관심상품 담기</small>
										</button>
									</div>
								</div>
							</div>

							<div class="block2-txt p-t-20">
								<a href="product-detail.html"
									class="block2-name dis-block s-text3 p-b-5"> Denim jacket
									blue </a> <span class="block2-price m-text6 p-r-5"> $92.50 </span>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-img wrap-pic-w of-hidden pos-relative">
								<img src="images/item-05.jpg" alt="IMG-PRODUCT">

								<div class="block2-overlay trans-0-4">
									<a href="#"
										class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
										class="icon-wishlist icon_heart_alt" aria-hidden="true"></i> <i
										class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
									</a>

									<div class="block2-btn-addcart w-size1 trans-0-4">
										<!-- Button -->
										<button
											class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4"
											style="width: 60%; margin-left: 20%">
											<small>관심상품 담기</small>
										</button>
									</div>
								</div>
							</div>

							<div class="block2-txt p-t-20">
								<a href="product-detail.html"
									class="block2-name dis-block s-text3 p-b-5"> Coach slim
									easton black </a> <span class="block2-price m-text6 p-r-5">
									$165.90 </span>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15">
						<!-- Block2 -->
						<div class="block2">
							<div
								class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
								<img src="images/item-07.jpg" alt="IMG-PRODUCT">

								<div class="block2-overlay trans-0-4">
									<a href="#"
										class="block2-btn-addwishlist hov-pointer trans-0-4"> <i
										class="icon-wishlist icon_heart_alt" aria-hidden="true"></i> <i
										class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
									</a>

									<div class="block2-btn-addcart w-size1 trans-0-4">
										<!-- Button -->
										<button
											class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4"
											style="width: 60%; margin-left: 20%">
											<small>관심상품 담기</small>
										</button>
									</div>
								</div>
							</div>

							<div class="block2-txt p-t-20">
								<a href="product-detail.html"
									class="block2-name dis-block s-text3 p-b-5"> Frayed denim
									shorts </a> <span class="block2-oldprice m-text7 p-r-5">
									$29.50 </span> <span class="block2-newprice m-text8 p-r-5">
									$15.90 </span>
							</div>
						</div>
					</div>
				</div>
			
</div>

</section>




	<!-- Container Selection -->
	<div id="dropDownSelect1"></div>
	<div id="dropDownSelect2"></div>

<div style=" width: 160%; margin-left:-30%;">
<!-- Footer -->
<jsp:include page="footer.jsp"/>
</div>


	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/bootstrap/js/popper.js"></script>
	<script type="text/javascript"
		src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/select2/select2.min.js"></script>
	<script type="text/javascript">
		$(".selection-1").select2({
			minimumResultsForSearch : 20,
			dropdownParent : $('#dropDownSelect1')
		});

		$(".selection-2").select2({
			minimumResultsForSearch : 20,
			dropdownParent : $('#dropDownSelect2')
		});
		
		
	</script>
	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/slick/slick.min.js"></script>
	<script type="text/javascript" src="js/slick-custom.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="vendor/sweetalert/sweetalert.min.js"></script>
	<script type="text/javascript">
		$('.block2-btn-addcart').each(
				function() {
					var nameProduct = $(this).parent().parent().parent().find(
							'.block2-name').html();
					$(this).on('click', function() {
						swal(nameProduct, "관심상품에 등록되었습니다 !", "success");
					});
				});

		$('.block2-btn-addwishlist').each(
				function() {
					var nameProduct = $(this).parent().parent().parent().find(
							'.block2-name').html();
					$(this).on('click', function() {
						swal(nameProduct, "Like 되었습니다 !", "success");
					});
				});

		$('.btn-addcart-product-detail').each(function() {
			var nameProduct = $('.product-detail-name').html();
			$(this).on('click', function() {
				swal(nameProduct, "장바구니에 등록되었습니다 !", "success");
			});
		});
	</script>

	<!--===============================================================================================-->
	<script src="js/main.js"></script>
	<script>
	

	$('#review1').on('click',function modalOpen(){
        var ulr = $(this).attr("src");
        $("#modalimg").attr("src", ulr);            
        $('#modal').show();

        
    });
	  

      function modalclose(){
          $('#modal').css("display","none");
      }
	
      var slideIndex = 1;


      showSlides(slideIndex);

      function plusSlides(n) {
          showSlides(slideIndex += n);
      }

      function currentSlide(n) {
          showSlides(slideIndex = n);
      }

      function showSlides(n) {
          var i;
          var slides = document.getElementsByClassName("mySlides");
          var dots = document.getElementsByClassName("dot");
          if (n > slides.length) {slideIndex = 1}    
          if (n < 1) {slideIndex = slides.length}
          for (i = 0; i < slides.length; i++) {
              slides[i].style.display = "none";  
          }
          for (i = 0; i < dots.length; i++) {
              dots[i].className = dots[i].className.replace(" active", "");
          }
          slides[slideIndex-1].style.display = "block";  
          dots[slideIndex-1].className += " active";
      }
	
	
		/*[ +/- num product ]
		 ===========================================================*/
		 
		$('.num-product-down').on('click', function(e) {
			e.preventDefault();
			var numProduct = Number($(this).next().val());
			if (numProduct > 1)
				$(this).next().val(numProduct - 1);
			var num1 = jQuery('.num-product').val();
			var price = jQuery('.num-price').val();
			console.log(num1);
			console.log(price);
			var total1 = num1*price;
			$('#total').text(total1.format());
		});

		$('.num-product-up').on('click', function(e) {
			e.preventDefault();
			var numProduct = Number($(this).prev().val());
			$(this).prev().val(numProduct + 1);
			var num2 = jQuery('.num-product').val();
			var price = jQuery('.num-price').val();
			console.log(num2);
			console.log(price);
			var total2 = num2*price;
			$('#total').text(total2.format());
		});
		

	</script>
	
</body>
		

</html>
