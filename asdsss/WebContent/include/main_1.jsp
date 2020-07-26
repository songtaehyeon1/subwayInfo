<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js">
</script>
<meta charset="UTF-8">
<title>Main_1</title>
<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans|Jua&display=swap&subset=korean" rel="stylesheet">
</head>
<style media="screen">
<!--*{margin: 0; padding: 0;}

.d1 ul li {
    display: inline-block;
    width: 250px;
    text-align: center;
   /*  position:fixed; */
}
.d1 ul ul{
   position: inherit;
 /*  position:fixed; */
    display: none;
    background-color : #5AAEFF;
}
.d1 ul ul li {
    display: block;
}
a{
    color:#000000;
    text-decoration:none;
}
a:hover{
    color:#3F0099;
} -->

	.d1
	{
		font-size: 20px;
		font-weight: 800;
		font-family: "맑은 고딕";
	}
	
	p.a {
font-family: 'Black Han Sans', sans-serif;
font-family: 'Jua', sans-serif;
font-size: 30px;
color:black
}
</style>
<script>
function main(){
	location.href = "main.jsp";
}
</script>
<body>
<div class="d1">
	<ul>
		<li>
			<img src="img\Llogo.png" padding="10px"width="300px" height="100px" border="0" align="center" onClick="main()"/>
		</li>
		<li>
		<a href="main.jsp?target=first"><p class = "a">사이트소개</a></p>
		</li>
		<li><a href="main.jsp?target=travel"><p class = "a">내일 뭐할래?</a>
		</li>
		<li><a href="main.jsp?target=UsefulSite"><p class = "a">유용한 사이트</a>
		</li>
		
		
		<%
		String userid = (String)session.getAttribute("userid");
		if(userid==null){
		%>		
		<li>
			<a href="main.jsp?target=login_form"><p class = "a">게시판</a>
		</li>
		<%}else{ %>
			
		<li>
			<a href="main.jsp?target=list"><p class = "a">게시판</a>	
		</li>
		<%} %>
		
		
		
		
		<%
		String userid2 = (String)session.getAttribute("userid");
		if(userid2==null){
		%>		
		<li><a href = "main.jsp?target=signUp"><p class = "a">회원가입</a></li>
		<li><a href = "main.jsp?target=login_form"><p class = "a">로그인</a></li>
		<%}else if(userid2.equals("admin")){ %>
		<li>
			<a href="main.jsp?target=memList"><p class = "a">회원</a>
			<a href="main.jsp?target=admin"><p class = "a">정보</a>
			<a href="main.jsp?target=logout"><p class = "a">로그아웃</a><br/>
		</li>
		
		<%}else{ %>
		<li>
		<%=userid2 %> 님 
		
		</li>		
		<li>
			<a href="main.jsp?target=info"><p class = "a">회원정보</a>
			<a href="main.jsp?target=logout"><p class = "a">로그아웃</a>
		</li>
		<%} %>
		
		
		
	</ul>
</div>
</body>
</html>