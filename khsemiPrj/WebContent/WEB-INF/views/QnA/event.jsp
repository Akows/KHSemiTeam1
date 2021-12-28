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
    <link rel="stylesheet" href="Resources/QnA/event.css">
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
          <a href="#" class="breadcrumbtext">이벤트</a>
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
            <h2>이벤트</h2>
        <p>고객분들을 위한 다양한 이벤트가 운영되고 있습니다.</p>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th style="width: 5%;">번호</th>
                    <th style="width: 60%">제목</th>
                    <th style="width: 10%;">작성일</th>
                    <th style="width: 6%;">조회수</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>108</td>
                    <td>이벤트 TEST4</td>
                    <td>2021.12.22</td>
                    <td>10</td>
                </tr>
                <tr>
                    <td>108</td>
                    <td>제목 TEST4</td>
                    <td>2021.12.22</td>
                    <td>10</td>
                </tr>
                <tr>
                    <td>108</td>
                    <td>제목 TEST4</td>
                    <td>2021.12.22</td>
                    <td>10</td>
                </tr>
                <tr>
                    <td>108</td>
                    <td>제목 TEST4</td>
                    <td>2021.12.22</td>
                    <td>10</td>
                </tr>
                <tr>
                    <td>108</td>
                    <td>제목 TEST4</td>
                    <td>2021.12.22</td>
                    <td>10</td>
                </tr>
                <tr>
                    <td>108</td>
                    <td>제목 TEST4</td>
                    <td>2021.12.22</td>
                    <td>10</td>
                </tr>
                <tr>
                    <td>108</td>
                    <td>제목 TEST4</td>
                    <td>2021.12.22</td>
                    <td>10</td>
                </tr>
                <tr>
                    <td>108</td>
                    <td>제목 TEST4</td>
                    <td>2021.12.22</td>
                    <td>10</td>
                </tr>
                <tr>
                    <td>108</td>
                    <td>제목 TEST4</td>
                    <td>2021.12.22</td>
                    <td>10</td>
                </tr>
                <tr>
                    <td>107</td>
                    <td>제목 TEST3</td>
                    <td>2021.12.18</td>
                    <td>76</td>
                </tr>
                <tr>
                    <td>106</td>
                    <td>제목 TEST2</td>
                    <td>2021.12.04</td>
                    <td>48</td>
                </tr>
                <tr>
                    <td>105</td>
                    <td>제목 TEST1</td>
                    <td>2021.11.27</td>
                    <td>100</td>
                </tr>
            </tbody>
        </table>
        <hr>
        <!-- <div class="writeBtn">
            <button type="button" class="btn btn-primary">질문작성</button>
        </div> -->
        
        <!-- <hr/> -->
            <!-- END TABLE RESULT -->
            <!-- BEGIN PAGINATION -->
            <ul class="pagination">
              <li class="disabled"><a href="#">«</a></li>
              <li class="active"><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li>
              <li><a href="#">»</a></li>
            </ul>
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