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
    <link rel="stylesheet" href="./qna_write.css">

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
</body>
</html>