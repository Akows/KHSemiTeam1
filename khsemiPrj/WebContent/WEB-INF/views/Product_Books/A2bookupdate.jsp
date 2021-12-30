<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script> 


    <!-- 아이콘 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
    <!-- css -->
    <link rel="stylesheet" href="Resources/Product_Books/A2bookupdate.css">


</head>
<body>




    <div id="red"></div>
    <div id="route">
        <img id="home_icon"src="Resources/img/i_con/home_icon.png" alt="">
        <div id="aa">
            <!-- <a href="" id="route">홈</a>  -->
            &nbsp; > 
            <a href="" id="tt">상품관리_도서</a>
        </div>
    </div>

    
    <div id="search_div" class="clearfix">
        <input type="text" class="form-control" placeholder="책 제목으로 검색하세요" style="float: left;">
        <button type="submit" id="searchbtn" class="btn-outline-secondary">
            <img id="searchbtn_img" src="Resources/img/i_con/home_icon.png" alt="검색" >
        </button>
    </div>
    
    <!-- ROW 색상 변경 : tr태그에 table-색상 / text-색상 -->
    <div id="main">
        <!-- <table class="table table-striped table-bordered table-hover"> -->
        <div id="side">
            <h2>도서 관리</h2>
            <br><div id="hrr"></div><br>
            <a href=""><h3>도서 등록</h3></a>
            <a href=""><h3>도서 수정/삭제</h3></a>
        </div>
        <div id="main2">
            <h3>도서 수정/삭제</h3> 
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
            <div id="nav">
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
            </div>

    
    
    
    
            <!-- ----------------------- 등록/수정 버튼 ----------------------------- -->
            <div id="b2">
                <div style="text-align: center;">
                    <button type="submit" class="btn1">상품 조회</button>
                    <i class="fas fa-chevron-down"></i>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <i class="fas fa-chevron-up"></i>
                    <button type="submit" class="btn1">상품 수정</button>
                </div>
            </div>
            <div id="del">
                <button type="submit" class="btn1">상품 삭제</button>
            </div>
            <table id="table2">
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
                        <td></td>
                        <td></td>
                        <td><input type="file"></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <select name="p_category" style="width: 100%; font-size: small;">
                                <option value="도서">도서</option>
                                <option value="굿즈">굿즈</option>
                                <option selected>-------------</option>
                            </select>
                        </td>
                        <td></td>
                        <td><span>검색결과</span>
                            <button type="button" data-toggle="modal" data-target="#myModal" id="btn1" style="width: 50px;">검색</button></td>
                        <td></td>
                        <td></td>
                        <td>
                            <select name="b_category" style="width: 100%; font-size: small;">
                                <optgroup label="주제별">
                                    <option value="프로그래밍언어">프로그래밍언어</option>
                                    <option value="엑셀/활용서">엑셀/활용서</option>
                                    <option value="IT 자격증">IT 자격증</option>
                                </optgroup>
                                <optgroup label="프로그래밍">
                                    프로그래밍
                                    <option value="딥려닝">딥려닝</option>
                                    <option value="머신러닝">머신러닝</option>
                                    <option value="인공지능">인공지능</option>
                                    <option value="안드로이드">안드로이드</option>
                                    <option value="유니티">유니티</option>
                                </optgroup>
                                <option selected>-------------</option>
                            </select>
                        </td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </div><!-- main2 -->
    </div><!-- main -->

    <!-- ------------------------------모달----------------------------------------- -->
      <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">작가 검색</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
              <input type="text"><button id="btn1">검색</button>
              <table>
                  <tr>
                    <th>저자번호</th>
                    <th>이름</th>
                    <th>출생년도</th>
                  </tr>
                  <tr>

                  </tr>
              </table>
              <button id="btn1">등록</button>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
            </div>
          </div>
        </div></div>



    <br><br><br><br>
</body>
</html>

    