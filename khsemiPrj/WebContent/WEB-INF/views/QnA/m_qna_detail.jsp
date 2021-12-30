<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="Resources/QnA/qna_view.css">
    
    <!-- 공용으로 쓰는 부트스트랩 -->
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

    <!-- 기존에 쓰던 부트스트랩 -->
    <!-- <link href="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	  <script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->

</head>

<body>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<%@ include file="../Common/menubar.jsp" %>
<div class="container">
  <div class="bbiv">
    <div class="">
        <a href="#" class="breadcrumbtext"><img id="home_icon" src="Resources/img/i_con/home_icon.png" alt="홈아이콘"></a> > 
        <a href="#" class="breadcrumbtext">게시판</a> >
        <a href="#" class="breadcrumbtext">Q&A</a> >
        <a href="#" class="breadcrumbtext">상세보기</a>
    </div>
  </div>
  
  <div class="col-md-12">
    <div class="grid search">
      <div class="grid-body">
        <div class="row">
          <!-- BEGIN FILTERS -->
          <div class="col-md-2">
            <h2 class="grid-title"> 커뮤니티</h2>
            <hr>
            
            <!-- BEGIN FILTER BY CATEGORY -->
            <a class="community" href="#"><h4>공지사항</h4></a>
            <a class="community" href="#"><h4>Q&A</h4></a>
            <a class="community" href="#"><h4>이벤트</h4></a>
            <!-- END FILTER BY CATEGORY -->
            
            <div class="padding"></div>
            
            <div class="padding"></div>
            
          </div>
          <!-- END FILTERS -->
          <!-- BEGIN RESULT -->
          <div class="col-md-10">
            <h2>상세보기</h2>
            <caption>Q&A</caption>
              <colgroup>
                  <col width="15%">
                  <col width="35%">
                  <col width="15%">
                  <col width="*">
              </colgroup>
            <table class="board_view" border="1">
              <tbody>
                <tr>
                  <th style="width: 8%;">제목</th>
                  <td id="title" colspan="5">QnA 테스트입니다.</td>
                  <!-- <td>2</td>
                  <td>3</td>
                  <td>4</td>
                  <td>5</td> -->
                </tr>
                <tr>
                  <th>작성일</th>
                  <td id="date">2018.3.10</td>
                  <th style="width: 10%;">작성자</th>
                  <td id="author">user300</td>
                  <th style="width: 10%;">조회수</th>
                  <td id="view">1500</td>
                </tr>
                <tr>
                  <td id="content" colspan="6">
                    ID / 비밀번호를 잊어버렸습니다.
                  </td>
                </tr>
              </tbody>
          </table>
          <br>
          <button class="btn btn-primary" style="background-color: #666666; border-color: #666666;">목록으로</button>
          <button class="btn btn-primary" style="float: right;">수정</button>
          <button class="btn btn-primary" style="float: right; background-color: #d31c1c; border-color: #d31c1c;">삭제</button>
          <hr>
          <h4>답변</h4>
          <form action="">
            <textarea name="" id="coment" cols="10" rows="5" placeholder="답변을 등록해주세요."></textarea>
            <input id="submit" type="submit" class="btn btn-primary" value="답변 등록">
          </form>
          
          </div>
        
        <!-- <hr/> -->
            <!-- END TABLE RESULT -->
            <!-- BEGIN PAGINATION -->

            <!-- END PAGINATION -->
          </div>
          <!-- END RESULT -->
        </div>
      </div>
    </div>
  </div>
  <!-- END SEARCH RESULT -->
</div>
</div>

    
    <script type="text/javascript">
    
    </script>
    <%@ include file="../Common/footer.jsp" %>
</body>
</html>