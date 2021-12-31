<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="Resources/css/QnA/m_notice_detail.css">
    
    <!-- 공용으로 쓰는 부트스트랩 -->
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

    <!-- 기존에 쓰던 부트스트랩 -->
    <!-- <link href="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	  <script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
</head>

<body>
<%@ include file="../Common/u_menubar.jsp" %>
<div class="container">
<div class="row">
  <!-- BEGIN SEARCH RESULT -->
  <div class="bbiv">
    <div class="">
        <a href="#" class="breadcrumbtext"><img id="home_icon" src="Resources/img/i_con/home_icon.png" alt="홈아이콘"></a> > 
        <a href="#" class="breadcrumbtext">게시판</a> >
        <a href="#" class="breadcrumbtext">공지사항</a> 
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
            <h2>공지사항</h2>
        <p>고객님들에게 신속히 알려드릴 필요성이 있는 자료를 제공해 드립니다.</p>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th style="width: 6%;">번호</th>
                    <th style="width: 60%">제목</th>
                    <th style="width: 10%;">작성일</th>
                    <th style="width: 7%;">조회수</th>
                </tr>
            </thead>
            <tbody>
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
        <div class="writeBtn">
            <button type="button" class="btn btn-primary">공지작성</button>
        </div>
        
        <!-- <hr/> -->
            <!-- END TABLE RESULT -->
            <!-- BEGIN PAGINATION -->
            <ul class="pagination">
                <li class="page-item"><a class="page-link" href="#"> << </a></li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#"> >> </a></li>
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
    <%@ include file="../Common/u_footer.jsp" %>
</body>
</html>