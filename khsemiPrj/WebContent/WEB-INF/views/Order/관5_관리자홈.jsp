<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- css -->
    <link rel="stylesheet" href="Resources/Order/관5_관리자홈.css">
    <title>Document</title>
</head>
<body>
    <div id="Mmenubar"></div>
    
    
    <div id="route">
        <img id="home_icon"src="Resources/img/i_con/home_icon.png" alt="" style="float: left;">
        <div style="display: block; float: left;"> &nbsp;관리자 홈 </div> 
            
    </div>

    <div id="top">
        <div id="t1">
            <table class="tb1">
                <caption>상품 관리</caption>
                <tr>
                    <td>품절 상품</td>
                    <td>2</td>
                </tr>
                <tr>
                    <td>문제 상품</td>
                    <td>4</td>
                </tr>
            </table>
        </div>
        <div id="t2">
            <table class="tb1">
                <caption>회원 관리</caption>
                <tr>
                    <td>신규 회원</td>
                    <td></td>
                </tr>
                <tr>
                    <td>총 회원 수</td>
                    <td></td>
                </tr>
            </table>
        </div>
        <div id="t3">
            <table class="tb2">
                <caption>주문 내역 관리</caption>
                <tr>
                    <td>입금확인</td>
                    <td>출고준비</td>
                    <td>배송중</td>
                    <td>배송완료</td>
                    <td>주문취소</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </div>
    </div>
    <div id="bottom">

        <div id="bRight">
        <div id="wrap">
                <table class="tb3">
                    <caption>일간 / 주간 / 월간 통계</caption>
                    <thead>
                      <tr>
                        <th style="font-style: italic;">12월</th>
                        <th>월</th>
                        <th>화</th>
                        <th>수</th>
                        <th>목</th>
                        <th>금</th>
                        <th>토</th>
                        <th>일</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr class="week" id="week1">
                        <td>1주차</td>
                        <td></td>
                        <td></td>
                        <td>1</td>
                        <td>2</td>
                        <td>3</td>
                        <td>4</td>
                        <td>5</td>
                      </tr>
                      <tr>
                        <td>일 합계</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                      </tr>
                      <tr>
                        <td>주 합계</td>
                        <td colspan="7"></td>
                      </tr>
                      <tr class="week" id="week2">
                        <td>2주차</td>
                        <td>6</td>
                        <td>7</td>
                        <td>8</td>
                        <td>9</td>
                        <td>10</td>
                        <td>11</td>
                        <td>12</td>
                      </tr>
                      <tr>
                        <td>일 합계</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                      </tr>
                      <tr>
                        <td>주 합계</td>
                        <td colspan="7"></td>
                      </tr>
                      <tr class="week" id="week3">
                        <td>3주차</td>
                        <td>13</td>
                        <td>14</td>
                        <td>15</td>
                        <td>16</td>
                        <td>17</td>
                        <td>18</td>
                        <td>19</td>
                      </tr>
                      <tr>
                        <td>일 합계</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                      </tr>
                      <tr>
                        <td>주 합계</td>
                        <td colspan="7"></td>
                      </tr>
                      <tr class="week" id="week4">
                        <td>4주차</td>
                        <td>20</td>
                        <td>21</td>
                        <td>22</td>
                        <td>23</td>
                        <td>24</td>
                        <td>25</td>
                        <td>26</td>
                      </tr>
                      <tr>
                        <td>일 합계</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                      </tr>
                      <tr>
                        <td>주 합계</td>
                        <td  colspan="7"></td>
                      </tr>
                      <tr class="week" id="week5">
                        <td>5주차</td>
                        <td>27</td>
                        <td>28</td>
                        <td>29</td>
                        <td>30</td>
                        <td>31</td>
                        <td></td>
                        <td></td>
                      </tr>
                      <tr>
                        <td>일 합계</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                      </tr>
                      <tr>
                        <td>주 합계</td>
                        <td colspan="7"></td>
                      </tr>
                      <tr>
                        <td style="font-weight: bold;">월 합계</td>
                        <td colspan="7"></td>
                      </tr>
                    </tbody>
                    </table>
            </div>
        </div>
        <div id="bLeft">
            <div id="left1">
                <table class="tb1">
                    <caption>Q&A 관리</caption>
                    <tr>
                        <td>신규 Q&A</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>미답변</td>
                        <td></td>
                    </tr>
                </table>
            </div>
            <div id="left2">
                <table class="tb1">
                    <caption>리뷰 신고 관리</caption>
                    <tr>
                        <td>미처리 신고</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Black List</td>
                        <td></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

    
<br><br><br>
</body>
</html>