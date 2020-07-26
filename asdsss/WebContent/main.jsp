<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String target = request.getParameter("target");
	if(target == null) target = "home";
	String targetPage = target + ".jsp";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
</head>
<body>
<center>
<table width="1900" border="0" cellpadding="5" align="center" />
	<tr><td colspan="1" height="10">
		<jsp:include page="include/main_1.jsp" flush="false"/>
		</td>
	</tr>
	<tr>
		<td width="1900" height="20" valign="middle">
			<jsp:include page="include/main_2.jsp" flush="false" />
			<jsp:include page="<%= targetPage %>" flush="false"/>			
		</td>
	</tr>
	<tr>
	<td>
			<br><br><img src = "img/qw.png" style = "width :100%; height : 700px;">
	</td>
	</tr>
</table>
</center>
</body>
</html>