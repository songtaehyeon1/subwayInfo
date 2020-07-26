<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%><% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</head>
<body>

<div class="container">
<h1>회원수정</h1>
<form action="updatelogin.jsp" method="post">


<table class="update table">
	<tr>
	<%
		String userid2 = (String)session.getAttribute("userid");
	%>
	<td style="width: 150px; text-align: center;"><label for="userid">아이디</label> </td>
	<td><%=userid2 %></td>
</tr>
				<tr>
					<td style="width: 150px; text-align: center;"><label for="userpw">패스워드확인</label></td>
					<td><input id="userpw" name="userpw" type=password size=20
						class="form-control" maxlength="16" 
						required></td>
				</tr>
				
				<tr>
					<td style="width: 150px; text-align: center;"><label for="userpw">변경할 패스워드</label></td>
					<td><input id="userpw" name="userpwch" type=password size=20
						class="form-control" maxlength="16"
						required></td>
				</tr>
				<tr>
					<td style="width: 150px; text-align: center;"><label for="name">이름</label></td>
					<td><input id="name" name="name" type=text size=20
						class="form-control" maxlength="10"
						required></td>
				</tr>
				<tr>
					<td style="width: 150px; text-align: center;"><label for="phone">전화번호</label></td>
					<td><input id="phone" name="phone" type=text size=20
						class="form-control" maxlength="15" 
						required></td>
				</tr>
				<tr>
					<td style="width: 150px; text-align: center;"><label for="adress">주소</label></td>
					<td><input id="adress" name="adress" type=text size=20
						class="form-control" maxlength="30"  required></td>
				</tr>
				<tr>
					<td style="width: 150px; text-align: center;"><label for="email">이메일</label></td>
					<td><input id="email" name="email" type=text size=20
						class="form-control" maxlength="30"
						required></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
</table>
<input type="submit" value="회원수정" class = "btn btn-primary"><br>
</form>

</body>
</html>