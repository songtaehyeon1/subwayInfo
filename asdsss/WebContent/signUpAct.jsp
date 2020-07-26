<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>201707059 김연수</title>
</head>
<body>
<center>
<%	String userid = request.getParameter("userid");
	String userpw = request.getParameter("userpw");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String adress = request.getParameter("adress");	
	String email = request.getParameter("email");
	Timestamp userdate = new Timestamp(System.currentTimeMillis());
		%> <!-- getparameter을 사용해서 값을 전달받은것 -->

<%
Connection conn=null;				//커넥션 객체
PreparedStatement pstmt =null;  //쿼리수행시키기위해준비하는객체
String str="";  //쿼리받을 스트링
try{
	String jdbcUrl="jdbc:mysql://localhost:3309/jsptest";//url주소저장
	String dbId="jspid"; //아이디지정
	String dbPass="jsp2017"; //비번지정
	
	Class.forName("com.mysql.jdbc.Driver");//driver로딩
	conn=DriverManager.getConnection(jdbcUrl,dbId,dbPass);//드라이버를가지고 커낵션 객체연결
	

	String sql ="insert into member values(?,?,?,?,?,?,?)";
	pstmt=conn.prepareStatement(sql); 
	pstmt.setString(1,userid);
	pstmt.setString(2, userpw);
	pstmt.setString(3, name);
	pstmt.setString(4, phone);
	pstmt.setString(5, adress);
	pstmt.setString(6, email);
	pstmt.setTimestamp(7, userdate);
	pstmt.executeUpdate();
	
	 %>
     <script type="text/javascript">
     alert("가입완료");
     location.href="main.jsp?target=login_form";
     </script>
     <%
	
}catch(Exception e){
	e.printStackTrace();
	%>
	<script type="text/javascript">
    alert("id중복");
    location.href="main.jsp?target=signUp";
    </script>
	<% 
}finally{
	if(pstmt !=null)
		try{pstmt.close();}catch(SQLException sqle){}
	if(conn !=null)
		try{conn.close();}catch(SQLException sqle){}
}

%>
		
		</center>
</body>
</html>