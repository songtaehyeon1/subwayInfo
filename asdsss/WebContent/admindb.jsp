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
<title>Insert title here</title>
</head>
<body>
	<%
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3309/jsptest", "jspid", "jsp2017");

			String type = request.getParameter("type");

			if (type.equals("food")) {
				int arenum = Integer.parseInt(request.getParameter("arenum"));
				String foodimg = request.getParameter("foodimg");
				String fosname = request.getParameter("fosname");
				String fostel = request.getParameter("fostel");
				String fosadd = request.getParameter("fosadd");
				String fostime = request.getParameter("fostime");
				String fosme1 = request.getParameter("fosme1");
				String fosme2 = request.getParameter("fosme2");
				sql = "insert into food(arenum, foodimg, fosname, fostel, fosadd, fostime, "
						+ "fosme1, fosme2, foscore, focount) values(?, ?, ?, ?, ?, ?, ?, ?, 0, 0) ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, arenum);
				pstmt.setString(2, foodimg);
				pstmt.setString(3, fosname);
				pstmt.setString(4, fostel);
				pstmt.setString(5, fosadd);
				pstmt.setString(6, fostime);
				pstmt.setString(7, fosme1);
				pstmt.setString(8, fosme2);
			} else if (type.equals("play")) {
				int parenum = Integer.parseInt(request.getParameter("parenum"));
				String plimg = request.getParameter("plimg");
				String plsname = request.getParameter("plsname");
				String plsadd = request.getParameter("plsadd");
				String plstime = request.getParameter("plstime");
				String plspay = request.getParameter("plspay");
				sql = "insert into play(arenum, plimg, plsname, plsadd, plstime, "
						+ "plspay, plscore, plcount) values(?, ?, ?, ?, ?, ?, 0, 0) ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, parenum);
				pstmt.setString(2, plimg);
				pstmt.setString(3, plsname);
				pstmt.setString(4, plsadd);
				pstmt.setString(5, plstime);
				pstmt.setString(6, plspay);
			} else if(type.equals("fastival"))  {
				int farenum = Integer.parseInt(request.getParameter("farenum"));
				String ftimg = request.getParameter("ftimg");
				String ftsname = request.getParameter("ftsname");
				String ftsadd = request.getParameter("ftsadd");
				String ftstime = request.getParameter("ftstime");
				String ftstart = request.getParameter("ftstart");
				String ftend = request.getParameter("ftend");
				sql = "insert into fastival(arenum, ftimg, ftstart, ftend, ftsname, ftsadd,"
						+ " ftstime, ftscore, ftcount) values(?, ?, ?, ?, ?, ?, ?, 0, 0) ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, farenum);
				pstmt.setString(2, ftimg);
				pstmt.setString(3, ftstart);
				pstmt.setString(4, ftend);
				pstmt.setString(5, ftsname);
				pstmt.setString(6, ftsadd);
				pstmt.setString(7, ftstime);
			}

			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
		
	%>
<script>alert('저장되었습니다.');
history.back();</script>

</body>
</html>