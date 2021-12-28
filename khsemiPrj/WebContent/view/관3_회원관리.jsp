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
    <link rel="stylesheet" href="./관3_회원관리.css">

</head>
<body>

    <div id="red"></div>
    <div id="route">
        <img id="home_icon"src="./홈1.png" alt="">
        <div id="aa">
            <!-- <a href="" id="route">홈</a>  -->
            > 
            <a href="" id="tt">회원관리</a>
        </div>
    </div>

    
    <div id="search_div" class="clearfix">
        <input type="text" class="form-control" placeholder="회원 이름으로 검색하세요" style="float: left;">
        <button type="submit" id="searchbtn" class="btn-outline-secondary">
            <img id="searchbtn_img" src="./search.png" alt="검색" >
        </button>
    </div>
    
    <!-- ROW 색상 변경 : tr태그에 table-색상 / text-색상 -->
    <div id="main">
        <!-- <table class="table table-striped table-bordered table-hover"> -->
        
        
            <table class="table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>이름</th>
                        <th>이메일</th>
                        <th>전화번호</th>
                        <th>탈퇴여부</th>
                        <th>Point</th>
                        <th>가입일자</th>
                        <th>신고횟수</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
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
                    </tr><tr>
                        <td>데이터</td>
                        <td>데이터</td>
                        <td>데이터</td>
                        <td>데이터</td>
                        <td>데이터</td>
                        <td>데이터</td>
                        <td>데이터</td>
                        <td>데이터</td>
                    </tr><tr>
                        <td>데이터</td>
                        <td>데이터</td>
                        <td>데이터</td>
                        <td>데이터</td>
                        <td>데이터</td>
                        <td>데이터</td>
                        <td>데이터</td>
                        <td>데이터</td>
                    </tr><tr>
                        <td>데이터</td>
                        <td>데이터</td>
                        <td>데이터</td>
                        <td>데이터</td>
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
            <div style="text-align: center;">
                <button type="submit" class="btn1">&nbsp;&nbsp;&nbsp;&nbsp;회원 조회&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
                <i class="fas fa-chevron-down"></i>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <i class="fas fa-chevron-up"></i>
                <button type="submit" class="btn1">회원정보 수정</button>
            </div>
        </div>

        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>이름</th>
                    <th>이메일</th>
                    <th>전화번호</th>
                    <th>탈퇴여부</th>
                    <th>Point</th>
                    <th>가입일자</th>
                    <th>신고횟수</th>
                </tr>
            </thead>
            <tbody>
                <tr>
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
    </div>

    <div id="side">
        <div id="empty"></div>
        <div id="side1">
            <table id="tb_side">
                <tr>
                    <th>ID</th>
                    <th>Point</th>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
            </table>

            <div id="b3">
                <div style="text-align: center;">
                    <button type="submit" class="btn1">&nbsp;&nbsp;&nbsp;&nbsp;Point 변경&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
                </div>
            </div>


        </div>
    </div>


    <br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br>

</body>
</html>

    