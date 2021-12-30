<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>메뉴바</title>
        <link rel="stylesheet" href="Resources/Common/menubar_login.css">
        
    <!-- 개인 코드에서 사용한 부트스트랩 -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> -->
    <script src="https://kit.fontawesome.com/d088eb3922.js" crossorigin="anonymous"></script>


    <!-- 공용으로 사용할 부트스트랩 -->
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
    <nav class="navbar">
        <!-- <div class="navbar-center"> -->
            <span class="nav-icon">
               	<img src="Resources/img/Logo/로고 사진 연그레이.png" alt="logo" style="width: 50px;">
                <img src="Resources/img/Logo/로고 글자 연그레이.png" alt="logo_text" style="width: 100px;">
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
                    <li><a href="#"><i class="fas fa-user fa-2x" style="color: #eee;"></i></a>
                        <ul class="main2">
                            <li><a href="#">포인트 : 10000P</a></li>
                            <li><a href="#">마이페이지</a></li>
                            <li><a href="#">로그아웃</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        <!-- </div> -->
    </nav>
</body>
</html>