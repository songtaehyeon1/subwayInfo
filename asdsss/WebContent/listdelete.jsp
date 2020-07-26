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
<%
	Connection conn = null; // sql 연결을 위한 객체
	PreparedStatement pstmt = null; // query를 수행시키기 위해 준비한 객체
	String sql = "";
	String boardnum = request.getParameter("boardnum");
	
	try{
		String jdbcUrl = "jdbc:mysql://localhost:3309/jsptest";//db url 주소
		String dbId = "jspid"; // jspdb002 의 아이디
		String dbPass = "jsp2017"; // jspdb002의 패스워드
		
		Class.forName("com.mysql.jdbc.Driver"); // jdbc 드라이버를 로딩하는거
		conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
		//굳이 위에 string 형으로 선언하지 않아도 상관은 없으나 보통은 저렇게 선언하고 커넥션을 하는게 좀더 좋을것같다.
		
		sql = "DELETE FROM board WHERE boardnum = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,boardnum);
		
		pstmt.executeUpdate();
		%>
	     <script type="text/javascript">
	     alert("삭제되었습니다.");
	     location.href="main.jsp?target=list";
	     </script>
	     <%
	
	}catch(Exception e){
		e.printStackTrace();
		%>
	     <script type="text/javascript">
	     alert("삭제를 실패하였습니다.");
	     location.href="main.jsp?target=list";
	     </script>
	     <%
	}finally{
		if(pstmt != null)
			try{pstmt.close();}catch(SQLException sqle){}
		if(conn != null)
			try{conn.close();}catch(SQLException sqle){}
	}
%>
</body>
</html>