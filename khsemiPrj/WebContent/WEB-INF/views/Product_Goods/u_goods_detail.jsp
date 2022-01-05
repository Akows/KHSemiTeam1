<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품 상세페이지(굿즈)</title>
    <!-- CSS 파일 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/css/Product_Goods/u_goods_detail.css">
    
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
    
    <!-- * CSS 파일 불러오기 오류로 인한 비 설정된 CSS들 추가 -->
    <style type="text/css">
    	/* 페이지 네비게이션 바 */
	    .pagination {
			display: flex;
			justify-content: center;
			margin-top: 25px;
			margin-bottom: -5px;
		}
		
		/* 페이지 네비게이션 텍스트 색상 */
		.page-link {
		   	color: #2D313C !important;
		}
		
		/* 구매 버튼 */
		.buy_btn {
		    position: relative;
		    left: 1090px;
		    top: 350px;  
		}
		
		/* 하단 소개항목 */
		.bottom_book_intro {
		    padding-top: 10px;
		    padding-left: 180px;
		    padding-right: 180px;
		    margin-left: 185px;
		    margin-right: 700px;
		    position: relative;
		    bottom: 130px;
		}
		
		/* 점프 버튼 */
		#jump_button {
		    position: sticky;
		    left: 1200px;
		    top: 0;
		}		
    </style>
