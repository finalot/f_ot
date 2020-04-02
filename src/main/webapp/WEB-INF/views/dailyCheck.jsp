<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="/ot/resources/css/dailyCheck.css">
	 <link rel="stylesheet" href="/ot/resources/css/Login_style.css">	
</head>
<body>
<jsp:include page="header.jsp"/>
		<div align="center" style="margin-top: 5%;background: #f9f9f9;padding: 5%;">
		<h2 style="font-size: 70px;font-weight: bold;">Daily Check Event!!</h2><br><br>
		<p style="font-size: 22px;color: black;">하단의 출석체크 버튼을 눌러주세요! <br>
		누적 7일이상 출석하시면 Ot.에서 사용하실수 있는 쿠폰을 드립니다!
		</p>
		</div>
		
<div class="container" style="margin-top: -5%;max-width: 80%; padding-right: 35px;" align="center">

  <div class="my-calendar clearfix">
  
    <div class="clicked-date">
      <div class="cal-day"></div>
      <div class="cal-date"></div>
    </div>
    
    <div class="calendar-box" >
      <div class="ctr-box clearfix" >
        <button type="button" title="prev" class="btn-cal prev">
        </button>

        <span class="cal-year"style="font-size: 30px;"></span>
        <span style="font-size: 30px;">-</span>
        <span class="cal-month" style="font-size: 30px;"></span>
        <span style="font-size: 30px;">월</span>
        <button type="button" title="next" class="btn-cal next">
        </button>
      </div>
        	<button id="dailyCheck" class="btn_3" style="margin-bottom: 4%;">출석체크</button>
      <table class="cal-table">
        <thead  style="border-top:1px solid lightgray;">
          <tr>
            <th style="color: red;text-align:center;">일</th>
            <th style="text-align:center;">월</th>
            <th style="text-align:center;">화</th>
            <th style="text-align:center;">수</th>
            <th style="text-align:center;">목</th>
            <th style="text-align:center;">금</th>
            <th style="text-align:center;">토</th>
          </tr>
        </thead>
        <tbody class="cal-body"></tbody>
      </table>
    </div>
  </div>
  <!-- // .my-calendar -->
</div>
	
<jsp:include page="footer.jsp"/>
	<script type="text/javascript" src="/ot/resources/js/dailyCheck.js"></script>



<script>
$(function(){
	console.log($('.cal-year').text()+$('.cal-month').text()+$('.cal-table td.today').text());
	
	
});

$('#dailyCheck').click(function(){
	if($('#checkmark').text() == ""){
		
	$('.cal-table td.today').append('<img src="/ot/resources/images/icons/ot.png" alt="로고" style="position:relative;left: 20%;height: auto;width: 60px;">')
	}else{
		alert('이미출석체크 하였습니다')
	};
	
})

</script>
<style>
.clicked-date{
display: none;
}
 .cal-body tr td:first-child{color:red}
 
#checkmark{
background: black;
    color: white;
    font-size: 27px;
    text-align: center;
    margin-left: 29%;
    border-radius: 50%;
    height: 56%;
    width: 35%;
	
} 
 
</style>
</body>
</html>