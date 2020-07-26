<%@page import="jsp.bean.CommentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>201707059 김연수</title>
</head>
<body>
<jsp:useBean id="comment" class="jsp.bean.CommentBean" scope="request"/>
<%
String cmid = request.getParameter("comnum");
String nid = request.getParameter("boardnum");
CommentDAO cdao = CommentDAO.getInstance();
int x = cdao.deleteComment(cmid);
if(x==1){
	out.println("<script>");
	out.println("alert('삭제되었습니다.')");
	response.sendRedirect("main.jsp?target=listdetail&boardnum="+nid);
	out.println("</script>");
}else{
	out.println("<script>");
	out.println("alert('삭제할 수 없습니다.')");
	response.sendRedirect("main.jsp?target=listdetail&boardnum="+nid);
	out.println("</script>");
}
%>
</body>
</html>