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
    <link rel="stylesheet" href="Resources/QnA/qna_view.css">

    <style>
        #bdTitle {
            margin-bottom: 7px;
        }

        /* temp */
        body{margin-top:20px;
    background:#eee;
    }
    
    .btn {
        margin-bottom: 5px;
    }
    
    .grid {
        position: relative;
        width: 100%;
        background: #fff;
        color: #666666;
        border-radius: 2px;
        margin-bottom: 25px;
        box-shadow: 0px 1px 4px rgba(0, 0, 0, 0.1);
    }
    
    .grid .grid-body {
        padding: 15px 20px 50px 20px;
        font-size: 0.9em;
        line-height: 1.9em;
    }
    
    .search table tr td.rate {
        color: #f39c12;
        line-height: 50px;
    }
    
    .search table tr:hover {
        cursor: pointer;
    }
    
    .search table tr td.image {
        width: 100px;
    }
    
    .search table tr td img {
        width: 100px;
        height: 150px;
    }
    
    .search table tr td.rate {
        color: #f39c12;
        line-height: 50px;
        vertical-align: middle;
    }
    
    .search table tr td.price {
        font-size: 1.5em;
        line-height: 50px;
        vertical-align: middle;
    } 
    .search table tr td.product {
        font-size: 1.4em;
        line-height: 50px;
        vertical-align: middle;
    }
    
    .search #price1,
    .search #price2 {
        display: inline;
        font-weight: 600;
    }

.bbiv {
    position: relative;
    left: 16px;
    top: -10px;
}
.breadcrumbtext {
  color: #2D313C;
}
.pagination {
    position: relative;
    left: 300px;
} 
.community {
  cursor: pointer;
  color: #666666;
  text-decoration-line: none;
}
.writeBtn {
  float: right;
}

/* table */
.board_view {
    width: 98%;
}
th,td {
    padding: 3px;
}
th {
    text-align: center;
}
#title {
    width: 95%;
}
#date {
    width: 15%;
}
#author {
    width: 30%;
}
#content {
    /* height: 500px; */
    padding-top: 10px;
    padding-left: 10px;
    padding-right: 5px;
    padding-bottom: 50px;
    vertical-align: top;
}
th {
    background-color: #666666;
    color: white;
}
#coment {
    width: 98%;
    padding-top: 10px;
    padding-left: 10px;
    padding-right: 5px;
}
#submit {
    position: relative;
    left: 825px;
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
            <caption>이벤트</caption>
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
                  <td id="title" colspan="5">이벤트 테스트입니다.</td>
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

    
    <script type="text/javascript">
    
    </script>
</body>
</html>