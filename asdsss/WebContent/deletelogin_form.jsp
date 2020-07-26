<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
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
<center>
회원탈퇴
<br>
<br>
<div class="container">
<form action="deletelogin.jsp" method="post">
<table class="delete table">
<tr>
	<td style="width: 150px; text-align: center;"><label for="userid">아이디</label></td>
	<td><input id="userid" name="userid" type=text size=20
	class="form-control" maxlength="50"
	 autofocus required></td>
	</tr>
	<tr>
	<td style="width: 150px; text-align: center;"><label for="userpw">패스워드</label></td>
	<td><input id="userpw" name="userpw" type=password size=20
	class="form-control" maxlength="16" 
	required></td>
	</tr>
</table>
<br>
<input type="submit" value="회원탈퇴" class = "btn btn-primary"><br>
</form>
</center>
</body>
</html>