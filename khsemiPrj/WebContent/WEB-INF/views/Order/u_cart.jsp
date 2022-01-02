<%@page import="com.dev.order.vo.CartVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	CartVo data = (CartVo)request.getAttribute("data");
    	System.out.println(data);
    %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>u6_장바구니</title>
	<link rel="stylesheet" href="./Resources/css/Order/u_cart.css">
	
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

<!-- 
	<nav>
        <img src="Resources/img/Logo/로고 사진 연그레이 s.png"  id="icon1">
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
-->
        <div class="homecart">
            <a href="#"><img src="Resources/img/i_con/home_icon.png"id="icon3"></a>
            <label> > </label>
            <a href="#" id="cart1">장바구니</a>
        </div>

        <br><br><br><br>

        <div class="t1">
            <table>
                <tr id="thead">
                    <th colspan="4"></th>
                    <th>장바구니</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>

                <tr class="tbody">
                        <td id="chb1"><input type="checkbox"></td>
                        <td colspan="3" >상품명</td>
                        <td>단가</td>
                        <td>수량</td>
                        <td colspan="4">합계</td>
                        <td id="m2" colspan="4"></td>
                </tr>

                <tr>
                        <td id="chb1"><input type="checkbox"></td>
                        <td colspan="2"><img src="Resources/img/Bookcover/book_unity.png" id="img1"></td>
                        <td id="spm1">유니티 모바일 게임 개발/존도란</td>
                        <td id="dg1">36,000원</td>
                        <td id="sl1">2</td>
                        <td id="hg1" colspan="4">72,000원</td>
                        <td  colspan="4"></td>
                </tr>
                
				<tr>
					<td colspan="11">
						<hr>
					</td>
				</tr>
				
                <tr>
                        <td id="chb1"><input type="checkbox"></td>
                        <td colspan="2"><img src="Resources/img/Bookcover/book_ml.png" id="img2"> </td>
                        <td id="spm1">혼자 공부하는 머신러닝/박해선</td>
                        <td id="dg1">23,400원</td>
                        <td id="sl1">1</td>
                        <td id="hg1" colspan="4" >23,400원</td>
                        <td colspan="4"></td>
                </tr>

                <tr>
                    <td colspan="2"><input type="submit" id="choice" value="선택상품삭제"></td>
                    <td colspan="2"><input type="submit" id="all" value="전체상품삭제"></td>
                    <td colspan="6"></td>
                </tr>
            </table>

                <hr>
        </div>

        <div class="t2">
            <table >
                <tr>
                    <th></th>
                    <th><input type="checkbox"></th>
                    <th id="jp">주문내역확인 동의서(필수)</th>
                    <th></th>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td id="gg1-1"><b>결제수단</b></td>
                    <td>
                        <select>
                            <option>-------------------------</option>
                            <option>카드결제</option>
                            <option>무통장입금</option>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td id="gg1-1"><b>포인트 사용</b></td>
                    <td><input type="text" placeholder="100원부터 입력"></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td id="gg1-2"><b>합계</b></td>
                    <td><input type="text" placeholder="총 합계 금액"></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td colspan="2"><input type="submit" id="payment" value="결제하기"  ></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </div>
        
		
</body>
</html>