<%@ page import="fileupload.MyfileDAO"%>
<%@ page import="fileupload.MyfileDTO"%>
<%@ page import="utils.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String num = request.getParameter("num");  // 일련번호 얻기 
String board = request.getParameter("board");

MyfileDTO dto = new MyfileDTO();             // DTO 객체 생성
MyfileDAO dao = new MyfileDAO();  // DAO 객체 생성
dto = dao.selectView(num);  // 주어진 일련번호에 해당하는 기존 게시물 얻기

// 로그인된 사용자 ID 얻기
//String sessionId = session.getAttribute("UserId").toString(); 

int delResult = 0;

dto.setIdx(num);
delResult = dao.deletePost(dto);  // 삭제!!! 
dao.close();

JSFunction.alertLocation("삭제되었습니다.", "board.jsp?board="+board, out); 
%>