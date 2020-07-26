<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<form action="admindb.jsp" method="post">
			<table>
				<input type="hidden" name="type" value="food">
				<tr>
					<td>먹거리</td>
				</tr>
				<tr>
					<td>권역별number : <input type="text" name="arenum" value=""></td>
				</tr>
				<tr>
					<td>이미지 : <input type="text" name="foodimg" value=""></td>
				</tr>
				<tr>
					<td>식당이름 : <input type="text" name="fosname" value=""></td>
				</tr>
				<tr>
					<td>식당번호 : <input type="text" name="fostel" value=""></td>
				</tr>
				<tr>
					<td>식당주소 : <input type="text" name="fosadd" value=""></td>
				</tr>
				<tr>
					<td>식당영업시간 : <input type="text" name="fostime" value=""></td>
				</tr>
				<tr>
					<td>대표메뉴 1 : <input type="text" name="fosme1" value=""></td>
				</tr>
				<tr>
					<td>대표메뉴 2 : <input type="text" name="fosme2" value=""></td>
				</tr>
				<tr>
					<td><input type="submit" value="저장"></td>
				</tr>
			</table>
		</form>
		<form action="admindb.jsp" method="post">
			<table>
				<input type="hidden" name="type" value="play">
				<tr>
					<td>놀거리</td>
				</tr>
				<tr>
					<td>권역별number : <input type="text" name="parenum" value=""></td>
				</tr>
				<tr>
					<td>이미지 : <input type="text" name="plimg" value=""></td>
				</tr>
				<tr>
					<td>놀거리이름 : <input type="text" name="plsname" value=""></td>
				</tr>
				<tr>
					<td>놀거리주소 : <input type="text" name="plsadd" value=""></td>
				</tr>
				<tr>
					<td>놀거리영업시간 : <input type="text" name="plstime" value=""></td>
				</tr>
				<tr>
					<td>놀거리가격 : <input type="text" name="plspay" value=""></td>
				</tr>
				<tr>
					<td><input type="submit" value="저장"></td>
				</tr>
			</table>
		</form>
		<form action="admindb.jsp" method="post">
			<table>
				<input type="hidden" name="type" value="fastival">
				<tr>
					<td>행사</td>
				</tr>
				<tr>
					<td>권역별number : <input type="text" name="farenum" value=""></td>
				</tr>
				<tr>
					<td>이미지 : <input type="text" name="ftimg" value=""></td>
				</tr>
				<tr>
					<td>행사이름 : <input type="text" name="ftsname" value=""></td>
				</tr>
				<tr>
					<td>행사주소 : <input type="text" name="ftsadd" value=""></td>
				</tr>
				<tr>
					<td>행사영업시간 : <input type="text" name="ftstime" value=""></td>
				</tr>
				<tr>
					<td>행사시작일 : <input type="text" name="ftstart" value=""></td>
				</tr>
				<tr>
					<td>행사종료일 : <input type="text" name="ftend" value=""></td>
				</tr>
				<tr>
					<td><input type="submit" value="저장"></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>