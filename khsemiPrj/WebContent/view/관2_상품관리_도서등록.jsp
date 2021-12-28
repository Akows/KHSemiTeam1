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
    <link rel="stylesheet" href="./관2_상품관리_도서등록.css">


</head>
<body>




    <div id="red"></div>
    <div id="route">
        <img id="home_icon"src="./홈1.png" alt="">
        <div id="aa">
            <!-- <a href="" id="route">홈</a>  -->
            &nbsp; > 
            <a href="" id="tt">상품관리_도서</a>
        </div>
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
            <h3>도서 등록</h3> 
            <form action="">
                <div id="mainR">
                    <table>
                        <tr>
                            <td>상품이름</td>
                            <td><input type="text" name="pro_name"></td>
                        </tr>
                        <tr>
                            <td>단가</td>
                            <td><input type="text" name="unit_price"></td>
                        </tr>
                        <tr>
                            <td>재고</td>
                            <td><input type="text" name="stock"></td>
                        </tr>
                        <tr>
                            <td>저자</td>
                            <td><span>검색결과</span>
                                <button type="button" data-toggle="modal" data-target="#myModal" style="width: 50px;">검색</button></td>
                        </tr>
                        <tr>
                            <td>출판사</td>
                            <td><input type="text" name="book_pub"></td>
                        </tr>
                        <tr>
                            <td>출판일</td>
                            <td><input type="date" name="publ_date"></td>
                        </tr>
                        <tr>
                            <td>카테고리</td>
                            <td><select name="category" style="width: 200px; font-size: small;">
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
                            </select></td>
                        </tr>
                        <tr>
                            <td>이미지</td>
                            <td><input type="file"></td>
                        </tr>
                    </table>                
                </div>
                <div id="mainL">
                    <label>상품설명</label><br>
                    <textarea name="" id="" cols="30" rows="10"></textarea><br><br><br>
                    <label>목차</label><br>
                    <textarea name="" id="" cols="30" rows="10"></textarea>
                </div>
                <div id="btn">
                    <input class="btn btn-outline-secondary btn-lg" type="submit" value="등록" id="submit">
                </div>
            </form>
        </div><!-- main2 -->
            
    </div><!-- main -->

    <!-- ------------------------------모달----------------------------------------- -->
      <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title" id="myModalLabel">작가 검색</h4>
            </div>
            <div class="modal-body">
              <input type="text"><button>검색</button>
              <table id="modal">
                  <tr>
                    <th>저자번호</th>
                    <th>이름</th>
                    <th>출생년도</th>
                  </tr>
                  <tr>

                  </tr>
              </table>
              <button>등록</button>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
            </div>
          </div>
        </div></div>



    <br><br><br><br>
</body>
</html>

    