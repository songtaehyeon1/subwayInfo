<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  <%@ page import="java.sql.*" %>
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
  String userpw = request.getParameter("userpw");
  String userpwch = request.getParameter("userpwch");
  String name = request.getParameter("name");
  String phone = request.getParameter("phone");
  String adress = request.getParameter("adress");
  String email = request.getParameter("email");	
  ResultSet rs = null;
  try {
   // 1단계 드라이버로더
   Class.forName("com.mysql.jdbc.Driver");
   // 2단계 디비연결
   Connection con = null;
   String url = "jdbc:mysql://localhost:3309/jsptest";
   String user = "jspid";
   String pwd = "jsp2017";
   con = DriverManager.getConnection(url, user, pwd);
   // 3단계 : id에 해당하는 passwd를 가져오는 sql(sql 생성)
   PreparedStatement pstmt = null;
   String sql = "";
   
   sql = "select userpw from member where phone=?";
   pstmt = con.prepareStatement(sql);
   pstmt.setString(1, phone);
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
     sql = "update member set userpw=?,name=?,adress=?,email=? where phone=? and userpw=?";
     pstmt=con.prepareStatement(sql);
     pstmt.setString(1,userpwch);
     pstmt.setString(2, name);
     pstmt.setString(3, adress);
     pstmt.setString(4, email);
     pstmt.setString(5, phone);
     pstmt.setString(6, userpw);
        
     // 4단계 실행
     pstmt.executeUpdate(); //insert,update,delete
     %>
     <script type="text/javascript">
     alert("수정완료");
     location.href="main.jsp?target=info";
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
   
  } catch (Exception e) {
   e.printStackTrace();
  }finally{
   
  }
 %>

</body>
</html>