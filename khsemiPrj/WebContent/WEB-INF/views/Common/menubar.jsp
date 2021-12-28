<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴바</title>
    <link rel="stylesheet" href="menubar.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://kit.fontawesome.com/d088eb3922.js" crossorigin="anonymous"></script>
</head>
<body>
	<nav class="navbar">
        <!-- <div class="navbar-center"> -->
            <span class="nav-icon">
                <img src="../images/로고 사진 연그레이.png" alt="logo" style="width: 50px;">
                <img src="../images/로고 글자 연그레이.png" alt="logo_text" style="width: 100px;">
            </span>
            <div id="menu">
                <ul class="main1">
                    <li><a href="#"><i id="menu" class="fas fa-bars fa-2x" style="color: #eee;"></i></a>
                        <ul class="main2">
                            <li><a href="#">주제별</a>
                                <ul class="main3">
                                    <li><a href="#">프로그래밍 언어</a></li>
                                    <li><a href="#">엑셀 / 활용서</a></li>
                                    <li><a href="#">IT 자격증</a></li>
                                </ul>
                            </li>
                            <li><a href="#">프로그래밍</a>
                                <ul class="main3">
                                    <li><a href="#">딥러닝</a></li>
                                    <li><a href="#">머신러닝</a></li>
                                    <li><a href="#">인공지능</a></li>
                                    <li><a href="#">안드로이드</a></li>
                                    <li><a href="#">유니티</a></li>
                                </ul>
                            </li>
                            <li><a href="#">굿즈</a></li>
                        </ul>
                    </li>
                    <li><a href="#">베스트</a></li>
                    <li><a href="#">신상품</a></li>
                    <li><a href="#">게시판</a></li>
                </ul>
            </div>
            
            <form class="form-inline" action="/action_page.php">
                <div class="inputDiv">
                    <input class="form-control mr-sm-2" type="text" placeholder="내용을 입력해주세요.">
                <button type="submit" style="background-color: #2D313C; border: none;"><i id="search" class="fas fa-search fa-2x" type="submit"></i></button>
                </div>
            </form>
            <!-- <div id="menu2">
                <ul class="main1">
                    <li><a href="#">로그인</a></li>
                    <li><a href="#">회원가입</a></li>
                </ul>
            </div> -->
            <div class="cart-btn">
                <span class="nav-icon" style="color:#eee">
                    <i class="fas fa-cart-plus"></i>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <!-- <span>로그인 </span><span>| 회원가입</span> -->
                </span>
                <div class="cart-items">0</div>
            </div>
            <div id="menu2">
                <ul class="main1">
                    <li><a href="#">로그인</a></li>
                    <li><a href="#">회원가입</a></li>
                </ul>
            </div>
        <!-- </div> -->
    </nav>
</body>
</html>