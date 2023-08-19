<%@ page import="fileupload.MyfileDAO"%>
<%@ page import="fileupload.MyfileDTO"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="utils.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>

<%
String num = request.getParameter("num");  // 일련번호 받기 
MyfileDAO dao = new MyfileDAO();  // DAO 생성
MyfileDTO dto = dao.selectView(num);        // 게시물 가져오기 
dao.close();  // DB 연결 해제
%>
<!DOCTYPE html>
<html>
<head>
  	<meta charset="UTF-8">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<title>Document</title>
  	<link rel="stylesheet" href="./css/board-form.css">
  	<link rel="stylesheet" href="./css/header.css">
  	<link rel="stylesheet" href="./css/footer.css">
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	<meta charset="UTF-8">
	<title>회원제 게시판</title>
	<script type="text/javascript">
		function validateForm(form) {  // 폼 내용 검증 
		    if (form.title.value == "") {
		        alert("제목을 입력하세요.");
		        form.title.focus();
		        return false;
		    }
		    if (form.content.value == "") {
		        alert("내용을 입력하세요.");
		        form.content.focus();
		        return false;
		    }
		}
	</script>
</head>
<body>
<%
	String email = (String)session.getAttribute("email");
	request.setCharacterEncoding("utf-8");
	String board = request.getParameter("board");
	UserDAO userDAO = new UserDAO();
	UserDAO n = userDAO.UserInfo(email);
%>
    <main>
        <div class="container">
            <div class="main-box">
                <div class="main-content">
                    <h5>게시판</h5>
                    <form class="board" name="writeFrm" method="post" action="EditProcess.jsp?board=<%=board%>&num=<%=num%>" onsubmit="return validateForm(this);">
                    <input type="hidden" name="num" value="<%= dto.getIdx() %>" /> 
                        <ul class="board-form">
                            <li>
                                <span class="col1">작성자</span>
                            <%
                            	if(email!=null){
                            %>
                                <span class="col2"><input type="text" name="name" value=<%=n.getName() %> readonly/></span>
                            <%
                            	}
                            %>
                            </li>					
                            <li>
                                <span class="col1">제목</span>
                                <span class="col2"><input name="title" type="text" value="<%= dto.getTitle() %>"></span>
                            </li>	    	
                            <li class="area">	
                                <span class="col1">내용</span>
                                <span class="col2">
                                    <textarea name="content"><%= dto.getContent() %></textarea>
                                </span>
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
</body>
</html>

<jsp:include page="footer.jsp"></jsp:include>