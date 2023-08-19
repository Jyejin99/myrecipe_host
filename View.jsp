<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="fileupload.MyfileDAO"%>
<%@ page import="fileupload.MyfileDTO"%>
<%@ page import="java.io.PrintWriter" %>
<jsp:include page="header.jsp"></jsp:include>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="./css/view.css">
  <link rel="stylesheet" href="./css/header.css">
  <link rel="stylesheet" href="./css/footer.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <script>
  <% String board = request.getParameter("board"); %>
  function deletePost() {
	var confirmed = confirm("정말로 삭제하겠습니까?"); 
	    if (confirmed) {
	        var form = document.writeFrm;       // 이름(name)이 "writeFrm"인 폼 선택
	        form.method = "post";               // 전송 방식 
	        form.action = "DeleteProcess.jsp?board=<%=board%>";  // 전송 경로
	        form.submit();                      // 폼값 전송
	    }
	}
  </script>
</head>
<body>
<%
	String num = request.getParameter("num");
	String name = request.getParameter("name");
	String email = (String)session.getAttribute("email");
	
	MyfileDAO dao = new MyfileDAO();
	MyfileDTO dto = dao.selectView(num);
	UserDAO userDAO = new UserDAO();
	UserDAO n = userDAO.UserInfo(email);
%>

    <!-- main -->

    <main>
        <div class="container">
            <div class="main-box">
                <div class="main-content">
                    <h5>게시판</h5>
                    <form class="board" name="writeFrm">
                    	<input type="hidden" name="num" value="<%= num %>"/>
                        <ul class="board-form">
                            <li>
                                <span class="col1">작성자</span>
                                <span class="col2"><%=dto.getName() %></span>
                            </li>					
                            <li>
                                <span class="col1">제목</span>
                                <span class="col2"><%= dto.getTitle() %></span>
                            </li>
							<li>
                                <div class="food-img">
                                	<img src="../Uploads/<%= dto.getSfile() %>"/>
                                </div>
                            </li>		
                            <li class="area">
                                <span class="col2">
                                    <%= dto.getContent() %>
                                </span>
                            </li>
		
                        </ul>
                        <ul class="buttons">
						<%
						String boardname = dto.getName();
						String logname = n.getName();
						
						if(boardname.equals(logname)){ %>
                            <li><button class="w-20 btn btn-lg btn-success" type="button" onclick="deletePost();">삭제</button></li>
                            <li><button class="w-20 btn btn-lg btn-success" type="button" onclick="location.href='Edit.jsp?board=<%=board%>&num=<%=num%>'">수정</button></li>
						<% } %>
                            <li><button class="w-20 btn btn-lg btn-secondary" type="button" onclick="location.href='board.jsp?board=<%=board%>'">목록</button></li>
                        </ul>
                    </form>
                </div>
            </div>
        </div>

    </main>
</body>
</html>

<jsp:include page="footer.jsp"></jsp:include>