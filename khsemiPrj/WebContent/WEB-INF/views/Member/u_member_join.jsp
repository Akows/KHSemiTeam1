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
    
    <!-- jQuery -->
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
	
	<!-- 생년월일 셀렉트 박스 -->
	<script>
	$(document).ready(function(){
	    var now = new Date(); 
	    var year = now.getFullYear();
	    var mon = (now.getMonth() + 1) > 9 ? ''+(now.getMonth() + 1) : '0'+(now.getMonth() + 1);
	    var day = (now.getDate()) > 9 ? ''+(now.getDate()) : '0'+(now.getDate());

	    //년도 selectbox만들기
	    for(var i = 1900 ; i <= year ; i++) {
	        $('#year').append('<option value="' + i + '">' + i + '년</option>');
	    }

	    // 월별 selectbox 만들기
	    for(var i=1; i <= 12; i++) {
	        var mm = i > 9 ? i : "0"+i ; $('#month').append('<option value="' + mm + '">' + mm + '월</option>');
	    }

	    // 일별 selectbox 만들기
	    for(var i=1; i <= 31; i++) {
	        var dd = i > 9 ? i : "0"+i ;
	        $('#day').append('<option value="' + dd + '">' + dd+ '일</option>');
	    }

	$("#year > option[value="+year+"]").attr("selected", "true");
	$("#month > option[value="+mon+"]").attr("selected", "true");
	$("#day > option[value="+day+"]").attr("selected", "true");

	})
	</script>
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
        <form action="join" method="post">
            <div id="user_Info" class="col-xs-3">
                <ul class="wright_info">
                    <p class="text_info">아이디</p>
                    <input type="text" class="form-control box_size" name="userId" id="userId">
                    <input type="button" name="dupCheck" id="dupCheck" class="form-control box_size" value="중복 확인">
                </ul>
                <ul class="wright_info" style="position: relative; left: 0px; bottom: 40px;">
                    <p class="text_info">비밀번호</p>
                    <input type="password" class="form-control box_size" name="userPwd" id="userPwd">
                </ul>
                <ul class="wright_info" style="position: relative; left: 0px; bottom: 40px;">
                    <p class="text_info">비밀번호 확인</p>
                    <input type="password" class="form-control box_size" name="pwdCheck" id="pwdCheck">
                </ul>
                <ul class="wright_info" style="position: relative; left: 0px; bottom: 40px;">
                    <p class="text_info">이름</p>
                    <input type="text" class="form-control box_size" name="userName" id="userName">
                </ul>
                <ul class="wright_info" style="position: relative; left: 0px; bottom: 40px;">
                    <p class="text_info">이메일</p>
                    <input type="text" class="form-control box_size" name="userEmail" id="user_Email">
                    <label style="font-weight: bold; position: relative; left: 355px; bottom: 78px;">@</label>
                    <input type="text" class="form-control box_size" name="userEmail" id="input_Email" style="position: relative; width: 155px !important; height: 38px; left: 370px; bottom: 118px;">
                    <select name="site_Type" class="form-control box_size" id="select_Site" title="이메일 선택" style="position: relative; width: 150px !important; height: 38px; left: 540px; bottom: 156px !important;">
                    	<option value="">  직접 입력  </option>
                    	<option value="naver.com">naver.com</option>
		                <option value="nate.com">nate.com</option>
		                <option value="gmail.com">gmail.com</option>
		                <option value="yahoo.com">yahoo.com</option>
		                <option value="hanmail.net">hanmail.net</option>
                    </select>
                </ul>
                <ul class="wright_info" style="position: relative; left: 0px; bottom: 150px;">
                    <p class="text_info">전화번호</p>
                    <input type="number" class="form-control box_size" name="userPhone" id="userPhone" placeholder="-를 제외하고 입력해 주세요.">
                </ul>
                <ul class="wright_info" style="position: relative; left: 0px; bottom: 150px;">
                    <p class="text_info">주소</p>
                    <input type="text" class="form-control box_size" name="addr" id="addrBox1">
                    <input type="text" class="form-control box_size" name="addrDetail" id="addrBox2">
                </ul>
                <ul class="wright_info" style="position: relative; left: 0px; bottom: 150px;">
                    <p class="text_info">생년월일</p>
                    <select name="yy" class="form-control box_size" id="year"></select>
                    <select name="mm" class="form-control box_size" id="month"></select>
                    <select name="dd" class="form-control box_size" id="day"></select>
                </ul>
                <br>
        </div>
    <hr color ="#787878" width="90%" height="2px" style="position: relative; bottom: 280px;">
    <br><br>
    <input style="background-color: #2D313C; color: white;" type="submit" name="info_Submit" class="btn btn-default" id="info_Submit" value="회원 가입">
    </div>
        </form>
    <%@ include file="../Common/u_footer.jsp" %>
    
    <!-- 이메일 주소 스크립트 -->
	<script>
        $( "#select_Site" ).change(function(){
            $("#input_Email").val( $("#select_Site").val() );
        });
    </script>
    
    <!-- 아이디 중복확인 스크립트 -->
    <script>
        $("#dupCheck").on('click', function() {
            $.ajax ({
                url : '/devbooks/memberDupCheck',
                type : 'get',
                data : {
                   
                    id : $("#userId").val()
                },
                success : function(data) {
                    alert(data);
                    
                },
                error : function(err) {
                    alert("실패");
                }
            })
        })
    </script>
</body>
</html>