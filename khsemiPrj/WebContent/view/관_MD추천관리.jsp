<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!-- 아이콘 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
    <!-- css -->
    <link rel="stylesheet" href="./관_MD추천관리.css">


</head>
<body>

    <div id="red"></div>
    <div id="route">
        <img id="home_icon"src="./홈1.png" alt="">
        <div id="aa">
            <!-- <a href="" id="route">홈</a>  -->
            &nbsp; > 
            <a href="" id="tt">MD추천 도서 관리</a>
        </div>
    </div>

    
    
    
    <!-- ROW 색상 변경 : tr태그에 table-색상 / text-색상 -->
    <div id="main">
        <!-- <table class="table table-striped table-bordered table-hover"> -->
        <div id="main2">
            <h3>도서 수정/삭제</h3> 
            <div id="search_div" class="clearfix">
                <input type="text" class="form-control" placeholder="책 제목으로 검색하세요" style="float: left;">
                <button type="submit" id="searchbtn" class="btn-outline-secondary">
                    <img id="searchbtn_img" src="./search.png" alt="검색" >
                </button>
            </div>
                <table class="table-hover">
                    <thead>
                        <tr class="table-success">
                            <th>상품번호</th>
                            <th>상품이름</th>
                            <th>이미지</th>
                            <th>단가</th>
                            <th>재고</th>
                            <th>판매수</th>
                            <th>좋아요</th>
                            <th>상품설명</th>
                            <th>상품유형</th>
                            <th>책번호</th>
                            <th>저자</th>
                            <th>출판사</th>
                            <th>출판일</th>
                            <th>카테고리</th>
                            <th>목차</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="primary">
                            <td>데이터</td>
                            <td>데이터</td>
                            <td>데이터</td>
                            <td>데이터</td>
                            <td>데이터</td>
                            <td>데이터</td>
                            <td>데이터</td>
                            <td>데이터</td>
                            <td>데이터</td>
                            <td>데이터</td>
                            <td>데이터</td>
                            <td>데이터</td>
                            <td>데이터</td>
                            <td>데이터</td>
                            <td>데이터</td>
                        </tr>
                        <tr>
                            <td>데이터</td>
                            <td>데이터</td>
                            <td>데이터</td>
                            <td>데이터</td>
                            <td>데이터</td>
                            <td>데이터</td>
                            <td>데이터</td>
                            <td>데이터</td>
                            <td>데이터</td>
                            <td>데이터</td>
                            <td>데이터</td>
                            <td>데이터</td>
                            <td>데이터</td>
                            <td>데이터</td>
                            <td>데이터</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
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
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
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
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                </tbody>
                </table>
    
    
            <!-- -----------------------페이저----------------------------- -->
            <nav aria-label="Page navigation example">
                <ul class="pagination pagination-sm pagination-secondary">
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
    
    
    
    
            <!-- ----------------------- 등록/수정 버튼 ----------------------------- -->
            <div id="b2">
                <div>
                    <button type="submit" class="btn1">1페이지 ▼</button>
                    <button type="submit" class="btn1">2페이지 ▼</button>
                    <button type="submit" class="btn1">3페이지 ▼</button>
                </div>
            </div>
            
            <div id="slide">
                <div style="margin-left: 20px;">1 / 3</div>
                <div id="middle">
                    <div id="img">
                        <img id="book" src="./it지식.JPG">
                    </div><!-- img -->
                    <div id="txt">
                        <h4>비전공자를 위한 IT 지식</h4>
                        <span>남궁성 | 강산북스 | 27000원</span>
                        <textarea name="" id="md" cols="30" rows="10"></textarea>
                    </div>
                </div>
                <div id="mdbtn">
                    <button id="btn3">등록</button>
                </div>
            </div><!-- slide -->
            <div id="slide">
                <div style="margin-left: 20px;">2 / 3</div>
                <div id="middle">
                    <div id="img">
                        <img id="book" src="./it지식.JPG">
                    </div><!-- img -->
                    <div id="txt">
                        <h4>비전공자를 위한 IT 지식</h4>
                        <span>남궁성 | 강산북스 | 27000원</span>
                        <textarea name="" id="md" cols="30" rows="10"></textarea>
                    </div>
                </div>
                <div id="mdbtn">
                    <button id="btn3">등록</button>
                </div>
            </div><!-- slide -->
            <div id="slide">
                <div style="margin-left: 20px;">3 / 3</div>
                <div id="middle">
                    <div id="img">
                        <img id="book" src="./it지식.JPG">
                    </div><!-- img -->
                    <div id="txt">
                        <h4>비전공자를 위한 IT 지식</h4>
                        <span>남궁성 | 강산북스 | 27000원</span>
                        <textarea name="" id="md" cols="30" rows="10"></textarea>
                    </div>
                </div>
                <div id="mdbtn">
                    <button id="btn3">등록</button>
                </div>
            </div><!-- slide -->
        </div><!-- main2 -->
    </div><!-- main -->

    <br><br><br><br>
</body>
</html>