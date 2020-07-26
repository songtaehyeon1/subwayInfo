<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>201707059 김연수</title>
</head>
<body>
<center>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="bs-example-navbar-collapse-1"
				aria-expaned="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
	</nav>
 <%
	 int boardnum=Integer.parseInt(request.getParameter("boardnum"));
%>
<div class="container">
		<div class="row">
<form action="listupdate.jsp" method="post" >
<input type=hidden name = boardnum value =<%=boardnum %>>
<table class="table table-striped"
style="text-align: center; border: 1px solid #dddddd">
					<tbody>
						<tr>
							<td><input type="text" class="form-control" placeholder="글 제목" name="boardtitle" maxlength="50"/></td>
						</tr>
    	<tr>
							<td><textarea class="form-control" placeholder="글 내용" name="boardcomment" maxlength="2048" style="height: 350px;"></textarea></td>
						</tr>
					</tbody>
				</table>	
    <input type="submit" value="글수정" class = "btn btn-primary">
</form>
	</center>
	
</body>
</html>