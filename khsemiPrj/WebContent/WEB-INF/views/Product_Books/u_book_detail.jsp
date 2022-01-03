<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.util.List"%>
<%@page import="com.dev.probook.model.ProbookVO"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     

<% 
	List<ProbookVO> list = (List<ProbookVO>)request.getAttribute("data");
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품 상세페이지(도서)</title>
    <!-- CSS 파일 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/css/Product_Books/u_book_detail.css">

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
    <a href="" id="placeLink">> 주제별 도서</a>
    <a href="" id="placeLink">> IT 자격증</a>
    
    <div id="searcharea">
		<form action="bookdetail" method="get">
		
			<h3>임시조치, 정확한 책 제목을 검색하면 필요 정보를 출력.</h3>
					        
			<select id="selectbutton" name="searchtype">
				<option value="PRO_NAME">책 제목</option>
			</select>
					    
			<input id="searchbar" type="text" placeholder="책 제목으로 검색" name="searchvalue">
			<button id="searchbutton" type="submit">검색</button>
		</form>
	</div>
					    
    <!-- 상단 컨텐츠 항목 -->
    <div class="content">
        <!-- 오른쪽 책 제목 및 설명 / 구매 항목 -->
        <!-- 책 제목 및 저자, 출판사, 출판일 -->
        <div class="box_datail_right">
            <br>
            
        <% 
			for(ProbookVO p : list)
			{
				String productName = p.getProductName();
				String writerName = p.getWriterName();
				String publisher = p.getPublisher();
				String enrollDate = p.getEnrollDate();
				String productLikeCount = p.getProductLikeCount();
				String productPrice = p.getProductPrice();
				String imageLink = p.getImageLink();
				
				String productDescript = p.getProductDescript();
				String contentList = p.getContentList();
		%>	
		
        <hr id="rec_peopleLine">
        <!-- 책 제목 및 저자, 출판사, 출판일 그리고 좋아요 수  -->
        <div class="rec_peopleBox">
            <h2 id="book_Title" style="font-weight: bold;"><%=productName%></h2>
            <br>
            <%=writerName%> | <%=publisher%> | <%=enrollDate%>
            <br>
            <a href="" class="edit-delete-button" style="background-color: #2D313C !important; color: white; position: relative; top: 30px;"><i class="far fa-thumbs-up"></i><%=productLikeCount%>명의 유저들이 추천합니다</a>
        </div>
        <hr id="pur_QauntityLine">
        <!-- 구매 수량 및 가격 그리고 장바구니,구매 버튼 -->
        <!-- 왼쪽 영역 : 구매수량 -->
        <strong id="pur_Qauntity">구매수량</strong>
        <!-- 오른쪽 영역 : 수량 버튼  -->
        <div class="def-number-input number-input safari_only" style="position: relative; left: 1200px; top: 260px; margin-bottom: 15px;">
            <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" class="minus"></button>
                <input class="quantity" min="0" name="quantity" value="1" type="number">
            <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
        </div>
        <br>
        <!-- 금액 영역 -->
        <div class="buy_price">
            <strong>
                <span style="font-size: 15px; vertical-align: middle;">합계</span>
                <%=productPrice%>원
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
        <!-- 왼쪽 커버 이미지 -->
        <div class="box_detail_left">
            <!-- 책 커버 이미지 -->
            <div class="cover">
                <img src="<%=imageLink%>" width="198" height="282" alt="" class="coverImg">
            </div>
        </div>
        <br><br><br>
        <hr style="border: 0; height: 1px; background: #ccc; width: 62%; position: relative; bottom: 101px;">
        <!-- 하단 소개항목 -->
        <!-- 점프 버튼 -->
        <div class="bottom_intro">
            <div class="btn-group-vertical" id="jump_button" role="group" aria-label="Vertical button group">
                <a href="#book_intro"><button type="button" class="btn" style="background-color: #2D313C !important; color: white; width: 150px !important; margin-bottom: 1px;">책 소개</button></a>
                <a href="#book_contents"><button type="button" class="btn" style="background-color: #2D313C !important; color: white; width: 150px !important; margin-bottom: 1px;">목차</button></a>
                <a href="#book_review"><button type="button" class="btn" style="background-color: #2D313C !important; color: white; width: 150px !important; margin-bottom: 1px;">독자 리뷰</button></a>
            </div>
            <!-- 하단 소개항목/책 소개 -->
            <div class="bottom_book_intro">
                <strong id="book_intro">책 소개</strong>
                    <br>
                <p style="line-height: 2.0;">
					<%=productDescript%>
                </p>
            </div>
            <hr id="bottom_contents_line" style="border: 0; height: 1px; background: #ccc; width: 35%; position: relative; right: 258px; bottom: 90px;">
            <!-- 하단 소개항목/목차 -->
            <div class="bottom_book_contents">
                <strong id="book_contents">목차</strong>
                    <div class="contents_inside">
                        <p>
                            <br>
                            [목 차]
                            <br><br>
                            <%=contentList%>
                        </p>
                    </div>
            </div>
        </div>
        
		<%	
			}
		%>	 
        
            <hr id="bottom_contents_line" style="border: 0; height: 1px; background: #ccc; width: 62%; position: relative; bottom: 10px;">
            <!-- 하단 소개항목/독자 리뷰 -->
            <link rel="stylesheet" href="https://allyoucan.cloud/cdn/icofont/1.0.1/icofont.css" integrity="sha384-jbCTJB16Q17718YM9U22iJkhuGbS0Gd2LjaWb4YJEZToOPmnKDjySVa323U+W7Fv" crossorigin="anonymous">
            <div class="container" id="book_review">
                            <div class="bg-white rounded shadow-sm p-4 mb-4 restaurant-detailed-ratings-and-reviews">
                                <h5 class="mb-1" style="font-weight: bold !important;">독자 리뷰</h5>
                                <div class="reviews-members pt-4 pb-4">
                                    <div class="media">
                                        
                                        <div class="media-body">
                                            <div class="reviews-members-header">
                                                <span class="star-rating float-right">
                                                    <a href="#"><i class='fas fa-bell fa-2x' style="position: relative; left: 3px; color: red;"></i></a>
                                                </span>
                                                <!-- 리뷰 글쓴이 및 작성일 -->
                                                <h6 class="mb-1"><a class="text-black" href="#">Singh Osahan</a></h6>
                                                <p class="text-gray">2021-12-15</p>
                                            </div>
                                            <!-- 리뷰 내용 -->
                                            <div class="reviews-members-body">
                                                <p>개발 관련하여 인터넷에 검색해보면 고가의 강의들, 오프라인 수업들, 부트캠프 등등 사실 어디서 이 공부를 시작해야할지 또한 하나의 공부인데
                                                    <br>
                                                    이 책에서는 개발자로 공부나 취업을 꿈꾸는 사람들에게 '어떤 방법이 좋은지', '어떤 경로가 있는지', '어떤 사람에게 어떤 공부를 추천하는지' 등
                                                    <br>
                                                    경험자의 입장에서 상세하게 담겨있더라고요. 특히 기업별로(스타트업, 대기업, SI 등) 특징이 정리되어 있고
                                                    <br>
                                                    다양한 개발자 분들의 인터뷰도 담겨있어서 개발에 관해 넓게 감을 얻고 지식을 쌓을 수 있어 좋았습니다.
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
                                                <p class="text-gray">2021-12-20</p>
                                            </div>
                                            <!-- 리뷰 내용 -->
                                            <div class="reviews-members-body">
                                                <p>개발 관련하여 인터넷에 검색해보면 고가의 강의들, 오프라인 수업들, 부트캠프 등등 사실 어디서 이 공부를 시작해야할지 또한 하나의 공부인데
                                                    <br>
                                                    이 책에서는 개발자로 공부나 취업을 꿈꾸는 사람들에게 '어떤 방법이 좋은지', '어떤 경로가 있는지', '어떤 사람에게 어떤 공부를 추천하는지' 등
                                                    <br>
                                                    경험자의 입장에서 상세하게 담겨있더라고요. 특히 기업별로(스타트업, 대기업, SI 등) 특징이 정리되어 있고
                                                    <br>
                                                    다양한 개발자 분들의 인터뷰도 담겨있어서 개발에 관해 넓게 감을 얻고 지식을 쌓을 수 있어 좋았습니다.
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
                                                    <a href="#"><i class="fas fa-bell fa-2x red-text" style="position: relative; left: 3px; color: red;"></i></a>
                                                </span>
                                                <!-- 리뷰 글쓴이 및 작성일 -->
                                                <h6 class="mb-1"><a class="text-black" href="#">Gurdeep Singh</a></h6>
                                                <p class="text-gray">2021-12-30</p>
                                            </div>
                                            <!-- 리뷰 내용 -->
                                            <div class="reviews-members-body">
                                                <p>개발 관련하여 인터넷에 검색해보면 고가의 강의들, 오프라인 수업들, 부트캠프 등등 사실 어디서 이 공부를 시작해야할지 또한 하나의 공부인데
                                                    <br>
                                                    이 책에서는 개발자로 공부나 취업을 꿈꾸는 사람들에게 '어떤 방법이 좋은지', '어떤 경로가 있는지', '어떤 사람에게 어떤 공부를 추천하는지' 등
                                                    <br>
                                                    경험자의 입장에서 상세하게 담겨있더라고요. 특히 기업별로(스타트업, 대기업, SI 등) 특징이 정리되어 있고
                                                    <br>
                                                    다양한 개발자 분들의 인터뷰도 담겨있어서 개발에 관해 넓게 감을 얻고 지식을 쌓을 수 있어 좋았습니다.
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
                                        <textarea class="form-control" style="resize: none; height: 150px;"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <button class="btn btn-primary btn-m" type="button" style="background-color: #2D313C !important; border: 1px solid #2D313C;"> 등록하기 </button>
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
    <%@ include file="../Common/u_footer.jsp" %>
</body>
</html>