<%@ page import="fileupload.MyfileDAO"%>
<%@ page import="fileupload.MyfileDTO"%>
<%@ page import="utils.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 수정 내용 얻기
request.setCharacterEncoding("utf-8");
String num = request.getParameter("num"); 
String board = request.getParameter("board"); 
String title = request.getParameter("title");
String content = request.getParameter("content");

// DTO에 저장
MyfileDTO dto = new MyfileDTO();
dto.setIdx(num);
dto.setTitle(title);
dto.setContent(content); 

// DB에 반영
MyfileDAO dao = new MyfileDAO(); 
int affected = dao.updateEdit(dto); 
dao.close();

// 성공/실패 처리
if (affected == 1) { 
    // 성공 시 상세 보기 페이지로 이동
    response.sendRedirect("View.jsp?board="+ board + "&num="+dto.getIdx()); 
} 
else {
    // 실패 시 이전 페이지로 이동
    JSFunction.alertBack("수정하기에 실패하였습니다.", out);
}
%>