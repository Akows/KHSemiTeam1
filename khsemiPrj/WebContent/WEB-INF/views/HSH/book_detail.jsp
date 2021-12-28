<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>book_detail</title>
    <!-- 상품 상세페이지 Bootstrap(MDB Bootstrap) -->
    <link rel="stylesheet" href="./book_detail.css">
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
    <a href=""><img src="./home_icon.png" id="home_icon"></a>
    <a href="" id="placeLink">> 주제별 도서</a>
    <a href="" id="placeLink">> IT 자격증</a>
    <!-- 상단 컨텐츠 항목 -->
    <div class="content">
        <!-- 오른쪽 책 제목 및 설명 / 구매 항목 -->
        <!-- 책 제목 및 저자, 출판사, 출판일 -->
        <div class="box_datail_right">
            <br>
            <span id="info_Book">
                <!-- 저자 정보 보기 -->
                <div class="modal fade" id="basicExampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">저자 정보 : <strong>김병욱</strong></h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span an aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <span   span style="line-height: 2;">
                                    시장에서 쌀을 팔다 지금은 스타트업에서 개발자로 일하고 있습니다.
                                    <br>
                                    29살의 나이에 처음으로 개발이라는 분야에 도전하며 많은 시행착오를 겪었습니다.
                                    <br>
                                    하지만 곧 방향을 잡고 4개월 만에 개발자로 취업에 성공했습니다.
                                    <br>
                                    이후 제가 겪었던 시행착오와 취업 노하우를 정리하여 개발자가 되기 위해 고군분투하는 미래의 개발자들이 최대한 빠르게 개발자로 입문할 수 있도록 돕고 있습니다.
                                    <br>
                                    현재 개발자로 일을 하며 별도로 개인 프로젝트를 운영하고 있고,
                                    <br>
                                    탈잉과 인프런 등에서 튜터로 활동하고 있습니다.
                                    <br>
                                    또 대구광역시, 원티드, 진학사 캐치 커리어콘 등 다양한 곳에서 활발하게 활동하며, 사회의 여러 문제를 기술로 해결하여 모두가 행복한 세상을 만들기 위해 노력하고 있습니다.
                                </span>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal" style="background-color: #2D313C !important; width: 150px !important;">닫기</button>
                            </div>
                        </div>
                    </div>
                </div>
            </span>
        <hr id="rec_peopleLine">
        <!-- 책 제목 및 저자, 출판사, 출판일 그리고 좋아요 수  -->
        <div class="rec_peopleBox">
            <h2 id="book_Title" style="font-weight: bold;">오늘부터 개발자</h2>
            <br>
            <a href="" data-toggle="modal" data-target="#basicExampleModal">김병욱</a> | 천그루숲 | 2021.11.20
            <br>
            <a href="" class="edit-delete-button" style="background-color: #2D313C !important; color: white; position: relative; top: 30px;"><i class="far fa-thumbs-up"></i> 350명의 유저들이 추천합니다</a>
        </div>
        <hr id="pur_QauntityLine">
        <!-- 구매 수량 및 가격 그리고 장바구니,구매 버튼 -->
        <!-- 왼쪽 영역 : 구매수량 -->
        <strong id="pur_Qauntity">구매수량</strong>
        <!-- 오른쪽 영역 : 수량 버튼  -->
        <div class="def-number-input number-input safari_only" style="position: relative; left: 1200px; top: 260px; margin-bottom: 15px;">
            <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" class="minus"></button>
                <input class="quantity" min="0" name="quantity" value="1" type="number">
            <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
        </div>
        <!-- 금액 영역 -->
        <div class="buy_price">
            <strong>
                <span style="font-size: 15px; vertical-align: middle;">합계</span>
                15,000원
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
        <!-- 왼쪽 커버 이미지 -->
        <div class="box_detail_left">
            <!-- 책 커버 이미지 -->
            <div class="cover">
                <img src="./book_cover.jpg" width="198" height="282" alt="" class="coverImg">
            </div>
        </div>
        <br><br><br>
        <hr style="border: 0; height: 1px; background: #ccc; width: 62%; position: relative; bottom: 100px;">
        <!-- 하단 소개항목 -->
        <!-- 점프 버튼 -->
        <div class="bottom_intro">
            <div class="btn-group-vertical" id="jump_button" role="group" aria-label="Vertical button group">
                <a href="#book_intro"><button type="button" class="btn" style="background-color: #2D313C !important; color: white; width: 150px !important;">책 소개</button></a>
                <a href="#book_contents"><button type="button" class="btn" style="background-color: #2D313C !important; color: white; width: 150px !important;">목차</button></a>
                <a href="#book_review"><button type="button" class="btn" style="background-color: #2D313C !important; color: white; width: 150px !important;">독자 리뷰</button></a>
            </div>
            <!-- 하단 소개항목/책 소개 -->
            <div class="bottom_book_intro">
                <strong id="book_intro">책 소개</strong>
                    <br>
                    <br>
                <strong style="font-weight: bold; line-height: 2.0;">3,000명 이상의 수강생이 검증한 강의의 액기스만 모은,<br>
                    개발자를 꿈꾸는 당신의 소중한 수백 시간을 줄여줄 ‘개발자 취업 입문 개론’</strong>
                    <br><br><br>
                <strong style="font-weight: bold; line-height: 2.0;">‘프론트엔드, 백엔드, 데이터 사이언티스트’ … 어떤 개발자가 되어야 하지?</strong>
                    <br>
                <strong style="font-weight: bold; line-height: 2.0;">‘자바, 파이썬, C언어’ … 어떤 언어부터 배워야 하지?</strong>
                    <br>
                <strong style="font-weight: bold; line-height: 2.0;">‘온라인 강의, 부트캠프, 국비지원 학원’ … 어디에서 배워야 하지?</strong>
                    <br>
                <strong style="font-weight: bold; line-height: 2.0;">‘연봉, 복지, 기업 규모’ … 어떤 회사가 나랑 맞는 거지?</strong>
                    <br><br><br>
                <p style="line-height: 2.0;">
                    개발자가 대세라는데, 도대체 뭐부터 해야 하는 거지?
                    <br>
                    시장에서 쌀 팔다 개발자가 된 저자가 ‘개발자 취업을 위해 알아야 할 모든 것’을
                    <br>
                    속 시원하게 알려드립니다!
                    <br><br>
                    요즘 어딜 가나 IT 업계와 개발자 관련 소식이 들려온다. IT의 빠른 성장과 함께 개발자에
                    <br>
                    대한 연봉, 복지에 대한 뉴스가 쏟아지며 비전공자를 포함한 많은 사람들이
                    <br>
                    ‘나도 개발자 한 번 해볼까?’라는 생각을 한다.
                    하지만 막상 ‘개발자’를 꿈꾸고 준비를 시작하는 순간부터 난관에 봉착하게 된다. 
                    낯선 용어들과 다양한 개발 관련 분야, 기업 규모별 차이
                    <br>
                    속에서 우리는 정보를 찾아 헤매며 무엇부터 해야 할지 고민하는 데에만 수많은 시간과 에너지를 쏟게 된다.
                    이 책은 여러분보다 조금 일찍 개발자를 꿈꾸며 공부를 시작한 저자가 들려주는 개발자 취업의 생생한 경험담이다.
                    <br>
                    개발자로 취직을 하고 보니 비로소 보이는 ‘어떤 언어를 먼저 배우는 게 좋다’ ‘개발을 배울 수 있는 곳은 이런 곳들이 있더라’ ‘면접을 보기 전에 이런 것들을 준비해야 한다’ 등 시간을 되돌려 과거의 자신에게 들려주고 싶은 이야기들을 담았다.
                    저자의 경험담과 더불어 현직 개발자들의 인터뷰를 담아 생생하고 현실적인 개발자의 삶에 대해 들어볼 수 있다.
                    ‘IT’를 전혀 모르고 시장에서 ‘쌀’을 팔던 청년도 개발자가 되었다. 여러분도 당연히 할 수 있다. 
                    이 책을 통해 막연하게 생각하던 ‘개발자’에 대해 제대로 알고, 여러분의 소중한 시간과 에너지, 돈을 아껴 개발자라는 목표에 최대한 빨리 도달하기를 바란다.
                    이 책의 목적은 아주 단순하다. 개발 공부를 처음 시작하는 누구라도 이 책을 통해 방황하는 2개월을 줄일 수 있도록 하는 것이다.
                </p>
            </div>
            <hr id="bottom_contents_line" style="border: 0; height: 1px; background: #ccc; width: 35%; position: relative; right: 258px; bottom: 90px;">
            <!-- 하단 소개항목/목차 -->
            <div class="bottom_book_contents">
                <strong id="book_contents">목차</strong>
                    <div class="contents_inside">
                        <p>
                            <br>
                            [목 차]
                            <br><br>
                            프롤로그 ？ 쌀 팔다 6개월 만에 개발자가 된 ssul
                            <br>
                            <br>Part 1 개발자가 되려는 이유를 확실히 정하자
                            <br>1장 어떤 개발자가 될 것인가?
                            <br>  1. 개발자는 어디에서, 무슨 일을 하나요?
                            <br>  2. 개발자는 어떤 분야에서 일을 하나요?
                            <br>2장 개발자는 정말 유망한 직업일까?
                            <br>  1. 편리함을 위해서는 개발자가 필요하다
                            <br>  2. 회사는 항상 개발자가 부족하다
                            <br>  3. 내가 원하는 서비스를 스스로 구현할 수 있다
                            <br>3장 개발자에 대한 잘못된 오해
                            <br>  1. 개발자는 연봉이 높다?
                            <br>  2. 개발자는 만족도가 높다?
                            <br>  3. 비전공자는 시작하기 어렵다?
                            <br>4장 개발자의 장점과 단점
                            <br>  1. 개발자의 장점
                            <br>  2. 개발자의 단점
                            <br>  3. 개발자의 하루
                            <br>
                            <br>Part 2 개발자는 어떤 일을 하나요?
                            <br>1장 개발자와 개발언어
                            <br>  1. 개발분야와 개발언어 
                            <br>  2. 프론트엔드 개발자는 어떤 일을 하나요?
                            <br>  3. 백엔드 개발자는 어떤 일을 하나요?
                            <br>  4. 데브옵스 개발자는 어떤 일을 하나요?
                            <br>  5. 데이터 사이언티스트는 어떤 일을 하나요?
                            <br>2장 개발 전에 꼭 알아야 할 기초지식
                            <br>  1. 프론트엔드와 백엔드가 통신하는 방법
                            <br>  2. API와 JSON
                            <br>  3. 프레임워크와 라이브러리
                            <br>  4. 웹(WEB)
                            <br>  5. 앱(App)
                            <br>
                            <br>Part 3 개발자가 되려면 어떻게 해야 하나요?
                            <br>1장 개발자가 되기 위한 현실적인 계획 수립
                            <br>  1. 개발 공부를 시작하기 전에
                            <br>  2. 개발자를 준비하고 있다면
                            <br>2장 개발은 어디에서 배울 수 있나요?
                            <br>  1. 부트캠프
                            <br>  2. 국비지원 학원
                            <br>  3. 온라인 강의
                            <br>  4. 개발 공부, 지금 바로 시작하자
                            <br>3장 개발자로 빠르게 취직하는 노하우
                            <br>  1. 개발자가 되려면…
                            <br>  2. 프로젝트
                            <br>  3. 블로그
                            <br>  4. 포트폴리오
                            <br>  5. 면접
                            <br>
                            <br>Part 4 개발자로 일하고 있습니다
                            <br>1장 어디에서 일할 것인가?
                            <br>  1. SI업계 개발자
                            <br>  2. 대기업 개발자
                            <br>  3. 스타트업 개발자
                            <br>  4. 창업
                            <br>2장 회사를 고를 때 고려해야 할 요소들
                            <br>  1. 연봉
                            <br>  2. 사수(선배)
                            <br>  3. 개발문화
                            <br>  4. 워라밸(복지)
                            <br>
                            <br>에필로그 
                            <br>
                            <br>
                            
                            
                            <br>
                            [본 문]
                            <br><br>
                            나는 개발자가 되어 행복한 게 아니라, 다른 업종에서 일을 하다 개발자라는 새로운 직업을 통해 ‘내가 원한다면 언제든 새로운 직업을 가질 수 있구나’라는 자신감을 가질 수 있게 되어 행복해졌다. - p.7
                            <br>
                            <br>세상을 편리하게 만드는 아이디어들은 무궁무진하다. 그런데 이런 아이디어들이 현실이 되기 위해서는 편리한 서비스를 구체화하여 만들고, 운영하고, 유지보수해야 한다. 그리고 여기에는 반드시 개발자가 필요하다. 앞으로의 일상은 지금보다 더 편해질 것이다. 이 말은 더 진화된 아이디어를 통해 더 편리한 서비스가 생겨날 것이고, 그렇기 때문에 개발자들의 수요는 더 많아질 것이다. - p.41
                            <br>
                            <br>국책연구기관인 한국소프트웨어정책연구소에 따르면 2021년 IT분야의 인력 부족 규모는 9,453명으로 추정하고 있으며, 2022년에는 1만 명이 넘을 것이라고 예측하고 있다. 이뿐만 아니라 최근에는 대부분의 회사들이 IT를 기반으로 새로운 사업을 준비하다 보니 개발자의 인력난은 더욱 심해질 것으로 예상된다. - p.42
                            <br>
                            <br>개발자를 준비하고 있다면 현재 받을 수 있는 연봉에 연연하기보다는 작은 규모의 회사라도 취업에 성공하여 나의 실력을 충분히 보여준 후 1년 뒤의 협상에서 ‘연봉 상승’에 목표를 두는 것이 더 나을 것이다. 1년 동안 개발을 하며 실력을 인정받았다면 누군가는 50%의 연봉을 올릴 수도 있고, 누군가는 30%의 연봉 상승이 이루어질 수도 있다. 결국 내가 회사에서 보인 퍼포먼스를 바탕으로 나의 연봉 상승이 결정되는 것이다. . - pp.54-55
                            <br>
                            <br>다시 한번 강조하지만 비전공자라서 어려운 것이 아니라, 개발자라는 직업 자체가 많은 책임감과 끊임없는 학습이 필요한 곳이어서 어려운 것이다. - p.64
                            <br>
                            <br>세상에 쉬운 개발이란 없다. 정말 쉬워 보이는 문제도 제대로 대처하지 않으면 언제든 큰 사고로 이어질 수 있다. 그리고 그 사고에 대한 불편은 오롯이 고객에게 돌아가며, 그 문제에 대한 해결 역시 미래의 나 혹은 다른 개발자에게로 돌아간다. 그래서 하나를 개발하더라도 더욱 더 신경을 써야 한다. - p.75
                            <br>
                            <br>혼자 공부하기 힘든 사람들은 국비지원 학원 또는 부트캠프에 가서 강사의 도움을 받으면 개발자로 빠르게 입문할 수 있는 확률이 높아진다. 결국 본인이 원하는 것을 명확히 하고, 본인 스스로 생각해서 결정하면 충분히 할 수 있다. 개발자가 되기로 마음먹었으면 방향을 확실히 잡고 하루라도 빨리 공부를 시작해 빨리 취업하는 게 정답이다. - p.179
                            <br>
                            <br>개발자에게 필요한 스펙이라면 우선 개발을 공부하며 진행하는 ‘프로젝트’가 가장 기본이다. 여기에 나를 어필할 수 있는 ‘블로그’가 있으면 좋은데, 이때는 티스토리, 미디엄, 깃허브 등의 플랫폼을 활용하는 것을 추천한다. 그리고 내가 개발 공부를 하며 정리한 것들을 한 번에 보여줄 수 있는 ‘포트폴리오’가 있으면 좋다. 똑같은 양을 공부해도 누군가는 훨씬 더 많이 한 것처럼 잘 표현하는 사람이 있고, 누군가는 그렇지 못하다. 특히 개발을 준비하는 사람들은 대부분 절대적인 학습시간이 비슷하기 때문에 나를 잘 보여줄 수 있는 포트폴리오는 매우 중요하다. 이러한 자료들을 준비하고, 희망하는 회사에 대해 꼼꼼하게 조사한 후 이력서를 넣고 면접에 임해야 한다. - pp.181-182
                            <br>
                            <br>개발을 시작하는 그 날짜부터 블로그를 시작해 보자. 처음에는 매일매일 공부한 것을 올리는 기록장으로도 좋고, 나의 하루를 돌아보는 용도로도 좋다. 그렇게 블로그에 콘텐츠가 하나둘 쌓이게 되면 나의 신입개발자 이력서에 큰 도움이 될 것이다. - p.203
                            <br>
                            <br>30대 혹은 40대에, 또는 비전공자가 개발 공부를 처음 시작한다는 것은 물론 어려울 수 있습니다. 하지만 그렇다고 불가능하지는 않습니다. 주위를 조금만 둘러봐도 그런 상황들을 극복하고 열심히 공부해 취업에 성공한 사람들이 너무나도 많습니다(심지어 구글에는 눈이 보이지 않는 어려움에도 개발자를 하시는 정말 위대한 분들도 계십니다). 그래서 저는 이 책을 읽는 독자분들이 ‘어렵다’라는 말을 ‘할 수 없다’라고 단정 짓지 않기를 바랍니다.. - pp.248-249
                            <br>
                            <br>
                        </p>
                    </div>
            </div>
        </div>
            <hr id="bottom_contents_line" style="border: 0; height: 1px; background: #ccc; width: 62%; position: relative; bottom: 10px;">
            <!-- 하단 소개항목/독자 리뷰 -->
            <link rel="stylesheet" href="https://allyoucan.cloud/cdn/icofont/1.0.1/icofont.css" integrity="sha384-jbCTJB16Q17718YM9U22iJkhuGbS0Gd2LjaWb4YJEZToOPmnKDjySVa323U+W7Fv" crossorigin="anonymous">
            <div class="container" id="book_review">
                            <div class="bg-white rounded shadow-sm p-4 mb-4 restaurant-detailed-ratings-and-reviews">
                                <h5 class="mb-1" style="font-weight: bold !important;">독자 리뷰</h5>
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
                                <!-- 페이지 네비게이션 -->
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
                            <!-- 리뷰 작성 박스 -->
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