<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="Resources/css/QnA/a_qna_write.css">
    
   <!-- 공용으로 쓰는 부트스트랩 -->
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

    <!-- 기존에 쓰던 부트스트랩 -->
    <!-- <link href="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	  <script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
</head>

<body>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<%@ include file="../Common/a_menubar.jsp" %>
<div class="container">
<div class="row">
  <!-- BEGIN SEARCH RESULT -->
  <div class="bbiv">
    <div class="">
        <a href="#" class="breadcrumbtext"><img id="home_icon" src="Resources/img/i_con/home_icon.png" alt="홈아이콘"></a> > 
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
            <h2>질문작성</h2>
            <form action="writerAction" method="post">
                <input type="hidden" name="bdGroup">
                <input type="hidden" name="bdOrder">
                <input type="hidden" name="bdIndent">
                <input type="text" id="bdTitle" name="bdTitle" class="form-control mt-4 mb-2"
                    placeholder="제목을 입력해주세요." required
                >
                <div class="form-group">
                    <textarea class="form-control" rows="10" name="bdContent"
                        placeholder="내용을 입력해주세요" required
                    ></textarea>
                </div>
                <div class="writeBtn">
                    <button type="button" class="btn btn-primary" style="background-color: #6c757d; border-color: #6c757d;">취소</button>
                    <button type="submit" class="btn btn-primary">질문작성</button>
                </div>
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
    
	<%@ include file="../Common/a_footer.jsp" %>
</body>
</html>