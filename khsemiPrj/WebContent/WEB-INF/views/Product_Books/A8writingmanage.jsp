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
    <link rel="stylesheet" href="Resources/Product_Books/관6_저자관리_저자.css">

</head>
<body>

	<%@ include file="/WEB-INF/views/Common/menubar_admin.jsp"%>

    <div id="red"></div>

    <div id="route">
        <img id="home_icon"src="Resources/img/i_con/home_icon.png" alt="">
        <div id="aa">
            <!-- <a href="" id="route">홈</a>  -->
            &nbsp; > 
            <a href="" id="tt">저자관리</a>
        </div>
    </div>

    
    
    <!-- ROW 색상 변경 : tr태그에 table-색상 / text-색상... 적용 안됨 ㅜ  -->
    <div id="main">
        <!-- <table class="table table-striped table-bordered table-hover"> -->
            <div id="main1">
                <h2>저자 관리</h2>
                <br><div id="hrr"></div><br>
                <a href=""><h3>저자 등록/수정</h3></a>
                <a href=""><h3>저서 등록/수정</h3></a>
            </div>
            <div id="main2">
            <!-------------------------------- 검색----------------------------------- -->
            <div id="search_div" class="clearfix">
                <input type="text" class="form-control" placeholder="저자명으로 검색하세요" style="float: left;">
                <button type="submit" id="searchbtn" class="btn-outline-secondary">
                    <img id="searchbtn_img" src="Resources/img/i_con/search.png" alt="검색" >
                </button>
            </div>


            <table class="table-hover">
                <thead>
                    <tr class="table-success">
                        <th>저자번호</th>
                        <th>이름</th>
                        <th>출생년도</th>
                        <th>수상내역</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="primary">
                        <td>012121</td>
                        <td>김철수</td>
                        <td>1955</td>
                        <td>데이터데이터데이터데이터데이터데이터데이터데이터</td>                        
                    </tr>
                    <tr>
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
                    </tr>
                    <tr>
                        <td>데이터</td>
                        <td>데이터</td>
                        <td>데이터</td>
                        <td>데이터</td>
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
            <!-- <div style="text-align: center;">
                <button type="submit" class="btn1">&nbsp;&nbsp;&nbsp;&nbsp;상품 조회&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
                <i class="fas fa-chevron-down"></i>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <i class="fas fa-chevron-up"></i>
                <button type="submit" class="btn1">상품 등록/수정</button>
            </div> -->
        </div>
    
        <div id="bottom">
            <div id="btt1">
                <div id="addWrap">
                    <div>
                        <h3>저자 등록</h3><br>
                        <label for=""> 저자 이름 : <input type="text"></label><br><br>
                        <label for=""> 출생 년도 : <input type="text"></label><br><br>
                        <label for=""> 수상 내역 : <input type="text"></label><br><br>
                    </div>
                    <div style="padding-top: 50px;">
                        <button type="submit" class="btn1">저자 등록</button>
                    </div>
                </div>
            </div>
            <div id="btt2">
                <div id="addWrap">
                    <h3>저자정보 수정/삭제</h3>
                        <table class="table-hover" id="addtb">
                            <tr>
                                <th>저서 제목</th>
                                <th>출판사</th>
                                <th>출판일</th>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </table>
                        <div id="b2">
                            <div style="text-align: center;">
                                <button type="submit" class="btn1">저자정보 조회</button>
                                <i class="fas fa-chevron-down"></i>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <i class="fas fa-chevron-up"></i>
                                <button type="submit" class="btn1">저자정보 수정</button>
                            </div>
                        </div>
                        <table class="table-hover" id="addtb">
                            <tr>
                                <th>저서 제목</th>
                                <th>출판사</th>
                                <th>출판일</th>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </table>
                        
                </div>
            </div>
        </div><!-- bottom 끝 -->

        </div> <!-- main2 끝 -->
    </div>

    <br><br>

	<%@ include file="/WEB-INF/views/Common/footer.jsp"%>
	
</body>
</html>

    