</head>
<body>
	<%@ include file="../Common/u_menubar.jsp" %>
    <!-- 위치 링크 -->
    <a href=""><img src="${pageContext.request.contextPath}/Resources/img/i_con/home_icon.png" id="home_icon"></a>
    <a href="" id="placeLink">> DEV BOOKS 굿즈</a>
    <a href="" id="placeLink">> ${gvo.getMd_cate()}</a>
    <!-- 상단 컨텐츠 항목 -->
    <div class="content">
        <!-- 오른쪽 굿즈명 및 설명 / 구매 항목 -->
        <div class="box_datail_right">
        <br>
        <hr id="rec_peopleLine">
        <!-- 굿즈명 및 제조사, 제조국가 -->
        <div class="rec_peopleBox">
            <h2 id="book_Title" style="font-weight: bold;">${gvo.getPro_name()}</h2>
            <br>
            <span>제조사 : ${gvo.getMaker()} | 제조국가 : ${gvo.getCountry()}</span>
            <input type="hidden" id="proN" value="${gvo.getPro_no()}" >
            
            <br>
            <a href="" class="edit-delete-button" style="background-color: #2D313C !important; color: white; position: relative; top: 30px;"><i class="far fa-thumbs-up"></i> ${gvo.getPro_like()}명의 유저들이 추천합니다</a>
        </div>
        <hr id="pur_QauntityLine">
        <!-- 구매 수량 및 가격 그리고 장바구니,구매 버튼 -->
        <!-- 왼쪽 영역 : 구매수량 -->
        <strong id="pur_Qauntity">구매수량</strong>
        <!-- 오른쪽 영역 : 수량 버튼  -->
        <div class="def-number-input number-input safari_only" style="position: relative; left: 1200px; top: 260px;">
            <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" class="minus"></button>
                <input id="ea" class="quantity" min="0" name="quantity" value="1" type="number">
            <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
        </div>
        <br>
        <!-- 금액 영역 -->
        <div class="buy_price">
            <strong>
                <span style="font-size: 15px; vertical-align: middle;">합계</span>
                ${gvo.getUnit_price()} 원
            </strong>
        </div>
        <!-- 버튼 영역 -->
        <div class="buy_btn">
            <button type="button" class="btn btn-default btn-lg" style="background-color: white; color: black; width: 190px !important;">장바구니</button>
            <button type="button" class="btn btn-primary btn-lg" style="background-color: #2D313C; border: 1px solid #2D313C; width: 190px !important;">바로구매</button>
        </div>
        <!-- // 구매 수량 및 가격 그리고 장바구니,구매 버튼 -->
        <!-- //오른쪽 책 제목 및 설명 / 구매 항목 -->
        </div>
        <!-- 왼쪽 굿즈 이미지 -->
        <div class="box_detail_left">
            <!-- 굿즈 이미지 -->
            <div class="cover">
                <%-- <img src="${pageContext.request.contextPath}/Resources/img/Goodscover/goods_img.jpg" width="198" height="282" alt="" class="coverImg"> --%>
                <img src="${pageContext.request.contextPath}/${gvo.getPro_img()}" width="198" height="282" alt="" class="coverImg">
            </div>
        </div>
        <br><br>
        <hr style="border: 0; height: 1px; background: #ccc; width: 62%; position: relative; bottom: 62px;">
        <!-- 하단 소개항목 -->
        <!-- 점프 버튼 -->
        <div class="bottom_intro">
            <div class="btn-group-vertical" id="jump_button" role="group" aria-label="Vertical button group">
                <a href="#book_intro"><button type="button" class="btn" style="background-color: #2D313C !important; color: white; width: 150px !important; margin-bottom: 1px;">상품 소개</button></a>
                <a href="#book_review"><button type="button" class="btn" style="background-color: #2D313C !important; color: white; width: 150px !important; margin-bottom: 1px;">구매자 리뷰</button></a>
            </div>
            <!-- 하단 소개항목/굿즈 소개 -->
            <div class="bottom_book_intro">
                <strong id="book_intro">상품 소개</strong>
                <br>
                <img src="${gvo.getDescription()}" style="margin-top: 40px; margin-bottom: 10px;">
            </div>
            <hr style="border: 0; height: 1px; background: #ccc; width: 62%; position: relative; top: 5px;">
        </div>
        </div>
            <!-- 하단 소개항목/구매자 리뷰 -->
            <link rel="stylesheet" href="https://allyoucan.cloud/cdn/icofont/1.0.1/icofont.css" integrity="sha384-jbCTJB16Q17718YM9U22iJkhuGbS0Gd2LjaWb4YJEZToOPmnKDjySVa323U+W7Fv" crossorigin="anonymous">
            <div class="container" id="book_review">
                            <div class="bg-white rounded shadow-sm p-4 mb-4 restaurant-detailed-ratings-and-reviews">
                                <h5 class="mb-1" style="font-weight: bold !important;">구매자 리뷰</h5>
                                <div class="reviews-members pt-4 pb-4">
                                    <div class="media">
                                        
                                        <div class="media-body">
                                            <div class="reviews-members-header">
                                                <span class="star-rating float-right">
                                                    <a href="#"><i class="fas fa-bell fa-2x" style="position: relative; left: 3px; color: red;"></i></a>
                                                </span>
                                                <!-- 리뷰 글쓴이 및 작성일 -->
                                                <h6 class="mb-1"><a class="text-black" href="#">Singh Osahan</a></h6>
                                                <p class="text-gray">2021-12-18</p>
                                            </div>
                                            <!-- 리뷰 내용 -->
                                            <div class="reviews-members-body">
                                                <p>
                                                    19,900원에 자주 뜨던 모델인데 가격이 꽤 올랐네
                                                    가끔씩 폰이나 패드에서 페어링하며 쓰기엔 이만한게 없는듯
                                                    보조용 키보드는 온오프 스위치와 멀티 페어링은 필수
                                                    이것보다 크기가 더 크고 무거워봐야 자리만 차지할뿐
                                                </p>
                                            </div>
                                            <div class="reviews-members-footer">
                                                <a class="total-like" href="#" style="background-color: #2D313C !important; color: white;"><i class="far fa-thumbs-up"></i> 856</a>
                                                <!-- 수정 및 삭제버튼 -->
                                                <a class="edit-delete-button float-right" href="#" style="background-color: #2D313C !important; color: white;"> 삭제</a>
                                                <a class="edit-delete-button float-right" href="#" style="background-color: white !important; color: black;"> 수정</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="reviews-members pt-4 pb-4">
                                    <div class="media">
                                        
                                        <div class="media-body">
                                            <div class="reviews-members-header">
                                                <span class="star-rating float-right">
                                                    <a href="#"><i class="fas fa-bell fa-2x" style="position: relative; left: 3px; color: red;"></i></a>
                                                </span>
                                                <!-- 리뷰 글쓴이 및 작성일 -->
                                                <h6 class="mb-1"><a class="text-black" href="#">Gurdeep Singh</a></h6>
                                                <p class="text-gray">2021-12-23</p>
                                            </div>
                                            <!-- 리뷰 내용 -->
                                            <div class="reviews-members-body">
                                                <p>
                                                    노트북하고 테블릿 연결용으로 구매했는데 연결방법도 간단하고 키보드 사용감도 좋네요. 지금 상품평도 로지텍으로 작성하고 있네요. 무게가 좀 나가는게 흠이긴하지만 가격대비 잘 산것같아요
                                                </p>
                                            </div>
                                            <div class="reviews-members-footer">
                                                <a class="total-like" href="#" style="background-color: #2D313C !important; color: white;"><i class="far fa-thumbs-up"></i> 125</a>
                                                <!-- 수정 및 삭제버튼 -->
                                                <a class="edit-delete-button float-right" href="#" style="background-color: #2D313C !important; color: white;"> 삭제</a>
                                                <a class="edit-delete-button float-right" href="#" style="background-color: white !important; color: black;"> 수정</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="reviews-members pt-4 pb-4">
                                    <div class="media">
                                        
                                        <div class="media-body">
                                            <div class="reviews-members-header">
                                                <span class="star-rating float-right">
                                                    <a href="#"><i class="fas fa-bell fa-2x" style="position: relative; left: 3px; color: red;"></i></a>
                                                </span>
                                                <!-- 리뷰 글쓴이 및 작성일 -->
                                                <h6 class="mb-1"><a class="text-black" href="#">Gurdeep Singh</a></h6>
                                                <p class="text-gray">2021-12-28</p>
                                            </div>
                                            <!-- 리뷰 내용 -->
                                            <div class="reviews-members-body">
                                                <p>
                                                    유선 키보드 사용하다가 무선 써보고 싶어서
                                                    로지텍이 제일 유명하길래 그중에 디자인 이쁜걸로 구매했어요
                                                    일반 키보드보다 작고 너무 귀엽네요~
                                                    <br>
                                                    저는 너무 마음에 들어요 원형 키보드라 괜찮을까했는데
                                                    며칠써보니 손에 익네요
                                                    무선이라 선이 걸릴일이 없어서 편하네요
                                                </p>
                                            </div>
                                            <div class="reviews-members-footer">
                                                <a class="total-like" href="#" style="background-color: #2D313C !important; color: white;"><i class="far fa-thumbs-up"></i> 88</a>
                                                <!-- 수정 및 삭제버튼 -->
                                                <a class="edit-delete-button float-right" href="#" style="background-color: #2D313C !important; color: white;"> 삭제</a>
                                                <a class="edit-delete-button float-right" href="#" style="background-color: white !important; color: black;"> 수정</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <!-- 페이지 네비게이션 -->
                                <ul class="pagination">
                                    <li class="page-item"><a class="page-link" href="#">이전</a></li>
                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item active"><a class="page-link" href="#" style="background-color: #2D313C; color: white !important; border: 1px solid #2D313C;">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item"><a class="page-link" href="#">다음</a></li>
                                </ul>
                            </div>
                            <!-- 리뷰 작성 박스 -->
                            <div class="bg-white rounded shadow-sm p-4 mb-5 rating-review-select-page">
                                <h5 class="mb-4" style="font-weight: bold !important;">리뷰 작성</h5>
                                <form>
                                    <div class="form-group">
                                        <label>내용</label>
                                        <textarea id="mr_cont" class="form-control" style="resize: none; height: 150px;"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <button id="insert" onclick="insertR(${gvo.getPro_no()})" class="btn btn-primary btn-m" type="button" style="background-color: #2D313C !important; border: 1px solid #2D313C;"> 등록하기 </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <br><br><br><br><br>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
 <script>
 
/*  function insertR(proNum){
	    var url = 'mdreview?pro_no=' + proNum;
	    window.open(url, "_self");
	    }; */
	    
function insertR(){  
	    	
	   /*  var textarea = $("#mr_cont").val()
	    textarea = encodeURIComponent(textarea); */
	$.ajax({         
		url : "/mdreview",
		method: "get",
		data : {
			'pro_no' : $("#proN").val(),
			'mr_cont': $("#mr_cont").val()
		}
	});        
   console.log($("#mr_cont").val())
		}
 
</script>
    
    
    
    
    <%@ include file="../Common/u_footer.jsp" %>
</body>
</html>