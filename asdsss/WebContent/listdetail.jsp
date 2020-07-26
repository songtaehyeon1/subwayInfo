<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="jsp.bean.CommentBean"%>
<%@page import="jsp.bean.CommentDAO"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<title>201707059 김연수</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</head>

<body>
<center>
  <%

    Class.forName("com.mysql.jdbc.Driver");

    String url = "jdbc:mysql://localhost:3309/jsptest";

    String mysql_id = "jspid";

    String mysql_pw = "jsp2017";



    int num = Integer.parseInt(request.getParameter("boardnum"));
    String userid="";
    String boardnum="";


    try{

      Connection conn = DriverManager.getConnection(url, mysql_id, mysql_pw);

      Statement stmt = conn.createStatement();



      String sql = "select userid,boardnum,boardtitle, boardcomment from board where boardnum="+num;

      ResultSet rs = stmt.executeQuery(sql);

      if(rs.next()){
		
    	userid = rs.getString(1);
        boardnum = rs.getString(2);
        String boardtitle = rs.getString(3);
        String boardcomment = rs.getString(4);

  %>

  <div class="container">
  <br><br><br>
    <table class = "detail table">
  <tr>

      <th style= "width: 150px; text-align: center;">글번호</th>
	  
      <td><%=boardnum%></td>

    </tr>
    
    <tr>

   <th style= "width: 150px; text-align: center;">글쓴이</th> 
   <td><%=userid%></th>
    
    </tr>

    <tr>

     <th style= "width: 150px; text-align: center;">글제목</th> 
      <td><%=boardtitle%></td>

    </tr>

    <tr>

       <th style= "width: 150px; text-align: center;">글내용</th>

      <td style=" width:500px;"><%=boardcomment%></td>

    </tr>

  </table>
<br>
  <%

      rs.close();

      stmt.close();

      conn.close();

      }

    }catch(SQLException e){

      out.println(e.toString());

    }

  %>



  
    <%
		String userid2 = (String)session.getAttribute("userid");
    	if(userid2.equals(userid)||userid2.equals("admin")){
    %>
    <a href="main.jsp?target=listupdate_form&boardnum=<%=num%>"><input type="button" id="update" value="수정"  class = "btn btn-primary"></a>

   <a href="main.jsp?target=listdelete&boardnum=<%=num%>"> <input type="button" id="delete" value="삭제"  class = "btn btn-primary"></a>
   <%} %>
    
	<a href="main.jsp?target=list"><input type="button" id="list" value="목록"  class = "btn btn-primary"></a>
 <br><br><br><br><br><br><br><br><br>
 
 <!-- 댓글기능 아래 . -->
 
 
 	
	
  <div class="container">
	<table class = "detail table">
		
		<%
		CommentDAO cdao = CommentDAO.getInstance();
		ArrayList<CommentBean> commentList = cdao.getComment(boardnum);
		for(int i=0; i<commentList.size(); i++){
		CommentBean c = (CommentBean)commentList.get(i);
		%>
    <tr>
	<td>
    	<%=c.getUserid() %><br>
    	<%=c.getComdate() %><br><br>
    	<%=c.getComtext() %>
    	</td>
    	<td style = "text-align : right;">
    	
    <%if(userid2!=null){
		if(userid2.equals(c.getUserid())||userid2.equals("admin")){ %>
       <a href="commentDel.jsp?comnum=<%=c.getComnum() %>&boardnum=<%=boardnum%>" >DELETE</a>
<%--    <input type = "button" onclick = "commentDel.jsp?comnum=<%=c.getComnum() %>&boardnum=<%=boardnum%>" class = "btn full-right"> --%>
   
    <%} }%>
    </td>
	</tr>
<%}%>
	
	</table>
	</div>
	
 <form action="commentAct.jsp" method="post">
		<div class="form-group">
		<!-- <textarea name="comment" placeholder="내용" maxlength="100" required></textarea> -->
		  <textarea name="comment" class="form-control" rows="5" id="comment"></textarea> 
	<br>
		<input type="submit" value="댓글쓰기"  class = "btn btn-primary">
		<input type="hidden" name="boardnum" value="<%=boardnum%>">
		</div>
	</form>
 
 

</center>
</body>
</html>