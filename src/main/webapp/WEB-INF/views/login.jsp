<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>winter</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="./css/Login_bootstrap.min.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="./css/Login_style.css">
</head>

<body class="bg-white">
	   <%@include file="header.jsp" %>
    <!--================login_part Area =================-->
    <section class="login_part section_padding">
        <div class="container" align="center">
            <div class="row align-items-center" style="position: relative; right: 26%;">
                <div class="col-lg-6 col-md-6">
                   
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="login_part_form">
                        <div class="login_part_form_iner" style="text-align: center;">
                            <h2 id="login_mark">Login</h2>
                            <form class="row contact_form" action="#" method="post" novalidate="novalidate">
                                <div class="col-md-12 form-group p_star"style="padding: 0px;">
                                    <input type="text" class="form-control" id="name" name="name" value=""
                                        placeholder="Username">
                                </div>
                                <div class="col-md-12 form-group p_star" style="padding: 0px;">
                                    <input type="password" class="form-control" id="password" name="password" value=""
                                        placeholder="Password">
                                </div>
                                <div class="col-md-12 form-group">
                                    <div class="creat_account d-flex align-items-center">
                                        <input type="checkbox" id="f-option" name="selector">
                                        <label for="f-option">Remember me</label>
                                    </div>
                                    <button type="submit" value="submit" class="btn_3">
                                        log in
                                    </button> 
                                    <button style="margin: 0px; background: white;
                                    color: black;" type="submit" value="submit" class="btn_3">
                                        join us
                                    </button>
                                    <a style="margin-top: 10px;margin-right: 14%;" class="lost_pass" href="findId.jsp">forget ID?</a>
                                    <a style="margin-top: 10px;margin-right: 15%;border-right: 2px solid black;padding-right: 13%;" class="lost_pass" href="findpassword.jsp">forget Password?</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================login_part end =================-->

   
   <%@include file="footer.jsp" %>
</body>

</html>