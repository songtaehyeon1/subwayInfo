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
		<div style = "float:left; margin-left : 80px;" ><font color = "#FF5E00" size = "5px"><b>에디터가 선정한 식당</b></font></div>
			<tr>	
			<br>
				<td><img src="img1/곱창.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>곱창</b></font><br>
				<font color = "#8C8C8C">서울 구로구 경인로61길 21 신도림동 694</font></td>
				<td><img src="img1/버거파크.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>버거파크</b></font><br>
				<font color = "#8C8C8C">서울 종로구 대학로11길 5 명륜4가 101-2 1층 버거파크</font></td>
				<td><img src="img1/그랑블루.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>그랑블루</b></font><br>
				<font color = "#8C8C8C">서울 중구 수표로 66 수표동 35-10</font></td>
				<td><img src="img1/송쉐프.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>송쉐프</b></font><br>
				<font color = "#8C8C8C">서울 송파구 백제고분로 357 석촌동 174-4</font></td>
			</tr>
			<br><br>
		</table>
	</center>
	
		<center>
		<table>
		<br><br><br><br>
		<hr size:1px>
		<br><br>
		<div style = "float:left; margin-left : 80px;" ><font color = "#FF5E00" size = "5px"><b>에디터가 선정한 놀거리</b></font></div>
			<tr>	
			<br>
				<td><img src="img1/레드다이스.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>레드다이스</b></font><br>
				<font color = "#8C8C8C">서울 종로구 창경궁로29길 25 명륜빌딩 명륜빌딩 2층</font></td>
				<td><img src="img1/템플스트라이크.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>템플스트라이크</b></font><br>
				<font color = "#8C8C8C">서울 서초구 강남대로61길 13 지하1층</font></td>
				<td><img src="img1/동백꽃공방.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>대학로 청년공방</b></font><br>
				<font color = "#8C8C8C">서울 종로구 성균관로 8 지하1층</font></td>
				<td><img src="img1/코엑스아쿠아리움.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>코엑스 아쿠아리움</b></font><br>
				<font color = "#8C8C8C">서울 강남구 영동대로 513</font></td>
			</tr>
			<br><br>
		</table>

	</center>
	
		<center>
		<table>
		<br><br><br><br>
		<hr size:1px>
		<br><br>
		<div style = "float:left; margin-left : 80px;" ><font color = "#FF5E00" size = "5px"><b>에디터가 선정한 행사</b></font></div>
			<tr>	
			<br>
				<td><img src="img1/롯데월드 호러할로윈.JPG" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>롯데월드 할로윈 호러</b></font><br>
				<font color = "#8C8C8C">서울특별시 송파구 올림픽로 240</font><br><br></td>
				<td><img src="img1/서울 살롱 뒤 쇼콜라 2020.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>서울 살롱 뒤 쇼콜라 2020</b></font><br>
				<font color = "#8C8C8C">서울특별시 강남구 영동대로 513</font><br><br></td>
				<td><img src="img1/서울 코믹월드 2019.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>서울 코믹월드 2019</b></font><br>
				<font color = "#8C8C8C">서울특별시 서초구 강남대로 27</font><br><br></td>
				<td><img src="img1/서울디트페어 딸기전.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>서울디저트페어 [딸기전] 2019</b></font><br>
				<font color = "#8C8C8C">서울특별시 서초구 강남대로 27</font><br><br></td>
			</tr>
			<tr>
				<td><img src="img1/서울빛초롱2019.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>서울빛 초롱 2019</b></font><br>
				<font color = "#8C8C8C">서울특별시 종로구 서린동 14-1 청계광장</font><br><br></td>
				<td><img src="img1/2019불꽃축제.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>서울세계불꽃축제 2019</b></font><br>
				<font color = "#8C8C8C">서울특별시 영등포구 여의동로 330</font><br><br></td>
				<td><img src="img1/서울사진축제2019.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>서울사진축제2019</b></font><br>
				<font color = "#8C8C8C">서울특별시 노원구 동일로 1238</font><br><br></td>
				<td><img src="img1/서울밤도깨비야시장.jpg" width = "400px" height = "250px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				<font color = "#FF5E00" size = "5px"><b>서울밤도깨비야시장</b></font><br>
				<font color = "#8C8C8C">서울특별시 영등포구 여의동로 330</font><br><br></td>
			</tr>
			<br><br>
		</table>
	</center>
	
	
</body>
</html>