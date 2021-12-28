<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>  -->
    
    <link href="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	  <script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="./qna_view.css">

    <style>
        #bdTitle {
            margin-bottom: 7px;
        }
    </style>
</head>

<body>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<div class="container">
<div class="row">
  <!-- BEGIN SEARCH RESULT -->
  <!-- <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="#">Page name</a></li>
    <li class="breadcrumb-item"><a href="#">Search Results</a></li>
    <li class="pull-right"><a href="" class="text-muted"><i class="fa fa-refresh"></i></a></li>
  </ol> -->
  <div class="bbiv">
      <div class="">
          <a href="#" class="breadcrumbtext"><i class="glyphicon glyphicon-home"></i></a> > 
          <a href="#" class="breadcrumbtext">게시판</a> > 
          <a href="#" class="breadcrumbtext">Q&A</a> > 
          <a href="#" class="breadcrumbtext">질문작성</a>
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
                  <td id="title" colspan="5">제목 테스트입니다.</td>
                  <!-- <td>2</td>
                  <td>3</td>
                  <td>4</td>
                  <td>5</td> -->
                </tr>
                <tr>
                  <th>작성일</th>
                  <td id="date">2018.3.10</td>
                  <th style="width: 10%;">작성자</th>
                  <td id="author">관리자</td>
                  <th style="width: 10%;">조회수</th>
                  <td id="view">1500</td>
                </tr>
                <tr>
                  <td id="content" colspan="6">
                    요러요러한 이벤트를 합니다.
                  </td>
                </tr>
              </tbody>
          </table>
          <br>
          <button class="btn btn-primary" style="background-color: #666666; border-color: #666666;">목록으로</button>
          <button class="btn btn-primary" style="float: right;">수정</button>
          <button class="btn btn-primary" style="float: right; background-color: #d31c1c; border-color: #d31c1c;">삭제</button>
          <h4>신청</h4>
          <hr>
          <form action="">
              <div id="userInfo" class="col-xs-6">
                <ul>
                    <p id="textId">아이디</p>
                    <input type="text" class="form-control" name="" id="">
                </ul>
                <ul>
                    <p id="textId">이름</p>
                    <input type="text" class="form-control" name="" id="">
                </ul>
                <ul>
                    <p id="textId">이메일</p>
                    <input type="text" class="form-control" name="" id="">
                </ul>
                <ul>
                    <input type="submit" class="btn btn-primary" value="가입 신청">
                </ul>
          </form>
        
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
</body>
</html>