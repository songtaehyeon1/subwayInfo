<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans|Jua&display=swap&subset=korean" rel="stylesheet">
<style>
	.sign{
    margin-top: 50px;
    padding: 35px;
    background: #ffffff;
    border-radius: 8px;
	}

	
	
	a:link { text-decoration: none; color: black;}
	a.visited { text-decoration: none; color: black;}
	a.active {text-decoration: none; color: black;}
	a.hover {text-decoration: none; color: black;}
	
	p.a {
font-family: 'Black Han Sans', sans-serif;
font-family: 'Jua', sans-serif;
font-size: 40px;
color:black;
}
	
</style>
</head>
<body>
<br/><br/><br/>
	<div class="container">
		<form action="signUpAct.jsp" method="post">
			<table class="sign table">
			<p class = "a">내일 뭐할래의 가족이 되어보세요!</p>
				<tr>
					<td style="width: 150px; text-align: center;"><label for="userid">아이디</label></td>
					<td><input id="userid" name="userid" type=text size=20
						class="form-control" maxlength="50"
						placeholder="example@email.com" autofocus required></td>
				</tr>
				<tr>
					<td style="width: 150px; text-align: center;"><label for="userpw">패스워드</label></td>
					<td><input id="userpw" name="userpw" type=password size=20
						class="form-control" maxlength="16" placeholder="6~16자 숫자/문자"
						required></td>
				</tr>
				<tr>
					<td style="width: 150px; text-align: center;"><label for="name">이름</label></td>
					<td><input id="name" name="name" type=text size=20
						class="form-control" maxlength="10" placeholder="KIM YEON SOO"
						required></td>
				</tr>
				<tr>
					<td style="width: 150px; text-align: center;"><label for="phone">전화번호</label></td>
					<td><input id="phone" name="phone" type=text size=20
						class="form-control" maxlength="15" placeholder="010-0000-0000"
						required></td>
				</tr>
				<tr>
					<td style="width: 150px; text-align: center;"><label for="adress">주소</label></td>
					<td><input id="adress" name="adress" type=text size=20
						class="form-control" maxlength="30" placeholder="서울특별시" required></td>
				</tr>
				<tr>
					<td style="width: 150px; text-align: center;"><label for="email">이메일</label></td>
					<td><input id="email" name="email" type=text size=20
						class="form-control" maxlength="30" placeholder="abc@naver.com"
						required></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type=submit value="입력완료" class="btn btn-primary"> 
						&nbsp;&nbsp;&nbsp;
						<input type=reset value="다시작성" class="btn btn-success">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>