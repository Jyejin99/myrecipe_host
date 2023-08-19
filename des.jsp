<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="./css/des.css">
  <link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css"> 
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script> 
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
    <script>AOS.init();</script>
    <!-- main -->
    <main>
      <div class="container">
        <div class="main-wrap">
            <div class="des-top">
                <div class="des-top-content" data-aos="zoom-in" data-aos-delay="400" data-aos-duration="600">
                    <h2>소개</h2>
                    <p>오늘 저녁은 뭐먹지?</p>
                    <p><b>MyRecipe</b>에서 정해보자</p>
                </div>
            </div>
            <div class="des-main">
                <div class="des-main-content">
                    <div class="des-main-box">
                        <h2>서비스</h2>
                        <div class="des-main" data-aos="fade-right" data-aos-delay="200" data-aos-duration="600">
                            <div class="des-img"><img src="./img/cook.jpg" alt=""></div>
                            <div class="des-title"><h5>1. 나만의 레시피 공유</h5><p>오늘은 내가 요리사!</p><p>나만의 맛있는 요리 레시피를 올려서</p><p>사람들에게 공유할 수 있습니다.</p></div>
                            </div>
                        </div>
                        <div class="des-main" data-aos="fade-left" data-aos-delay="200" data-aos-duration="600">
                            <div class="des-title"><h5>2. 레시피 찾기</h5><p>요리를 하고 싶지만 어떻게 해야할지 모를때!</p><p>다른 사람들의 레시피를 볼 수 있습니다.</p></div>    
                            <div class="des-img"><img src="./img/recipe.jpg" alt=""></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </div>

    </main>

</body>
</html>
<jsp:include page="footer.jsp"></jsp:include>