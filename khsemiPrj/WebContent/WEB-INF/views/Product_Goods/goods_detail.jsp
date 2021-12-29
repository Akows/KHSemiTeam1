<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>goods_detail</title>
    <!-- css 파일 -->
    <link rel="stylesheet" href="Resources/Product_Goods/goods_detail.css">
    <!-- 굿즈 상세페이지 Bootstrap(MDB Bootstrap) -->

    <link rel="stylesheet" href="Resources/Product_Goods/goods_detail.css">

    <!-- CSS Bootstrap -->
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <!-- Google Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
    <!-- Bootstrap core CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.16.0/css/mdb.min.css" rel="stylesheet">

    <!-- JS Bootstrap -->
    <!-- JQuery -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.16.0/js/mdb.min.js"></script>
    <!-- w3s Bootstrap -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <!-- 위치 링크 -->
    <a href=""><img src="Resources/img/i_con/home_icon.png" id="home_icon"></a>
    <a href="" id="placeLink">> DEV BOOKS 굿즈</a>
    <a href="" id="placeLink">> PC/노트북</a>
    <a href="" id="placeLink">> 키보드/마우스</a>
    <!-- 상단 컨텐츠 항목 -->
    <div class="content">
        <!-- 오른쪽 굿즈명 및 설명 / 구매 항목 -->
        <div class="box_datail_right">
        <br>
        <hr id="rec_peopleLine">
        <!-- 굿즈명 및 제조사, 제조국가 -->
        <div class="rec_peopleBox">
            <h2 id="book_Title" style="font-weight: bold;">로지텍 정품 블루투스 키보드K380</h2>
            <br>
            <span>제조사 : logitech | 제조국가 : 한국</span>
            <br>
            <a href="" class="edit-delete-button" style="background-color: #2D313C !important; color: white; position: relative; top: 30px;"><i class="far fa-thumbs-up"></i> 350명의 유저들이 추천합니다</a>
        </div>
        <hr id="pur_QauntityLine">
        <!-- 구매 수량 및 가격 그리고 장바구니,구매 버튼 -->
        <!-- 왼쪽 영역 : 구매수량 -->
        <strong id="pur_Qauntity">구매수량</strong>
        <!-- 오른쪽 영역 : 수량 버튼  -->
        <div class="def-number-input number-input safari_only" style="position: relative; left: 1200px; top: 260px;">
            <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" class="minus"></button>
                <input class="quantity" min="0" name="quantity" value="1" type="number">
            <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
        </div>
        <br>
        <!-- 금액 영역 -->
        <div class="buy_price">
            <strong>
                <span style="font-size: 15px; vertical-align: middle;">합계</span>
                34,900원
            </strong>
        </div>
        <!-- 버튼 영역 -->
        <div class="buy_btn">
            <button type="button" class="btn btn-default btn-lg" style="background-color: white !important; color: black; width: 190px !important;">장바구니</button>
            <button type="button" class="btn btn-primary btn-lg" style="background-color: #2D313C !important; width: 190px !important;">바로구매</button>
        </div>
        <!-- // 구매 수량 및 가격 그리고 장바구니,구매 버튼 -->
        <!-- //오른쪽 책 제목 및 설명 / 구매 항목 -->
        </div>
        <!-- 왼쪽 굿즈 이미지 -->
        <div class="box_detail_left">
            <!-- 굿즈 이미지 -->
            <div class="cover">
                <img src="Resources/img/Goods/goods_img.jpg" width="198" height="282" alt="" class="coverImg">
            </div>
        </div>
        <br><br><br>
        <hr style="border: 0; height: 1px; background: #ccc; width: 62%; position: relative; bottom: 100px;">
        <!-- 하단 소개항목 -->
        <!-- 점프 버튼 -->
        <div class="bottom_intro">
            <div class="btn-group-vertical" id="jump_button" role="group" aria-label="Vertical button group">
                <a href="#book_intro"><button type="button" class="btn" style="background-color: #2D313C !important; color: white; width: 150px !important;">굿즈 소개</button></a>
                <a href="#book_review"><button type="button" class="btn" style="background-color: #2D313C !important; color: white; width: 150px !important;">구매자 리뷰</button></a>
            </div>
            <!-- 하단 소개항목/굿즈 소개 -->
            <div class="bottom_book_intro">
                <strong id="book_intro">굿즈 소개</strong>
                <br>
                <img src="Resources/img/Goods/goods_intro.png" style="margin-top: 40px; margin-bottom: 10px;">
            </div>
            <hr style="border: 0; height: 1px; background: #ccc; width: 62%; position: relative; bottom: 2px;">
        </div>
        </div>
            <!-- 하단 소개항목/구매자 리뷰 -->
            <link rel="stylesheet" href="https://allyoucan.cloud/cdn/icofont/1.0.1/icofont.css" integrity="sha384-jbCTJB16Q17718YM9U22iJkhuGbS0Gd2LjaWb4YJEZToOPmnKDjySVa323U+W7Fv" crossorigin="anonymous">
            <div class="container" id="book_review">
                            <div class="bg-white rounded shadow-sm p-4 mb-4 restaurant-detailed-ratings-and-reviews">
                                <h5 class="mb-1" style="font-weight: bold !important;">구매자 리뷰</h5>
                                <div class="reviews-members pt-4 pb-4">
                                    <div class="media">
                                        
                                        <div class="media-body">
                                            <div class="reviews-members-header">
                                                <span class="star-rating float-right">
                                                    <a href="#"><i class="fas fa-bell fa-2x red-text" style="position: relative; left: 3px;"></i></a>
                                                </span>
                                                <!-- 리뷰 글쓴이 및 작성일 -->
                                                <h6 class="mb-1"><a class="text-black" href="#">Singh Osahan</a></h6>
                                                <p class="text-gray">Tue, 20 Mar 2020</p>
                                            </div>
                                            <!-- 리뷰 내용 -->
                                            <div class="reviews-members-body">
                                                <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections </p>
                                            </div>
                                            <div class="reviews-members-footer">
                                                <a class="total-like" href="#" style="background-color: #2D313C !important; color: white;"><i class="far fa-thumbs-up"></i> 856</a>
                                                <!-- 수정 및 삭제버튼 -->
                                                <a class="edit-delete-button float-right" href="#" style="background-color: #2D313C !important; color: white;"> 삭제</a>
                                                <a class="edit-delete-button float-right" href="#" style="background-color: white !important; color: black;"> 수정</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="reviews-members pt-4 pb-4">
                                    <div class="media">
                                        
                                        <div class="media-body">
                                            <div class="reviews-members-header">
                                                <span class="star-rating float-right">
                                                    <a href="#"><i class="fas fa-bell fa-2x red-text" style="position: relative; left: 3px;"></i></a>
                                                </span>
                                                <!-- 리뷰 글쓴이 및 작성일 -->
                                                <h6 class="mb-1"><a class="text-black" href="#">Gurdeep Singh</a></h6>
                                                <p class="text-gray">Tue, 20 Mar 2020</p>
                                            </div>
                                            <!-- 리뷰 내용 -->
                                            <div class="reviews-members-body">
                                                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
                                            </div>
                                            <div class="reviews-members-footer">
                                                <a class="total-like" href="#" style="background-color: #2D313C !important; color: white;"><i class="far fa-thumbs-up"></i> 125</a>
                                                <!-- 수정 및 삭제버튼 -->
                                                <a class="edit-delete-button float-right" href="#" style="background-color: #2D313C !important; color: white;"> 삭제</a>
                                                <a class="edit-delete-button float-right" href="#" style="background-color: white !important; color: black;"> 수정</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="reviews-members pt-4 pb-4">
                                    <div class="media">
                                        
                                        <div class="media-body">
                                            <div class="reviews-members-header">
                                                <span class="star-rating float-right">
                                                    <a href="#"><i class="fas fa-bell fa-2x red-text" style="position: relative; left: 3px;"></i></a>
                                                </span>
                                                <!-- 리뷰 글쓴이 및 작성일 -->
                                                <h6 class="mb-1"><a class="text-black" href="#">Gurdeep Singh</a></h6>
                                                <p class="text-gray">Tue, 20 Mar 2020</p>
                                            </div>
                                            <!-- 리뷰 내용 -->
                                            <div class="reviews-members-body">
                                                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
                                            </div>
                                            <div class="reviews-members-footer">
                                                <a class="total-like" href="#" style="background-color: #2D313C !important; color: white;"><i class="far fa-thumbs-up"></i> 88</a>
                                                <!-- 수정 및 삭제버튼 -->
                                                <a class="edit-delete-button float-right" href="#" style="background-color: #2D313C !important; color: white;"> 삭제</a>
                                                <a class="edit-delete-button float-right" href="#" style="background-color: white !important; color: black;"> 수정</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <nav aria-label="Page navigation example" class="naviBar">
                                    <ul class="pagination pagination-circle pg-dark">
                                        <li class="page-item ">
                                            <a class="page-link" tabindex="-1">이전</a>
                                        </li>
                                        <li class="page-item"><a class="page-link">1</a></li>
                                        <li class="page-item active">
                                            <a class="page-link">2 <span class="sr-only">(current)</span></a>
                                        </li>
                                        <li class="page-item"><a class="page-link">3</a></li>
                                        <li class="page-item ">
                                            <a class="page-link">다음</a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                            <div class="bg-white rounded shadow-sm p-4 mb-5 rating-review-select-page">
                                <h5 class="mb-4" style="font-weight: bold !important;">리뷰 작성</h5>
                                <form>
                                    <div class="form-group">
                                        <label>내용</label>
                                        <textarea class="form-control" style="resize: none; height: 150px;"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <button class="btn btn-primary btn-m" type="button" style="background-color: #2D313C !important;"> 등록하기 </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <br><br><br><br><br>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>