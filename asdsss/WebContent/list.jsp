<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %><% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans|Jua&display=swap&subset=korean" rel="stylesheet">
<title>JSP Wep Page for jsp2018 class</title>
<style>
p.a {
font-family: 'Black Han Sans', sans-serif;
font-family: 'Jua', sans-serif;
font-size: 30px;
color:black
}
</style>
</head>
<body>
<br/><br/><br/>
<div class = "container">
<table class="table table-hover">
<p class = "a">회원전용 게시판</p>
<thead>
<tr>

	<th>글번호</th>
	<th>글제목</th>
	<th>글내용</th>
	<th>글쓴시간</th>
</tr>
</thead>
<%
Connection conn=null;
PreparedStatement pstmt=null;
ResultSet rs=null;


try{
	String jdbcUrl="jdbc:mysql://localhost:3309/jsptest";//url주소저장
	String dbId="jspid"; //아이디지정
	String dbPass="jsp2017"; //비번지정
	
	Class.forName("com.mysql.jdbc.Driver");//driver로딩
	conn=DriverManager.getConnection(jdbcUrl,dbId,dbPass);//드라이버를가지고 커낵션 객체연결
	
	
	String sql ="select * from board";
	pstmt = conn.prepareStatement(sql);
	rs=pstmt.executeQuery();
	while(rs.next()){
		String boardnum = rs.getString("boardnum");
		String boardtitle = rs.getString("boardtitle");
		String boardcomment = rs.getString("boardcomment");
		Timestamp boarddate =rs.getTimestamp("boarddate");
		
		%>
		<tr class="Label">
		<td><%= boardnum %></td>
		<td style="width:100px"><%= boardtitle%></a></td>
		<td style="width:200px"><a href="main.jsp?target=listdetail&boardnum=<%=boardnum%>"><%=boardcomment%></a></td>
		<td><%=boarddate%></td>
		
		</tr>
	<%}
	
	
}catch(Exception e){
	
}finally{
	if(rs !=null)
		try{rs.close();}catch(SQLException sqle){}
	if(pstmt !=null)
		try{conn.close();}catch(SQLException sqle){}
	if(conn !=null)
		try{conn.close();}catch(SQLException sqle){}
	
}

%></table>
 <a href="main.jsp?target=listwrite"><input type="button" value="글쓰기" class="btn btn-primary"></a>
</center>
</body>
</html>