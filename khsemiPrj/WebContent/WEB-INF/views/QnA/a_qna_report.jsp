<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>a6_3_QnA신고</title>
	<link rel="stylesheet" href="./Resources/QnA/a6_3.css">
	
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	
	<!-- jQuery library -->
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
	
	<!-- Popper JS -->
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	
	<!-- Latest compiled JavaScript -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

	<%@ include file="../Common/menubar.jsp" %>
	
    <div class="home">
        <a href="#"><img src="Resources/img/i_con/home_icon.png" id="icon3"></a>
        <label> > </label>
        <a href="#" id="gs">회원관리</a>
        <label> > </label>
        <a href="#" id="gs">QnA_신고리스트</a>
    </div>

    <br><br><br><br>

    <h2>QnA_신고 리스트</h2>
    
    <br><br><br><br>

    <form>
        <div>
            <table>
                <tr>
                    <th></th>
                    <th id="lab1"> 

                        <br>
                        <label >작성날짜 : 2021.08.25</label>
                        <br>
                        <label >작성자 :  jackand</label>

                        <br><br>
                        <label><b>세트 도서를 구매했는데...</b></label>
                        <br>

                        <label> 
                            수학에 수학의 정석이 있다면, 자바에는 자바의 정석이 있다.
                            <br>
                            자바의 정석은 나와 참 깊은 책이기는 *ㄹ.. 이해 1도 못하겠다 
                            <br> 
                            강의를 듣지 않으면 쉽게 이해 힘듬.
                        </label>

                        <input type="submit" id="btn1" value="신고취소">
                        <input type="submit" id="btn2" value="삭제">
                    </th>
                </tr>
            </table>

            <br><br>
            <hr>
            <br>

            <table>
                <tr>
                    <td></td>
                    <td id="lab1"> 

                        <br>
                        <label >작성날짜 : 2021.12.01</label>
                        <br>
                        <label >작성자 : gn040545</label>

                        <br><br>
                        <label><b>대량상품을 구매하고 싶은데요</b></label>
                        <br>

                        <label> 
                            광고광고광고광고광고광고광고광고광고가ㅗㅇ고광고광스팸 
                            <br>
                            광고광고광고광고광고내용임광고광고광고광고가ㅗㅇ고광고광
                            <br>
                            광고광고스팸광고광고광고광고광고광고광고가ㅗㅇ고광고광 
                            <br>
                            광고광고광고광고광고광고광고스팸광고광고가ㅗㅇ고광고광
                        </label>

                        <br><br>

                        <input type="submit" id="btn1" value="신고취소">
                        <input type="submit" id="btn2" value="삭제">
                    </td>
                </tr>
            </table>

            <br><br>
            <hr>
            <br>

            <table>
                <tr>
                    <td></td>
                    <td id="lab1"> 

                        <br>
                        <label >작성날짜 : 2021.10.18</label>
                        <br>
                        <label >작성자 :  jj5555</label>

                        <br><br>
                        <label><b>훼손된 상품 어떻게 하죠?</b></label>
                        <br>

                        <label> 
                            욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕
                            <br>
                            욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕
                            <br>
                            욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕
                            <br>
                            욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕욕
                            <br>
                            욕욕욕욕욕욕욕욕지금당장환불하고싶네요어떻게하죠
                        </label>
                        
                         <br><br>
                         
                        <input type="submit" id="btn1" value="신고취소">
                        <input type="submit" id="btn2" value="삭제">
                    </td>
                </tr>
            </table>
        </div>
    </form>

    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <%@ include file="../Common/footer.jsp" %>
    
</body>
</html>