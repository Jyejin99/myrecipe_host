<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<jsp:include page="header.jsp"></jsp:include>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="./css/board-form.css">
  <link rel="stylesheet" href="./css/header.css">
  <link rel="stylesheet" href="./css/footer.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<script>
    function validateForm(form) { 
        if (form.name.value == "") {
            alert("작성자를 입력하세요.");
            form.name.focus();
            return false;
        }
        if (form.title.value == "") {
            alert("제목을 입력하세요.");
            form.title.focus();
            return false;
        }
        if (form.attachedFile.value == "") {
            alert("첨부파일은 필수 입력입니다.");
            return false;
        }
    }
</script>
<body>
<%
	String email = (String)session.getAttribute("email");
	String board = request.getParameter("board");
	UserDAO userDAO = new UserDAO();
	UserDAO dao = userDAO.UserInfo(email);
	
	if(email==null){
       	PrintWriter script = response.getWriter();
       	script.println("<script>");
       	script.println("alert('로그인 후 이용해주세요.')");
       	script.println("location.href = 'login.jsp'");
       	script.println("</script>");

       }else{
%>

    <!-- main -->

    <main>
        <div class="container">
            <div class="main-box">
                <div class="main-content">
                    <h5>게시판</h5>
                    <form class="board" name="fileForm" method="post" enctype="multipart/form-data" action="UploadProcess.jsp?board=<%=board%>" onsubmit="return validateForm(this);">
                        <ul class="board-form">
                            <li>
                                <span class="col1">작성자</span>
                            <%
                            	if(email!=null){
                            %>
                                <span class="col2"><input type="text" name="name" value=<%=dao.getName() %> readonly/></span>
                            <%
                            	}
                            %>
                            </li>					
                            <li>
                                <span class="col1">제목</span>
                                <span class="col2"><input name="title" type="text"></span>
                            </li>	    	
                            <li class="area">	
                                <span class="col1">내용</span>
                                <span class="col2">
                                    <textarea name="content"></textarea>
                                </span>
                            </li>
                            <li>
                                <span class="col1">첨부파일</span>
                                <span class="col2"><input type="file" name="attachedFile"></span>
                            </li>			
                        </ul>
                        <ul class="buttons">
                            <li><button type="submit" class="w-20 btn btn-lg btn-success" type="button">업로드</button></li>
                            <li><button class="w-20 btn btn-lg btn-secondary" type="button" onclick="location.href='board.jsp?board=<%=board%>'">목록</button></li>
                        </ul>
                    </form>
                </div>
            </div>
        </div>

    </main>
<%
     }
%>
</body>
</html>

<jsp:include page="footer.jsp"></jsp:include>