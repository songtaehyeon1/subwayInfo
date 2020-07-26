<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%><% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>201707059 김연수</title>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans|Jua&display=swap&subset=korean" rel="stylesheet">
<style>
p.a {
font-family: 'Black Han Sans', sans-serif;
font-family: 'Jua', sans-serif;
font-size: 30px;
color:black
}

</style>

</head>
<body><center>
<br/>
<p class = "a">회원정보조회</p>
<%
//세션값 가져오기
//세션값 없으면 loginForm.jsp이동
String userid = (String)session.getAttribute("userid");
if(userid==null)response.sendRedirect("main_login.jsp");
request.setCharacterEncoding("utf-8");
ResultSet rs = null;
Connection con = null;
String url = "jdbc:mysql://localhost:3309/jsptest";
String user = "jspid";
String pwd = "jsp2017";
PreparedStatement pstmt = null;
String sql = "";
try{
//1단계 드라이버로더
Class.forName("com.mysql.jdbc.Driver");
//2단계 디비연결
con = DriverManager.getConnection(url, user, pwd);
//3단계 id에 해당하는 모든 데이터 가져오기
sql = "select * from member where userid=?";
pstmt = con.prepareStatement(sql);
pstmt.setString(1, userid);
//4단계 실행 => rs저장
rs = pstmt.executeQuery();
//5단계 데이터가 있으면 rs내용가져와서 출력
if(rs.next()){
 //id있음
 %>

<div class="container">

<table class="info table">
<tr>
	<td>아이디</td>
	
	
	<td><%=rs.getString("userid") %></td>
</tr>

<tr>
	<td>이름</td>
	<td><%=rs.getString("name") %></td>
</tr>
<tr>
	<td><label for="phone">전화번호</label> </td>
	<td><%=rs.getString("phone") %></td>
</tr>
<tr>
	<td><label for="adress">주소</label> </td>
	<td><%=rs.getString("adress") %></td>
</tr>

<tr>
	<td><label for="email">이메일</label> </td>
	<td><%=rs.getString("email") %></td>
</tr>
<tr>
	<td><label for="userdate">가입일</label> </td>
	<td><%=rs.getTimestamp("userdate") %></td>
</tr>
</table>

</form>



<% 
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
</br></br>

<a href="main.jsp?target=updatelogin_form" class = "btn btn-primary">내정보수정</a>
<a href="main.jsp?target=deletelogin_form" class ="btn btn-primary">탈퇴하기</a>
<a href="main.jsp?target=home" class = "btn btn-primary">메인화면으로</a>
</center>
</body>
</html>