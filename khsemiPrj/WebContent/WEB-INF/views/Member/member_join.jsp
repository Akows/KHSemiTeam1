<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="./member_join.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <a href=""><img src="./home_icon.png" id="home_icon"></a>
    <a href="" id="changeUserInfo">>로그인</a>
    <a href="" id="changeUserInfo">>회원가입</a>
    <div id="inputBox">
        &nbsp;<h1>DEV BOOKS 회원가입</h1>
        <hr color ="#787878" width="90%" height="2px">
        &nbsp;<h3>기본 정보</h3>
            <div id="user_Info" class="col-xs-6">
                <ul>
                    <p id="id_Info">아이디</p>
                    <input type="text" class="form-control" name="user_Id" id="user_Id">
                </ul>
                <ul>
                    <p id="pwd_Info">비밀번호</p>
                    <input type="password" class="form-control" name="user_Pwd" id="user_Pwd">
                </ul>
                <ul>
                    <p id="pwdCheck_Info">비밀번호 확인</p>
                    <input type="password" class="form-control" name="pwd_Check" id="pwd_Check">
                </ul>
                <ul>
                    <p id="name_Info">이름</p>
                    <input type="text" class="form-control" name="user_Name" id="user_Name">
                </ul>
                <ul>
                    <p id="email_Info">이메일</p>
                    <input type="email" class="form-control" name="user_Email" id="user_Email">
                    <label style="font-weight: bold; position: relative; left: 387px; bottom: 25px;">@</label>
                    <select name="site_Type" class="form-control" id="select_Site" value="이메일 선택"></select>
                    <input type="email" class="form-control" name="other_Email" id="other_Email" value="다른 이메일 입력">
                </ul>
                <ul style="position: relative; left: 0px; bottom: 90px;">
                    <p id="phone_Info">전화번호</p>
                    <input type="text" class="form-control" name="user_Phone" id="user_Phone">
                    <strong class="exclude_Hyphen">(-를 제외하고 입력해 주세요.)</strong>
                </ul>
                <ul style="position: relative; left: 0px; bottom: 110px;">
                    <p id="addr_Info">주소</p>
                    <input type="text" class="form-control" name="addr" id="addrBox1">
                    <input type="text" class="form-control" name="addr" id="addrBox2">
                </ul>
                <ul style="position: relative; left: 0px; bottom: 110px;">
                    <p id="birth_Info">생년월일</p>
                    <select name="year" class="form-control" id="year" value="년도"></select>
                    <select name="month" class="form-control" id="month" title="월"></select>
                    <select name="day" class="form-control" id="day" title="일"></select>
                </ul>
                <br>
            </div>
            <hr color ="#787878" width="90%" height="2px" style="position: relative; bottom: 170px;">
            <br><br>
            <input style="background-color: #2D313C; color: white;" type="submit" name="info_Submit" class="btn btn-default" id="info_Submit" value="회원 가입">
    </div>
</body>
</html>