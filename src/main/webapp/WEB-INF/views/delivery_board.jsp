<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<title>배송문의</title>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<!--    <link rel="stylesheet" href="./css/Login_style.css"> -->
<link rel="stylesheet" href="./css/mypage_list.css">
<link rel="stylesheet" href="./css/mypage_basic.css">
<link rel="icon" type="image/png" href="images/icons/favicon.png"/>
</head>
<style>
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
<body>
	<%@include file="header.jsp" %>	
 	
	
    <div id="container">
        <div id="contents" style="margin-top:11.5%;">
			<div class="mypage_top_outer">
			 
			</div>

			<div class="titleArea">
    			<h2>배송 문의</h2>
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
                        <strong> <a href="/article/배송문의/3001/279655/" style="color:#555555; font-size:12px;">▶ 배송 안내입니다.</a></span></strong>
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
                        <a id="idMsg10" style="color:#555555;" href="delivery_board_detail.jsp">
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
                        <a id="idMsg10" style="color:#555555;" href="delivery_board_reply.jsp">
                        답변완료 :)</a> <img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_new.gif" alt="NEW" class="ec-common-rwd-image"><span class="txtEm"></span>
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
				
        <a href="delivery_board_write.jsp" class="hov1 s-text1 trans-0-4 yg_btn_145">
        <span style="position: relative;top: -2px;">write</span></a>
    			
			<div class="xans-element- xans-board xans-board-search-1002 xans-board-search xans-board-1002 "><fieldset class="boardSearch">
<legend>게시물 검색</legend>
            <p><select id="search_date" name="search_date">
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
					<img src="/ot/images/btn_page_first.gif" alt="첫 페이지"></a>
				<a href="?page=1&amp;history_start_date=2019-12-15&amp;history_end_date=2020-03-14&amp;past_year=2019">
					<img src="/ot/images/btn_page_prev.gif" alt="이전 페이지"></a>
					
					<ol>
						<li class="xans-record-">
							<a href="?page=1&amp;history_start_date=2019-12-15&amp;history_end_date=2020-03-14&amp;past_year=2019" class="this">1</a>
						</li>
       				</ol>
       				
				<a href="?page=1&amp;history_start_date=2019-12-15&amp;history_end_date=2020-03-14&amp;past_year=2019">
					<img src="/ot/images/btn_page_next.gif" alt="다음 페이지"></a>
				<a href="?page=1&amp;history_start_date=2019-12-15&amp;history_end_date=2020-03-14&amp;past_year=2019" class="last">
					<img src="/ot/images/btn_page_last.gif" alt="마지막 페이지"></a>
			</div>

        </div>
		<hr class="layout">
	</div>
	
 <%@include file="footer.jsp" %>
</body>
</html>