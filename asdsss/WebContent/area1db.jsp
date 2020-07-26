<%@page import="java.awt.Button"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans|Jua&display=swap&subset=korean" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<title>Insert title here</title>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style type="text/css">
#top {
	vertical-align: top;
}

table {
	margin-right: auto;
}

div#left {
	float: left;
}

#al_le {
	align: left;
}

#btn_style {
	width: 300px;
	height: 100px;
}

body {
	
	font-family: 'Trebuchet MS', serif;
	line-height: 1.6
}

.container {
	width: 500px;
	margin: 0 auto;
}

ul.tabs {
	margin: 0px;
	padding: 0px;
	list-style: none;
}

ul.tabs li {
	background: none;
	color: #222;
	display: inline-block;
	padding: 10px 15px;
	cursor: pointer;
}

ul.tabs li.current {
	background: #ededed;
	color: #222;
}

.tab-content {
	display: none;
	background: #ededed;
	padding: 15px;
}

.tab-content.current {
	display: inherit;
}


h6{
float:right;
}
table{
	font-family:고딕;
}


p {
font-family: 'Black Han Sans', sans-serif;
font-family: 'Jua', sans-serif;
font-size: 45px;
color : #FF5E00
}

p.a {
font-family: 'Black Han Sans', sans-serif;
font-family: 'Jua', sans-serif;
font-size: 20px;
color:black
}

</style>
</head>
<body>

	<center><br/><br/><br/>
		<div class="container">
			<ul class="pagination">
				<button type="button" class="btn btn-primary" id="btn_style"
					onclick="food();">먹거리</button>&nbsp;&nbsp;&nbsp;&nbsp;
				<button type="button" class="btn btn-primary" id="btn_style"
					onclick="play();">놀거리</button>&nbsp;&nbsp;&nbsp;&nbsp;
				<button type="button" class="btn btn-primary" id="btn_style"
					onclick="fastival();">행 사</button>
			</ul>
		</div>
		<%
			int arenum = Integer.parseInt(request.getParameter("name"));

			Connection conn = null;
			
			PreparedStatement fopstmt = null;
			ResultSet fors = null;
			String fosql = "";
			
			PreparedStatement plpstmt = null;
			ResultSet plrs = null;
			String plsql = "";
			
			PreparedStatement ftpstmt = null;
			ResultSet ftrs = null;
			String ftsql = "";

			try {
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3309/jsptest", "jspid", "jsp2017");

						fosql = "select * from area a, food f where a.arenum = f.arenum and a.arenum = ?";
						plsql = "select * from area a, play p where a.arenum = p.arenum and a.arenum = ?";
						ftsql = "select * from area a, fastival t where a.arenum = t.arenum and a.arenum = ?";
				
				fopstmt = conn.prepareStatement(fosql);
				fopstmt.setInt(1, arenum);
				
				plpstmt = conn.prepareStatement(plsql);
				plpstmt.setInt(1, arenum);
				
				ftpstmt = conn.prepareStatement(ftsql);
				ftpstmt.setInt(1, arenum);

				fors = fopstmt.executeQuery();
				plrs = plpstmt.executeQuery();
				ftrs = ftpstmt.executeQuery();
				
		%>
		<div id="food" style="display: none; width: 900px;" >
			<%
				while (fors.next()) {
			%>
			<dl>
			<br/><hr><br/>
			<table>
			<tr>
				<td><img src="img1/<%=fors.getString("foodimg")%>" width="300px"; /></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				
				<td>
				<p><%=fors.getString("fosname")%></p><br/>		
				<p class ="a"><%=fors.getString("fosadd")%></p>
				<p class ="a"><%=fors.getString("fostel")%></p>
				<p class ="a"><%=fors.getString("fostime")%></p>
				<p class ="a"><%=fors.getString("fosme1")%></p>
				<p class ="a"><%=fors.getString("fosme2")%></p>
				
				</td>
				
			</tr>	
			</table>
				
			</dl>
			<%
				}
					//ResultSet 맨 처음으로
					//first()는 첫칸
					fors.beforeFirst();
			%>
		</div>

		<div id="play" style="display: none; width: 700px;">
			<%
				while (plrs.next()) {
			%>
			<dl><br><hr><br>
			<table>
			<tr>
				<td><img src="img1/<%=plrs.getString("plimg")%>" width="250px"; />&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>
				<p><%=plrs.getString("plsname")%></p><br/>
				<p class ="a"><%=plrs.getString("plsadd")%></p>
				<p class ="a"><%=plrs.getString("plstime")%></p>
				</td>
				
			</tr>	
			</table>
			</dl>
			<%
				}
					plrs.beforeFirst();
			%>
		</div>


		<div id="fastival" style="display: none; width: 700px;">
			<%
				while (ftrs.next()) {
			%><dl><br><hr><br>
			<table>
			<tr>
			<td><img src="img1/<%=ftrs.getString("ftimg")%>" width="250px";/>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td>
			<p><%=ftrs.getString("ftsname")%></p><br/>
			<p class ="a"><%=ftrs.getString("ftsadd")%></p>
			<p class ="a"><%=ftrs.getString("ftstart")%> ~
			<%=ftrs.getString("ftend")%></p>
			</td>
			</tr>	
			</table>
			</dl>
			<%
				}
					ftrs.beforeFirst();
			%>
		</div>
		<%
			/* out.println("<script>location.href='main.jsp?target=area1'</script>"); */

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				if (fors != null)
					fors.close();
				if (fopstmt != null)
					fopstmt.close();
				if (plrs != null)
					plrs.close();
				if (plpstmt != null)
					plpstmt.close();
				if (ftrs != null)
					ftrs.close();
				if (ftpstmt != null)
					ftpstmt.close();
				if (conn != null)
					conn.close();
			}
		%>
		<%-- <meta http-equiv="refresh" content="5; url=<jsp:include page="main.jsp?target=area1" flush="false" />"> --%>
	</center>

	<script>
		function food() {
			document.getElementById("food").style.display = "block";
			document.getElementById("play").style.display = "none";
			document.getElementById("fastival").style.display = "none";
		}

		function play() {
			document.getElementById("food").style.display = "none";
			document.getElementById("play").style.display = "block";
			document.getElementById("fastival").style.display = "none";
		}

		function fastival() {
			document.getElementById("food").style.display = "none";
			document.getElementById("play").style.display = "none";
			document.getElementById("fastival").style.display = "block";
		}
	</script>
</body>
</html>