<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  <%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>201707059 김연수</title>
</head>
<body>
<%
  // 한글처리
  request.setCharacterEncoding("utf-8");
  // id passwd name가져오기
  String sql = "";
  	String boardnum = request.getParameter("boardnum");
	
	String boardtitle = request.getParameter("boardtitle");
	String boardcomment = request.getParameter("boardcomment");
	Connection con = null;
	PreparedStatement pstmt = null;
  	ResultSet rs = null;
  try {
   // 1단계 드라이버로더
   Class.forName("com.mysql.jdbc.Driver");
   // 2단계 디비연결
   
   String url = "jdbc:mysql://localhost:3309/jsptest";
   String user = "jspid";
   String pwd = "jsp2017";
   con = DriverManager.getConnection(url, user, pwd);
   // 3단계 : id에 해당하는 passwd를 가져오는 sql(sql 생성)
   sql = "UPDATE board SET boardtitle = ?, boardcomment = ? WHERE boardnum = ?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1,boardtitle);
		pstmt.setString(2,boardcomment);
		pstmt.setString(3,boardnum);
		pstmt.executeUpdate();
		out.println("글수정이 완료되었습니다.");
		out.println("<meta http-equiv='Refresh' content='2; URL=main.jsp?target=list'>");
   
   
  } catch (Exception e) {
   e.printStackTrace();
   out.println(boardnum);
   out.println(boardtitle);
   out.println(boardcomment);
  }finally{
	  if(pstmt != null)
			try{pstmt.close();}catch(SQLException sqle){}
		if(con != null)
			try{con.close();}catch(SQLException sqle){}
  }
 %>

</body>
</html>