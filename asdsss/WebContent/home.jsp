<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.btn1{
            margin-right:100px;
        }
.btn2{
            margin-left:200px;
            margin-right:200px;
        }
.btn3{
            margin-left:100px;
        }
</style>
</head>
<body>
<center>
<br/><br/><br/>
<div>
	<a href="main.jsp?target=travel"><img src="img/travelbtn.JPG.jpg"  /></a>
	<a href="main.jsp?target=UsefulSite"><img src="img/sitebtn.jpg.jpg" /></a>
	<a href="main.jsp?target=list"><img src="img/eventbtn.jpg.jpg" /></a>
	<jsp:include page="/starscore.jsp" flush="false" />
</div>
</center>
</body>
</html>