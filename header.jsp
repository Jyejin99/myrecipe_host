<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.util.ArrayList"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/header.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  </head>
<body>
	<%
		String email = (String)session.getAttribute("email");
	
		UserDAO userDAO = new UserDAO();
		UserDAO dao = userDAO.UserInfo(email);

	%>
    <!-- header -->
    <header class="p-3">
        <div class="container">
          <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a href="index.jsp" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                <img src="./img/logo.png" alt="logo" class="logo-header">
            </a>
    
            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
              <li><a href="des.jsp" class="nav-link px-3 text-white">소개</a></li>
              <li><a href="board.jsp?board=korea" class="nav-link px-3">한식</a></li>
              <li><a href="board.jsp?board=japan" class="nav-link px-3">일식</a></li>
              <li><a href="board.jsp?board=china" class="nav-link px-3">중식</a></li>
              <li><a href="board.jsp?board=america" class="nav-link px-3">양식</a></li>
            </ul>
    
            <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
              <input type="search" class="form-control form-control-white text-bg-white" placeholder="Search..." aria-label="Search">
            </form>
    
            <div class="text-end">
            <%
            	if(email==null){
            %>
				<button type="button" class="btn btn-outline-light me-2 login" onclick="location.href='login.jsp'">Login</button>
				<button type="button" class="btn btn-warning sign-up" onclick="location.href='signup.jsp'">Sign-up</button>
            <%
            	}else{
			%> 
				<span><%=dao.getName() %>님, 환영합니다</span> 
				<button type="button" class="btn btn-warning sign-up" onclick="location.href='logout.jsp'">로그아웃</button>
				
			<%
            	}
			%>

            </div>
          </div>
        </div>
      </header>
    </body>
</html>