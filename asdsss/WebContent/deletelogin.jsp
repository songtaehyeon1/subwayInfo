<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
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
  String userid = request.getParameter("userid");
  String userpw = request.getParameter("userpw");
  ResultSet rs = null;
  
  Connection con = null;
  String url = "jdbc:mysql://localhost:3309/jsptest";
  String user = "jspid";
  String pwd = "jsp2017";
  
  PreparedStatement pstmt = null;
  String sql = "";
  try {
   // 1단계 드라이버로더
   Class.forName("com.mysql.jdbc.Driver");
   // 2단계 디비연결
   con = DriverManager.getConnection(url, user, pwd);
   // 3단계 : id에 해당하는 passwd를 가져오는 sql(sql 생성)
   sql = "select userpw from member where userid=?";
   pstmt = con.prepareStatement(sql);
   pstmt.setString(1, userid);
   // 4단계 실행 => rs저장
   rs = pstmt.executeQuery();
   // 5단계 rs 데이터있으면 id있음
   //   폼비밀번호 rs비밀번호 비교 맞으면 => 수정
   //                     틀리면 => 비밀번호틀림
   //            없으면 id없음
   if(rs.next()){
    //id있음
//     rs.getString(1);
    String dbPass=rs.getString("userpw");
    if(userpw.equals(dbPass)){
     //비밀번호 맞음 수정
     sql = "delete from member where userid=?";
     pstmt=con.prepareStatement(sql);
     pstmt.setString(1, userid);
     
     // 4단계 실행
     pstmt.executeUpdate(); //insert,update,delete
     %>
     <script type="text/javascript">
     
     location.href="main.jsp?target=deletebye";
     </script>
     <%
    }else{
     %>
     <script type="text/javascript">
     alert("비밀번호를 틀렸습니다.");
     history.back();
     </script><%
    }
   }else{
    %>
    <script type="text/javascript">
    alert("id가 존재하지않습니다.");
    history.back();
    </script><%
   }
  } catch (Exception e) {
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