<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>201707059 김연수</title>
</head>
<body>
<%
session.invalidate();
%>
<script type="text/javascript">
alert("탈퇴처리 되었습니다.");
location.href="main.jsp";
</script>

</body>
</html>