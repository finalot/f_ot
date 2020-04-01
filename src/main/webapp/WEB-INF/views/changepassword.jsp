<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ot</title>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>winter</title>
    <link rel="icon" href="img/favicon.png">
    <!-- Bootstrap CSS -->
   <link rel="stylesheet" href="./css/Login_bootstrap.min.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="./css/Login_style.css">
</head>
<body>
<%@include file="header.jsp"%>
   <section class="login_part section_padding">
        <div class="container" align="center">
            <div class="row align-items-center" style="position: relative; right: 26%;">
                <div class="col-lg-6 col-md-6">
                   
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="login_part_form">
                        <div class="login_part_form_iner" style="text-align: center;">
                            <h2 id="login_mark">CHANGE PASSWORD</h2>
                            		새로 사용하실 비밀번호를 입력해 주세요 <br><br><br>
                            <div>
                            <div style=" border: 1px solid gray; padding-top: 35px;" class="row contact_form" >
                               
                                <div class="col-md-12 form-group p_star">
                                   <span style="padding-right: 54px;">신규 비밀번호</span> <input style="display: inline-block;
                                    width: 50%;" type="text" class="form-control" id="name" name="name" value="">
                                </div>
                                <div class="col-md-12 form-group p_star">
                                   <span style="padding-right: 20px;">신규 비밀번호 확인 </span><input style="display: inline-block;
                                   width: 50%;" type="text" class="form-control" id="birthday" name="birthday" value="" maxlength="6">
                                </div>
                                <div class="col-md-12 form-group">
                                    <div class="creat_account d-flex align-items-center">
                                     
                                    </div>
                                    <a href="#layer2" id="findid" class="btn_3">
                                 		     변경
                                    </a> 
                                  
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
          </section>
       <%@include file="footer.jsp" %>
</body>
</html>