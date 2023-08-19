<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.util.List"%>
<%@ page import="fileupload.MyfileDAO"%>
<%@ page import="fileupload.MyfileDTO"%>
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
  <link rel="stylesheet" href="./css/index.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>

</head>
<body>
  <!-- header -->
  <%
  	String email = (String)request.getParameter("email");
  
	  MyfileDAO dao = new MyfileDAO();
	  List<MyfileDTO> fileLists = dao.myFileList();
	  dao.close();
 
  %>
	
    <!-- main -->
    <main>
      <div class="container">
        <div class="top-img">
          <div class="top-img-btn">
            <button>공유하기</button>
          </div>
          <img src="./img/top.png" class="top-img-pc" alt="top">
        </div>
        <div class="top-img-mobile">
          <div class="top-img-btn">
            <button onclick="location.href='login.html'">공유하기</button>
          </div>
          <img src="./img/logo-mb.png" class="top-img-mb" alt="top">
        </div>
        <div class="menu-wrap">
          <ul class="menu-list">
            <li>
              <a href="board.jsp?board=korea">
                <div class="menu-list-food"><p>한식</p></div>
                <img src="./img/kfood.jpg" alt="korea">
              </a>
            </li>
            <li>
              <a href="board.jsp?board=japan">
                <div class="menu-list-food"><p>일식</p></div>
                <img src="./img/jfood.jpg" alt="korea">
              </a>
            </li>
            <li>
              <a href="board.jsp?board=china">
                <div class="menu-list-food"><p>중식</p></div>
                <img src="./img/cfood.png" alt="korea">
              </a>
            </li>
            <li>
              <a href="board.jsp?board=america">
                <div class="menu-list-food"><p>양식</p></div>
                <img src="./img/afood.jpg" alt="korea">
              </a>
            </li>
          </ul>
        </div>
        <div class="swiper-container">
          <h2 class="title">최신 레시피</h2>
          <div class="swiper-wrapper">
 		<% for (MyfileDTO f : fileLists) { %>         
            <div class="swiper-slide">
            	<h5><%= f.getTitle() %></h5>
            	<a href="#">
            		<div class="slide-img">
            			<img src="../Uploads/<%= f.getSfile() %>">	
            		</div>
            	</a>
            	<div class="rank-content">
	            	<span class="rank-user"><%= f.getName() %></span>
	            	<span class="rank-title"><%= f.getTitle() %></span>
	            	<span class="rank-date"><%= f.getPostdate() %></span>
            	</div>
            </div>
		<% } %> 
          </div>
        
          <!-- 네비게이션 -->
          <div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
          <div class="swiper-button-prev"></div><!-- 이전 버튼 -->
        
          <!-- 페이징 -->
          <div class="swiper-pagination"></div>
        </div>
        <script src="./js/slide.js"></script>
      </div>

    </main>

    <!-- footer -->

</body>
</html>
<jsp:include page="footer.jsp"></jsp:include>