<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./1_홈.css">

</head>
<body>

<div class="parallax"> 
  <div id="aa">
    <div id="bb">
      <div id="bb1"><img src="./아이콘2.png" id="icon">DEV BOOKS</div>
        <div id="bb2"><br>
          IT인을 위한 온라인 북 스토어<br>
            다양한 IT 서적을 찾고 계신가요?<br>
            방대한 종류의 IT 자격증 서적과<br>
            전문적인 개발자들을 위한 프로그래밍 서적까지,<br>
            오직 IT인들을 위한 온라인 북 스토어<br>
            <span style="font-size: 45px;">DEV BOOKS 입니다.</span><br>
        </div>
    </div>
  </div> 
</div>

<div class="parallax">
  <div style="width:100%; height: 250px;"></div>
  <div class="slideshow-container">
  
    <div class="mySlides fade">
      <div class="numbertext">1 / 3</div>
        <div id="img">
          <img id="book" src="./자바의정석.JPG">
          <div id="txt">
            <h3>MD 추천</h3>
            <h1>자바의 정석</h1>
            <span>남궁성 | 강산북스 | 27000원 <br><br>
              자바의 정석</span>
          </div>
        </div><!-- img -->
      <!-- <div class="text">Caption Text</div> -->
    </div>
    
    <div class="mySlides fade">
      <div class="numbertext">2 / 3</div>
        <div id="img">
          <img id="book" src="./it지식.JPG">
          <div id="txt">
            <h3>MD 추천</h3>
            <h1>비전공자를 위한 IT 지식</h1>
            <span>남궁성 | 강산북스 | 27000원 <br><br>
              자바의 정석</span>
          </div>
        </div><!-- img -->
    </div>
    
    <div class="mySlides fade">
      <div class="numbertext">3 / 3</div>
      <div id="img">
        <img id="book" src="./몰입.JPG">
        <div id="txt">
          <h3>MD 추천</h3>
          <h1>몰입 자바스크립트</h1>
          <span>남궁성 | 강산북스 | 27000원 <br><br>
            자바의 정석</span>
        </div>
      </div><!-- img -->
    </div>
    
    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
    <a class="next" onclick="plusSlides(1)">&#10095;</a>
    
    </div>
    <br>
    
    <div style="text-align:center">
      <span class="dot" onclick="currentSlide(1)"></span> 
      <span class="dot" onclick="currentSlide(2)"></span> 
      <span class="dot" onclick="currentSlide(3)"></span> 
    </div>

</div>

  
  <script>
  var slideIndex = 1;
  showSlides(slideIndex);
  
  function plusSlides(n) {
    showSlides(slideIndex += n);
  }
  
  function currentSlide(n) {
    showSlides(slideIndex = n);
  }
  
  function showSlides(n) {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    if (n > slides.length) {slideIndex = 1}    
    if (n < 1) {slideIndex = slides.length}
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";  
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
  }
  </script>
<div>
  <a href="./1_홈.html">1_홈</a>
  <br><a href="./관2_상품관리_굿즈.html">관2_상품관리_굿즈</a>
  <br><a href="./관2_상품관리_도서.html">관2_상품관리_도서</a>
  <br><a href="./관3_회원관리.html">관3_회원관리</a>
  <br><a href="./관4_주문내역관리.html">관4_주문내역관리</a>
  <br><a href="./관5_관리자홈.html">관5_관리자홈</a>
  <br><a href="./관6_저자관리_저서.html">관6_저자관리_저서</a>
  <br><a href="./관6_저자관리_저자.html">관6_저자관리_저자</a>
</div>



</body>
</html>
    