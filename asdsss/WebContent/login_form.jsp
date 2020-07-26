<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<title>201707059 김연수</title>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans|Jua&display=swap&subset=korean" rel="stylesheet">
<style>
	.login{
    width: 900px;
    height : 700px;
    margin-top: 10px;
    padding: 20px;
    background: #ffffff;
    border-radius: 8px;
	}
	
	#loginbtn{
	 background-image: url('img/btn_login.gif');
	background-repeat: no-repeat;
	width:100px;
	height:70px;
	border: 0;
	padding : 30px;

	}
	
	.id{
	width: 95%;
    height: 28px;
    line-height: 28px;
    padding: 2px 2px 2px 3px;
    border: 0 none;
    color: #8F8F91;
	}

	.idlabel{
	overflow: hidden;
    display: block;
    width: 250px;
    margin: 0 0 2px;
    border: 1px solid #d9d9d9;
    border-radius: 2px;
    color: #8F8F91;
    
	}
	
	legend{
		    visibility: hidden;
		    position: absolute;
		    left: -9999px;
		    top: -9999px;
		    width: 0;
		    height: 0;
		    line-height: 0;
	}
	
		p.a {
font-family: 'Black Han Sans', sans-serif;
font-family: 'Jua', sans-serif;
font-size: 40px;
color:#FFA7A7;
}
	

</style>

</head>
<body>
<br/><br/><br/>
 <center>
	<!-- <h1>
	<form name=loginform method=post action="login.jsp">
		아이디 　 <input type=text size=20 name=id></br></br></br>
		비밀번호　<input type=password size=20 name=passwd></br></br></br></br>
		<input type=submit value="login" >
		</h1></center> </form> -->
<!-- 	<center><table border=1>
<tr>
	<td><label for="id">아이디</label> </td>
	<td><input id="id" name="id" type=text size=20 maxlength="50" placeholder="example@email.com" autofocus required></td>
</tr>
<tr>
	<td><label for="pw">비밀번호</label> </td>
	<td><input id="pw" name="pw" type=password size=20 maxlength="16" placeholder="6~16자 숫자/문자" required></td>
</tr>

</table><input type=submit value="LOGIN"> 
</center>	 -->
<form name=loginform method=post action="login.jsp">

<div class="login">
       <!--  <h3><img src="img/h2_login.gif" alt="회원로그인"></h3> -->
       <p class = "a">회원로그인</p>
        <br/><br/>
        <fieldset>
<legend>회원로그인</legend>
			<br/><br/>
			<table>
			<tr>
            <td><label title="아이디" class="idlabel"><input id="userid" name="userid"  placeholder="아이디" value="" type="text" class="id"></label>&nbsp;&nbsp;<br/>
            	<label title="비밀번호" class="idlabel"><input id="userpw" name="userpw" value="" type="password" placeholder="비밀번호" class="id" >&nbsp;&nbsp;</label></td>
            	<td></td><td></td>
            <td><input id="loginbtn" type="submit" value=""></td> 
            <tr>   	
            </table>   	
           <!--  <a href="#none" ><img src="btn_login.gif" alt="로그인"></a> -->
            
            <!--  <ul>
				<li><a href="">아이디찾기</a></li>
                <li><a href="">비밀번호찾기</a></li>
            </ul>-->
<br/><br/>
<p class="link">
		____________________________________________<br/><br/>
                회원가입을 하시면 다양하고 특별한<br>혜택이 준비되어 있습니다.
                <a href="main.jsp?target=signUp"><img src="img/btn_join.gif" alt="회원가입"></a>
                
                <br/><br/>
            </p>
            <br/><br/>
        </fieldset>
</div>
</div>
</form> 
</body>
</html>