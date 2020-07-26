<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%@page import="jsp.bean.CommentDAO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>201707059 김연수</title>
</head>
<body>
<jsp:useBean id="comment" class="jsp.bean.CommentBean" scope="request"/>
<%
String id = (String)session.getAttribute("userid");
if(id==null){
	out.println("<script>");
	out.println("alert('로그인이 필요합니다.')");
	out.println("location.href='main.jsp?target=login_form'");
	out.println("</script>");
}else{
	String t = request.getParameter("comment");
	String text = t.replace("\n", "<br>"); 
	
%>
<jsp:setProperty name="comment" property="userid" value="<%=id%>"/>
<jsp:setProperty name="comment" property="comtext" value="<%=text%>"/>
<jsp:setProperty name="comment" property="boardnum" param="boardnum"/>
<%
CommentDAO cdao = CommentDAO.getInstance();
cdao.insertComment(comment);
response.sendRedirect("main.jsp?target=listdetail&boardnum="+comment.getBoardnum());
}
%>
</body>
</html>