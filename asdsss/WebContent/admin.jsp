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
					<td>�԰Ÿ�</td>
				</tr>
				<tr>
					<td>�ǿ���number : <input type="text" name="arenum" value=""></td>
				</tr>
				<tr>
					<td>�̹��� : <input type="text" name="foodimg" value=""></td>
				</tr>
				<tr>
					<td>�Ĵ��̸� : <input type="text" name="fosname" value=""></td>
				</tr>
				<tr>
					<td>�Ĵ��ȣ : <input type="text" name="fostel" value=""></td>
				</tr>
				<tr>
					<td>�Ĵ��ּ� : <input type="text" name="fosadd" value=""></td>
				</tr>
				<tr>
					<td>�Ĵ翵���ð� : <input type="text" name="fostime" value=""></td>
				</tr>
				<tr>
					<td>��ǥ�޴� 1 : <input type="text" name="fosme1" value=""></td>
				</tr>
				<tr>
					<td>��ǥ�޴� 2 : <input type="text" name="fosme2" value=""></td>
				</tr>
				<tr>
					<td><input type="submit" value="����"></td>
				</tr>
			</table>
		</form>
		<form action="admindb.jsp" method="post">
			<table>
				<input type="hidden" name="type" value="play">
				<tr>
					<td>��Ÿ�</td>
				</tr>
				<tr>
					<td>�ǿ���number : <input type="text" name="parenum" value=""></td>
				</tr>
				<tr>
					<td>�̹��� : <input type="text" name="plimg" value=""></td>
				</tr>
				<tr>
					<td>��Ÿ��̸� : <input type="text" name="plsname" value=""></td>
				</tr>
				<tr>
					<td>��Ÿ��ּ� : <input type="text" name="plsadd" value=""></td>
				</tr>
				<tr>
					<td>��Ÿ������ð� : <input type="text" name="plstime" value=""></td>
				</tr>
				<tr>
					<td>��Ÿ����� : <input type="text" name="plspay" value=""></td>
				</tr>
				<tr>
					<td><input type="submit" value="����"></td>
				</tr>
			</table>
		</form>
		<form action="admindb.jsp" method="post">
			<table>
				<input type="hidden" name="type" value="fastival">
				<tr>
					<td>���</td>
				</tr>
				<tr>
					<td>�ǿ���number : <input type="text" name="farenum" value=""></td>
				</tr>
				<tr>
					<td>�̹��� : <input type="text" name="ftimg" value=""></td>
				</tr>
				<tr>
					<td>����̸� : <input type="text" name="ftsname" value=""></td>
				</tr>
				<tr>
					<td>����ּ� : <input type="text" name="ftsadd" value=""></td>
				</tr>
				<tr>
					<td>��翵���ð� : <input type="text" name="ftstime" value=""></td>
				</tr>
				<tr>
					<td>�������� : <input type="text" name="ftstart" value=""></td>
				</tr>
				<tr>
					<td>��������� : <input type="text" name="ftend" value=""></td>
				</tr>
				<tr>
					<td><input type="submit" value="����"></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>