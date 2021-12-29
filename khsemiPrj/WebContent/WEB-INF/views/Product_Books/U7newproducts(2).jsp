<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <title>신상품</title>

    <!-- 내부 스타일시트 -->
    <link rel="stylesheet" href="./Resources/Product_Books/U7newproducts.css" type="text/css">
    <link rel="stylesheet" href="./Resources/Product_Books/style.css" type="text/css">

</head>
<body>
    <!-- 헤더 영역, 상단 메뉴바 -->
    <header>
        <%@ include file="/WEB-INF/views/Common/menubar.jsp"%>
        
        <br>

        <div id="currentlocationarea">
            <a href="#" class="icon-home3"></a>
            >
            <a href="#">신상품</a>
        </div>

        <div><h1 id="pagetitle">신상품</h1></div>
    </header>

    <section>
        <div id="maincontentouterarea" class="maincontentarea">
            <!-- 컨텐츠 바깥 배경 영역 (padding: 40px;) -->
            <div id="maincontentinnerarea" class="maincontentarea">
                
                <nav id="submenu">
                    <a id="submenuscript">결과 표시됨</a>
                    <div id="blank"></div>
                    <a href="#" id="submenubotton"><span class="icon-thumbsup"></span> 추천 순</a>
                    <a href="#" id="submenubotton"><span class="icon-coin-dollar"></span> 판매 순</a>
                </nav>

                <!-- 컨텐츠 내부 배경 영역 (padding: 40px;) -->
                <div id="maincontentdeployarea" class="maincontentarea">
                    <!-- 컨텐츠 배치 영역 (padding: 40px;) -->
                    <div id="maincontent01area" class="maincontentarea">
                        <!-- 컨텐츠 배치 첫번째 영역 (padding: 40px;) -->

                        <div id="contentarea">
                            <table border="0">
                                <tr>
                                    <td>
                                        <div id="bookarea">
                                            <div id="bookcover">책 표지</div>
                                            <div id="booktitle">
                                                <h2>책 제목</h2>
                                                <h5>저자</h5>
                                            </div>
                                            <div id="bookinf">
                                                00,000$
                                                <button class="icon-heart1" id="cont1button"></button>
                                                <button class="icon-shopping-cart" id="cont1button"></button>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <div id="bookarea">
                                            <div id="bookcover">책 표지</div>
                                            <div id="booktitle">
                                                <h2>책 제목</h2>
                                                <h5>저자</h5>
                                            </div>
                                            <div id="bookinf">
                                                00,000$
                                                <button class="icon-heart1" id="cont1button"></button>
                                                <button class="icon-shopping-cart" id="cont1button"></button>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <div id="bookarea">
                                            <div id="bookcover">책 표지</div>
                                            <div id="booktitle">
                                                <h2>책 제목</h2>
                                                <h5>저자</h5>
                                            </div>
                                            <div id="bookinf">
                                                00,000$
                                                <button class="icon-heart1" id="cont1button"></button>
                                                <button class="icon-shopping-cart" id="cont1button"></button>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </table>

                            <table border="0">
                                <tr>
                                    <td>
                                        <div id="bookarea">
                                            <div id="bookcover">책 표지</div>
                                            <div id="booktitle">
                                                <h2>책 제목</h2>
                                                <h5>저자</h5>
                                            </div>
                                            <div id="bookinf">
                                                00,000$
                                                <button class="icon-heart1" id="cont1button"></button>
                                                <button class="icon-shopping-cart" id="cont1button"></button>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <div id="bookarea">
                                            <div id="bookcover">책 표지</div>
                                            <div id="booktitle">
                                                <h2>책 제목</h2>
                                                <h5>저자</h5>
                                            </div>
                                            <div id="bookinf">
                                                00,000$
                                                <button class="icon-heart1" id="cont1button"></button>
                                                <button class="icon-shopping-cart" id="cont1button"></button>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <div id="bookarea">
                                            <div id="bookcover">책 표지</div>
                                            <div id="booktitle">
                                                <h2>책 제목</h2>
                                                <h5>저자</h5>
                                            </div>
                                            <div id="bookinf">
                                                00,000$
                                                <button class="icon-heart1" id="cont1button"></button>
                                                <button class="icon-shopping-cart" id="cont1button"></button>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </table>

                            <div id="pagecontrol">
                                <ul class="pagination modal">
                                    <li> <a href="#" class="first">처음 페이지</a></li>
                                    <li> <a href="#" class="arrow left"><<</a></li> 
                                    <li> <a href="#" class="active num">1</a></li>
                                    <li> <a href="#" class="num">2</a></li>
                                    <li> <a href="#" class="num">3</a></li>
                                    <li> <a href="#" class="num">4</a></li>
                                    <li> <a href="#" class="num">5</a></li>
                                    <li> <a href="#" class="num">6</a></li>
                                    <li> <a href="#" class="num">7</a></li>
                                    <li> <a href="#" class="num">8</a></li>
                                    <li> <a href="#" class="num">9</a></li>
                                    <li> <a href="#" class="arrow right">>></a></li>
                                    <li><a href="#" class="last">끝 페이지</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </section>
    
    <%@ include file="/WEB-INF/views/Common/footer.jsp"%>

</body>
</html>