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
  <link rel="stylesheet" href="./css/board.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
    <%
    MyfileDAO dao = new MyfileDAO();
    List<MyfileDTO> fileLists = dao.myFileList();
    dao.close();
    
	String board = request.getParameter("board");
    %>
   <!-- main -->
    <main>
      <div class="container">
      <% if(board.equals("korea")){ %>
    	 <h2 class='title'>한식</h2>
      <% }else if(board.equals("japan")){ %>
      	 <h2 class='title'>일식</h2>
	  <% }else if(board.equals("china")){ %>
      	 <h2 class='title'>중식</h2>
      <% }else{ %>
      	 <h2 class='title'>양식</h2>
      <% } %>
        <div class="card-wrap">
		<% for (MyfileDTO f : fileLists) { %>
            <div class="card">
                <div class="card-img"><a href="View.jsp?board=<%=board %>&num=<%= f.getIdx() %>"><img src="../Uploads/<%= f.getSfile() %>" class="card-img-top" alt="..."></a></div>
              <div class="card-body">
                <h5 class="card-title"><%= f.getTitle() %></h5>
                <p class="card-text"><%= f.getName() %></p>
              </div>
              <div class="card-footer">
                <small class="text-muted"><%= f.getPostdate() %></small>
              </div>
            </div>
		<% } %>       
          </div>
          <div class="board-btn">
            <button class="w-20 btn btn-lg btn-success" onclick="location.href='board-form.jsp?board=<%=board%>'">글올리기</button>
          </div>
      </div>

    </main>
</body>
</html>
<jsp:include page="footer.jsp"></jsp:include>