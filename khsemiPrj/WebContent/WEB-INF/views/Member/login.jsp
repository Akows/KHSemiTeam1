<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/Member/login.css">
    <!-- CSS Bootstrap -->
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <!-- Google Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
    <!-- Bootstrap core CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.16.0/css/mdb.min.css" rel="stylesheet">

    <!-- JS Bootstrap -->
    <!-- JQuery -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.16.0/js/mdb.min.js"></script>
</head>
<body>
    <a href=""><img src="${pageContext.request.contextPath}/Resources/img/i_con/home_icon.png" id="home_icon"></a>
    <a href="" id="changeUserInfo">> 로그인</a>
    <div class="inputBox">
        <p id="loginBox">로그인</p>
        <br><br>
            <div id="id" class="md-form">
                <input type="text" id="id" class="form-control w-50">
                <label for="inputId">아이디</label>
            </div>
            <div id="pwd" class="md-form">
                <input type="password" id="password" class="form-control w-50">
                <label for="inputPwd">비밀번호</label>
            </div>
            <div id="save_Info" class="custom-control custom-checkbox" style="padding-left: 3rem;">
                <input type="checkbox" class="custom-control-input" id="defaultUnchecked">
                <label class="custom-control-label" for="defaultUnchecked" id="saveInfo">로그인 정보 저장</label>
            </div>
        <br>
            <div id="login_Btn">
                <input type="submit" class="btn btn-primary" id="submit" value="로그인">
            </div>
        <br>
        <div class="find_Info">
            <a href="">아이디 찾기</a>
            | 
            <a href="">비밀번호 찾기</a>
        </div>
        <br>
        <div id="sign_Up">
            <label for="" id="sign_Up">회원이 아니신가요?</label>
            <a href=""><strong style="font-weight: bold;">회원가입</strong></a>
        </div>
        
    </div>
</body>
</html>