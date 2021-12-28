<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>u12_주문내역조회</title>
	<link rel="stylesheet" href="./u12.css">
</head>
<body>
	<nav>
		<img src="../icon/icon1_navy.png" id="icon1">   
        <img src="../icon/logo_gray.png" id="icon2">
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

    <form>
        <div class="src">
            <a href="#"><img src="../icon/home_icon.png"id="icon3"></a>
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
                <td id="gc1-2" ><img src="../icon/book_java1.png" id="img"></td>
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
                <td id="gc1-2" ><img src="../icon/book_java4.png" id="img"></td>
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
</body>
</html>