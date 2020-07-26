<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%><% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>201707059 김연수</title>
</head>
<body>
	<%
//id passwd가져오기
request.setCharacterEncoding("utf-8");
String userid = request.getParameter("userid");
String userpw = request.getParameter("userpw");
ResultSet rs = null;
Connection con = null;
String url = "jdbc:mysql://localhost:3309/jsptest";
//String url = "jdbc:mysql://itbuddy.iptime.org:8233/jsptest";
String user = "jspid";
String pwd = "jsp2017";
PreparedStatement pstmt = null;
String sql = "";
try{
 //1단계 드라이버로더
 Class.forName("com.mysql.jdbc.Driver");
 //2단계 디비연결
 con = DriverManager.getConnection(url, user, pwd);
 //3단계 id에 해당하는 passwd가져오기
 sql = "select userpw from Member where userid=?";
   pstmt = con.prepareStatement(sql);
   pstmt.setString(1, userid);
 //4단계 실행 => rs
 rs = pstmt.executeQuery();
 //5단계 데이터가 있으면 아이디있음
 if(rs.next()){
  //id있음
//   rs.getString(1);
  String dbPass=rs.getString("userpw");
  if(userpw.equals(dbPass)){
   //비밀번호비교 맞으면 세션값생성 "id"
   //    이동 main.jsp
   session.setAttribute("userid", userid);
   %>
   <script type="text/javascript">
   alert("로그인");
   location.href="main.jsp";
   </script>
   <%
  }else{
   %>
   <script type="text/javascript">
   alert("비밀번호 오류");
   history.back();
   </script><%
  }
 }else{
  %>
  <script type="text/javascript">
  alert("id가 존재x");
  history.back();
  </script><%
 }
}catch (Exception e) {
 e.printStackTrace();
}finally{
 //rs!=null : 기억장소가 확보되어 있다는 뜻
 if(rs!=null)try{rs.close();}catch(SQLException ex){}
 if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
 if(con!=null)try{con.close();}catch(SQLException ex){}
}
%>


</body>
</html>