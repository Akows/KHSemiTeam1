<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="com.dev.member.model.vo.MemberVo" %>
<%@ page import="com.dev.member.model.dao.MemberDao" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원정보 변경</title>
    <!-- CSS 파일 -->
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
	<%
		String userId = null;
		if(session.getAttribute("userId") != null) {
			userId = (String) session.getAttribute("userId");
			System.out.println("u_change_memberInfo.jsp : userId"+userId);
		}else if (session.getAttribute("userId") == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요.')");
			script.println("location.href='u_login.jsp'");
			script.println("</script>");
		}
		
		MemberVo user = new MemberDao().getUser(conn, userId);
		if (!userId.equals(user.getUserId())) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('권한이 없습니다.')");
			script.println("location.href='u_login.jsp'");
			script.println("</script>");
		}
	%>
	<%@ include file="../Common/u_menubar.jsp" %>
     <!-- 위치 링크 -->
    <a href="loginUserHome"><img src="${pageContext.request.contextPath}/Resources/img/i_con/home_icon.png" id="home_icon"></a>
    <a href="changeInfo" id="placeLink">> 마이페이지</a>
    <div id="inputBox">
        &nbsp;<h1>DEV BOOKS 회원정보 변경</h1>
        <hr color ="#787878" width="90%" height="2px">
        &nbsp;<h3>기본 정보</h3>
        <form action="changeInfo" method="post">
            <div id="user_Info" class="col-xs-3">
                <ul class="wright_info">
                    <p class="text_info">아이디</p>
                    <input type="text" class="form-control box_size" name="userId" id="userId" placeholder="영문자, 숫자를 포함하여 총 4 ~ 12자로 입력." required>
                    <input type="button" name="dupCheck" id="dupCheck" class="form-control box_size" value="중복 확인">
                </ul>
                <ul class="wright_info" style="position: relative; left: 0px; bottom: 40px;">
                    <p class="text_info">비밀번호</p>
                    <input type="password" class="form-control box_size" name="userPwd" id="userPwd" placeholder="영문자, 숫자, 특수문자를 포함하여 총 8 ~ 15자로 입력." required>
                </ul>
                <ul class="wright_info" style="position: relative; left: 0px; bottom: 40px;">
                    <p class="text_info">비밀번호 확인</p>
                    <input type="password" class="form-control box_size" name="pwdCheck" id="pwdCheck" placeholder="위 비밀번호와 일치하게 입력해 주세요." required>
                </ul>
                <ul class="wright_info" style="position: relative; left: 0px; bottom: 40px;">
                    <p class="text_info">이름</p>
                    <input type="text" class="form-control box_size" name="userName" id="userName" placeholder="한글로 작성하며 2글자 이상으로 입력해 주세요." required>
                </ul>
                <ul class="wright_info" style="position: relative; left: 0px; bottom: 40px;">
                    <p class="text_info">이메일</p>
                    <input type="text" class="form-control box_size" name="userEmail" id="user_Email" placeholder="이메일을 입력하세요" required>
                    <label style="font-weight: bold; position: relative; left: 355px; bottom: 78px;">@</label>
                    <input type="text" class="form-control box_size" name="userEmail" id="input_Email" style="position: relative; width: 155px !important; height: 38px; left: 370px; bottom: 118px;" required>
                    <select name="site_Type" class="form-control box_size" name="userEmail" id="select_Site" title="이메일 선택" style="position: relative; width: 150px !important; height: 38px; left: 540px; bottom: 156px !important;">
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
                    <input type="text" class="form-control box_size" name="userPhone" id="userPhone" placeholder="-를 제외하고 입력해 주세요." required>
                </ul>
                <ul class="wright_info" style="position: relative; left: 0px; bottom: 150px;">
                    <p class="text_info">주소</p>
                    <input type="text" class="form-control box_size" name="addr" id="addrBox1" placeholder="주소를 입력하세요" required>
                    <input type="text" class="form-control box_size" name="addrDetail" id="addrBox2" placeholder="상세 주소를 입력하세요" required>
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

               <input style="background-color: #2D313C; color: white;" type="submit" name="info_Submit" class="btn btn-default" id="info_Submit" value="회원 가입" onclick="return validate();">
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

    <!-- 정규표현식 스크립트 -->
    <script>
        function validate() {
            let userId = document.getElementById('userId').value;
            let userPwd = document.getElementById('userPwd').value;
            let pwdCheck = document.getElementById('pwdCheck').value;
            let userName = document.getElementById('userName').value;
            let addr = document.getElementById('addr').value;
            let addrDetail = document.getElementById('addrDetail').value;

            // 첫 글자는 반드시 영문자로 입력되어야 하고,
            // 영문 소문자, 숫자 포함하여 총 4 ~ 12자로 입력하시오.
            if(!(/^[a-z][a-z\d]{3,11}$/.test(userId))) {
                alert('유효한 아이디를 입력하세요.');

                return false;

            };

            if(!(/^[\w!@#$%^&*-]{8,15}$/.test(userPwd))) {
                alert('유효한 비밀번호를 입력하세요');

                return false;
            };

            // 비밀번호 확인 검사
            if(userPwd !== pwdCheck) {

                document.getElementById('pwdCheck').value = '';
                document.getElementById('pwdCheck').focus();

                return false;
            };

            // 이름 검사
            // 한글로만 이루어져야 하며 2글자 이상으로 입력하시오.
            if(!(/^[가-힣]{2,}$/.test(userName))) {
                alert('유효한 이름을 입력하세요');

                return false;
            };

            // 전화번호
            if(!(/^01{1}[016789]{1}[0-9]{7,8}$/.test(userPhone))) {
                alert('-를 제외하고 입력해 주세요.');
                
                return false;
            }

            // 주소
            if(!(/^[a-zA-Zㄱ-힣0-9|s]*$/.test(addr))) {
                alert('특수문자를 제외하고 입력해 주세요')
            }

            // 상세 주소
            if(!(/^[a-zA-Zㄱ-힣0-9|s]*$/.test(addrDetail))) {
                alert('특수문자를 제외하고 입력해 주세요')
            }
        };
    </script>
</body>
</html>