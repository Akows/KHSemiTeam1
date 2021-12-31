<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>u12_주문내역조회</title>
	<link rel="stylesheet" href="./Resources/Order/u_order_list.css">
	
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	
	<!-- jQuery library -->
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
	
	<!-- Popper JS -->
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	
	<!-- Latest compiled JavaScript -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

	<%@ include file="../Common/u_menubar.jsp" %>


<%-- 
	<nav>
		<img src="Resources/img/Logo/로고 사진 연그레이 s.png" id="icon1">   
        <img src="Resources/img/Logo/로고 글자 연그레이 s.png" id="icon2">
        <ul id="navi">
            <li><a href="#">카테고리</a></li>
            <li><a href="#">베스트</a></li>
            <li><a href="#">신상품</a></li>
            <li><a href="#">QnA</a></li>

            <div id="search">
                <input type="text" placeholder="내용을 입력해주세요" >
                <button>검색</button>
            </div>

            <li id="lojo"><a href="#">로그인</a> <label> | </label> <a href="#">회원가입</a></li>
        </ul>
    </nav>
--%>

    <form>
        <div class="src">
            <a href="#"><img src="Resources/img/i_con/home_icon.png"id="icon3"></a>
            <label> > </label>
            <a href="#" id="mypage">마이페이지</a>
            <label> > </label>
            <a href="#" id="ordercheck">주문내역조회</a>
        </div>


        <table class="t1">
            <tr >
                <th colspan="3"></th>
                <th id="cg">출고준비</th>
                <th></th>
                <th id="ordate1">주문일자 : </th>
                <th id="ordate2" colspan="3">2021/12/15</th>
            </tr>

            <tr>
                <td id="gc1-3"></td>
                <td id="gc1-2" ><img src="Resources/img/Bookcover/자바의정석.JPG" id="img"></td>
                <td id="gc1-2" ></td>
                <td id="gc1-2" colspan="2"></td>
                <td id="gc1-2"></td>
                <td id="gc1-2" colspan="2"></td>
                <td id="gc1-3"></td>
                
            </tr>

            <tr>
                <td id="gc1-2" colspan="3"></td>
                <td id="gc" colspan="2"><b>자바의 정석</b> (외3)</td>
                <td id="gc1-2"></td>
                <td id="gc1-2"></td>
                <td id="gc">89,000￦</td>
                <td id="gc1-3"></td>

            </tr>

            <tr>
                <td id="gc1-2" colspan="3"></td>
                <td id="bg" colspan="2">· 자바의 정석</td>
                <td id="bg"></td>
                <td id="bg">1권</td>
                <td id="bg">32,000￦</td>
                <td id="gc1-2" colspan="3"></td>
            </tr>

            <tr>
                <td id="gc1-2" colspan="3"></td>
                <td id="bg" colspan="2">· SQL의 정석</td>
                <td id="bg"></td>
                <td id="bg">1권</td>
                <td id="bg">25,000￦</td>
                <td id="gc1-2" colspan="3"></td>
            </tr>

            <tr>
                <td id="gc1-2" colspan="3"></td>
                <td id="bg" colspan="2">· DO IT! Java</td>
                <td id="bg"></td>
                <td id="bg">1권</td>
                <td id="bg">32,000￦</td>
                <td id="gc1-2" colspan="3"></td>
            </tr>

            <tr>
                <td id="gc1-4" colspan="9"></td>
                <!-- <td id="gc1-4" ></td>
                <td id="gc1-4" ></td>
                <td id="gc1-4" ></td>
                <td id="gc1-4" ></td>
                <td id="gc1-4" colspan="3" ></td> -->
            </tr>
        </table>

        <br><br>

        <table class="t2" >
            <tr >
                <th colspan="3"></th>
                <th id="cg">배송 중</th>
                <th></th>
                <th id="ordate1">주문일자 : </th>
                <th id="ordate2" colspan="3">2021/12/17</th>
            </tr>

            <tr>
                <td id="gc1-3"></td>
                <td id="gc1-2" ><img src="Resources/img/Bookcover/book_java4.png" id="img"></td>
                <td id="gc1-2" ></td>
                <td id="gc1-2" colspan="2"></td>
                <td id="gc1-2"></td>
                <td id="gc1-2" colspan="2"></td>
                <td id="gc1-3"></td>
                
            </tr>

            <tr>
                <td id="gc1-2" colspan="3"></td>
                <td id="gc" colspan="2"><b>코어 자바스크립트</b> (외2)</td>
                <td id="gc1-2"></td>
                <td id="gc1-2"></td>
                <td id="gc">47,000￦</td>
                <td id="gc1-3"></td>

            </tr>

            <tr>
                <td id="gc1-2" colspan="3"></td>
                <td id="bg" colspan="2">· 코어 자바 스크립트</td>
                <td id="bg"></td>
                <td id="bg">1권</td>
                <td id="bg">22,000￦</td>
                <td id="gc1-2" colspan="3"></td>
            </tr>

            <tr>
                <td id="gc1-2" colspan="3"></td>
                <td id="bg" colspan="2">· SQL의 정석</td>
                <td id="bg"></td>
                <td id="bg">1권</td>
                <td id="bg">25,000￦</td>
                <td id="gc1-2" colspan="3"></td>
            </tr>

            <tr>
                <td id="gc1-4" colspan="9"></td>
                <!-- <td id="gc1-4" ></td>
                <td id="gc1-4" ></td>
                <td id="gc1-4" ></td>
                <td id="gc1-4" ></td>
                <td id="gc1-4" colspan="3" ></td> -->
            </tr>
        </table>
    </form>
    
    <br><br><br><br><br>
    <br><br><br><br><br>
    <br><br><br><br><br>
    
    <%@ include file="../Common/u_footer.jsp" %>
    
</body>
</html>