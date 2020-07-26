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
<%	
	String boardtitle = request.getParameter("boardtitle");
	String boardcomment = request.getParameter("boardcomment");
	Timestamp boarddate = new Timestamp(System.currentTimeMillis());
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
	out.println("db연결성공");
	out.println("\n");

	String sql ="insert into board(userid,boardtitle,boardcomment,boarddate) values(?,?,?,?)";
	pstmt=conn.prepareStatement(sql); 
	pstmt.setString(1,session.getAttribute("userid").toString());
	pstmt.setString(2,boardtitle);
	pstmt.setString(3, boardcomment);
	
	pstmt.setTimestamp(4, boarddate);
	
	pstmt.executeUpdate();
	
	 %>
     <script type="text/javascript">
     alert("글쓰기");
      location.href="main.jsp?target=list";
     </script>
     <%
	
}catch(Exception e){
	e.printStackTrace();
	out.println("글쓰기를실패했습니다");
	
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