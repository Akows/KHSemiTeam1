<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <!-- CSS 파일 -->
    <!-- *이클립스 오류로 인한 css 원본 파일 불러오기 실패 -->
    <!-- *회원정보 변경 css파일로 대체하였음 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/css/Member/u_change_memberInfo.css">
    
    <!-- 부트스트랩 CDN -->
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    <!-- 폰트어썸 CDN -->
    <script src="https://kit.fontawesome.com/08023c4634.js" crossorigin="anonymous"></script>
</head>
<body>
	<%@ include file="../Common/u_menubar.jsp" %>
     <!-- 위치 링크 -->
    <a href=""><img src="${pageContext.request.contextPath}/Resources/img/i_con/home_icon.png" id="home_icon"></a>
    <a href="" id="placeLink">> 로그인</a>
    <a href="" id="placeLink">> 회원가입</a>
    <div id="inputBox">
        &nbsp;<h1>DEV BOOKS 회원가입</h1>
        <hr color ="#787878" width="90%" height="2px">
        &nbsp;<h3>기본 정보</h3>
            <div id="user_Info" class="col-xs-3">
                <ul class="wright_info">
                    <p class="text_info">아이디</p>
                    <input type="text" class="form-control box_size" name="user_Id" id="user_Id">
                </ul>
                <ul class="wright_info">
                    <p class="text_info">비밀번호</p>
                    <input type="password" class="form-control box_size" name="user_Pwd" id="user_Pwd">
                </ul>
                <ul class="wright_info">
                    <p class="text_info">비밀번호 확인</p>
                    <input type="password" class="form-control box_size" name="pwd_Check" id="pwd_Check">
                </ul>
                <ul class="wright_info">
                    <p class="text_info">이름</p>
                    <input type="text" class="form-control box_size" name="user_Name" id="user_Name">
                </ul>
                <ul class="wright_info">
                    <p class="text_info">이메일</p>
                    <input type="email" class="form-control box_size" name="user_Email" id="user_Email">
                    <label style="font-weight: bold; position: relative; left: 355px; bottom: 78px;">@</label>
                    <select name="site_Type" class="form-control box_size" id="select_Site" value="이메일 선택" style="position: relative; width: 130px; height: 38px; bottom: 90px;
                    "></select>
                    <input type="email" class="form-control box_size" name="other_Email" id="other_Email" placeholder="다른 이메일 입력">
                </ul>
                <ul class="wright_info" style="position: relative; left: 0px; bottom: 110px;">
                    <p class="text_info">전화번호</p>
                    <input type="text" class="form-control box_size" name="user_Phone" id="user_Phone" placeholder="-를 제외하고 입력해 주세요.">
                </ul>
                <ul class="wright_info" style="position: relative; left: 0px; bottom: 115px;">
                    <p class="text_info">주소</p>
                    <input type="text" class="form-control box_size" name="addr" id="addrBox1">
                    <input type="text" class="form-control box_size" name="addr" id="addrBox2">
                </ul>
                <ul class="wright_info" style="position: relative; left: 0px; bottom: 120px;">
                    <p class="text_info">생년월일</p>
                    <select name="year" class="form-control box_size" id="year" value="년도"></select>
                    <select name="month" class="form-control box_size" id="month" title="월"></select>
                    <select name="day" class="form-control box_size" id="day" title="일"></select>
                </ul>
                <br>
            </div>
            <hr color ="#787878" width="90%" height="2px" style="position: relative; bottom: 260px;">
            <br><br>
            <input style="background-color: #2D313C; color: white;" type="submit" name="info_Submit" class="btn btn-default" id="info_Submit" value="회원 가입">
    </div>
    <%@ include file="../Common/u_footer.jsp" %>
</body>
</html>