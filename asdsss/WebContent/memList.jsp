<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %><% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>201707059 김연수</title>
</head>
<body>
<center>
<table >
<br/><br/><br/>
<tr class="Label">
	<td>아이디</td>
	<td>비번</td>
	<td>이름</td>
	<td>번호</td>
	<td>주소</td>
	<td>이메일</td>
	<td>가입일</td>
</tr>
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

	
	String sql ="select * from member";
	pstmt = conn.prepareStatement(sql);
	rs=pstmt.executeQuery();
	while(rs.next()){
		String userid = rs.getString("userid");
		String userpw=rs.getString("userpw");
		String name=rs.getString("name");
		String phone=rs.getString("phone");
		String adress=rs.getString("adress");
		String email=rs.getString("email");
		Timestamp register =rs.getTimestamp("userdate");
		
		
		%>
		<tr class="Label">
		<td><%= userid %></td>
		<td><%= userpw %></td>
		<td><%= name%></td>
		<td><%= phone%></td>
		<td><%= adress%></td>
		<td><%= email%></td>
		<td><%= register%></td>
		
		
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

%></table></center>
</body>
</html>