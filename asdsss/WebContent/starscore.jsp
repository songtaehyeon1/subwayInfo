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
<style type=text/css>
.left {
	float: left;
}
</style>
</head>
<body>
	<center>
		<table>
		<br><br><br><br>
		<hr size:1px>
		<br><br>
		<div style = "float:left; margin-left : 80px;" ><font color = "#FF5E00" size = "5px"><b>�����Ͱ� ������ �Ĵ�</b></font></div>
			<tr>	
			<br>
				<td><img src="img1/��â.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>��â</b></font><br>
				<font color = "#8C8C8C">���� ���α� ���η�61�� 21 �ŵ����� 694</font></td>
				<td><img src="img1/������ũ.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>������ũ</b></font><br>
				<font color = "#8C8C8C">���� ���α� ���з�11�� 5 ���4�� 101-2 1�� ������ũ</font></td>
				<td><img src="img1/�׶����.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>�׶����</b></font><br>
				<font color = "#8C8C8C">���� �߱� ��ǥ�� 66 ��ǥ�� 35-10</font></td>
				<td><img src="img1/�۽���.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>�۽���</b></font><br>
				<font color = "#8C8C8C">���� ���ı� ������з� 357 ���̵� 174-4</font></td>
			</tr>
			<br><br>
		</table>
	</center>
	
		<center>
		<table>
		<br><br><br><br>
		<hr size:1px>
		<br><br>
		<div style = "float:left; margin-left : 80px;" ><font color = "#FF5E00" size = "5px"><b>�����Ͱ� ������ ��Ÿ�</b></font></div>
			<tr>	
			<br>
				<td><img src="img1/������̽�.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>������̽�</b></font><br>
				<font color = "#8C8C8C">���� ���α� â��÷�29�� 25 ������� ������� 2��</font></td>
				<td><img src="img1/���ý�Ʈ����ũ.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>���ý�Ʈ����ũ</b></font><br>
				<font color = "#8C8C8C">���� ���ʱ� �������61�� 13 ����1��</font></td>
				<td><img src="img1/����ɰ���.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>���з� û�����</b></font><br>
				<font color = "#8C8C8C">���� ���α� ���հ��� 8 ����1��</font></td>
				<td><img src="img1/�ڿ�������Ƹ���.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>�ڿ��� ����Ƹ���</b></font><br>
				<font color = "#8C8C8C">���� ������ ������� 513</font></td>
			</tr>
			<br><br>
		</table>

	</center>
	
		<center>
		<table>
		<br><br><br><br>
		<hr size:1px>
		<br><br>
		<div style = "float:left; margin-left : 80px;" ><font color = "#FF5E00" size = "5px"><b>�����Ͱ� ������ ���</b></font></div>
			<tr>	
			<br>
				<td><img src="img1/�Ե����� ȣ���ҷ���.JPG" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>�Ե����� �ҷ��� ȣ��</b></font><br>
				<font color = "#8C8C8C">����Ư���� ���ı� �ø��ȷ� 240</font><br><br></td>
				<td><img src="img1/���� ��� �� ���ݶ� 2020.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>���� ��� �� ���ݶ� 2020</b></font><br>
				<font color = "#8C8C8C">����Ư���� ������ ������� 513</font><br><br></td>
				<td><img src="img1/���� �ڹͿ��� 2019.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>���� �ڹͿ��� 2019</b></font><br>
				<font color = "#8C8C8C">����Ư���� ���ʱ� ������� 27</font><br><br></td>
				<td><img src="img1/�����Ʈ��� ������.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>�������Ʈ��� [������] 2019</b></font><br>
				<font color = "#8C8C8C">����Ư���� ���ʱ� ������� 27</font><br><br></td>
			</tr>
			<tr>
				<td><img src="img1/������ʷ�2019.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>����� �ʷ� 2019</b></font><br>
				<font color = "#8C8C8C">����Ư���� ���α� ������ 14-1 û�豤��</font><br><br></td>
				<td><img src="img1/2019�Ҳ�����.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>���＼��Ҳ����� 2019</b></font><br>
				<font color = "#8C8C8C">����Ư���� �������� ���ǵ��� 330</font><br><br></td>
				<td><img src="img1/�����������2019.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>�����������2019</b></font><br>
				<font color = "#8C8C8C">����Ư���� ����� ���Ϸ� 1238</font><br><br></td>
				<td><img src="img1/����㵵����߽���.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>����㵵����߽���</b></font><br>
				<font color = "#8C8C8C">����Ư���� �������� ���ǵ��� 330</font><br><br></td>
			</tr>
			<br><br>
		</table>
	</center>
	
	
</body>
</html>