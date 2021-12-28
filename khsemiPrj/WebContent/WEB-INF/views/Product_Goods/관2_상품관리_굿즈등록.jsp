<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!-- 아이콘 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
    <!-- css -->
    <link rel="stylesheet" href="Resources/Product_Goods/관2_상품관리_굿즈등록.css">


</head>
<body>
    <div id="red"></div>

    <div id="route">
        <img id="home_icon"src="Resources/img/i_con/home_icon.png" alt="">
        <div id="aa">
            <!-- <a href="" id="route">홈</a>  -->
            &nbsp; > 
            <a href="" id="tt">상품관리_굿즈</a>
        </div>
    </div>


    
    <!-- ROW 색상 변경 : tr태그에 table-색상 / text-색상... 적용 안됨 ㅜ  -->
    <div id="main">
        <!-- <table class="table table-striped table-bordered table-hover"> -->
        <div id="side">
            <h2>굿즈 관리</h2>
            <br><div id="hrr"></div><br>
            <a href=""><h3>굿즈 등록</h3></a>
            <a href=""><h3>굿즈 수정/삭제</h3></a>
        </div>
        <div id="main2">
            <form action="">
                <h3>굿즈 등록</h3>
                <div id="mainR">
                    <table>
                        <tr>
                            <td>상품이름</td>
                            <td><input type="text" name="pro_name"></td>
                        </tr>
                        <tr>
                            <td>단가</td>
                            <td><input type="text" name="unit_price"></td>
                        </tr>
                        <tr>
                            <td>재고</td>
                            <td><input type="text" name="stock"></td>
                        </tr>
                        <tr>
                            <td>카테고리</td>
                            <td>
                                <select name="category" style="width: 100%; font-size: small;">
                                    <option value="생활용품">생활용품</option>
                                    <option value="문구/활용서">문구</option>
                                    <option value="인형">인형</option>
                                    <option selected>-------------</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>이미지</td>
                            <td><input type="file"></td>
                        </tr>
                        <tr>
                            <td>제조사</td>
                            <td><input type="text" name="stock"></td>
                        </tr>
                        <tr>
                            <td>원산지</td>
                            <td><input type="text" name="stock"></td>
                        </tr>
                    </table>                
                </div>
                <div id="mainL">
                    <label>상품설명</label><br>
                    <textarea name="" id="" cols="30" rows="10"></textarea><br><br><br>
                </div>
                <div id="btn">
                    <input class="btn btn-outline-secondary btn-lg" type="submit" value="등록" id="submit">
                </div>
            </form>
        </div><!-- main2 -->
    </div>




    <br><br><br><br>
</body>
</html>

    