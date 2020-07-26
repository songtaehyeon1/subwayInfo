<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
.body {
	width: 1320px;
	height: 765px;
	background-image: url(img/seoulmap.PNG);
	background-repeat: no-repeat;
	background-position: center;
}

.img1 {
	width: 100px;
	height: 70px;
	overflow: hidden;
	position: relative;
	border: 0;
	padding: 0;
}
</style>
</head>
<body>
	<center>
		<div class="body">
			<br /> <br /> <br /> <br />
			<table>
				<tr>
					<td>
						<!-- <input type = "submit" name ="1" style = "width:300px; height:200px; opacity : 0; margin-left : 90px; cursor : pointer"> -->
						<div
							style="width: 300px; height: 200px; opacity: 0; margin-left: 90px; cursor: pointer"
							onclick="location.href='main.jsp?target=area1db&name=1'"></div>
					</td>
					<td>
						<!-- <input type = "submit" name ="2" width = "450" height = "400" value = "22222"
								style = "width : 350px; height : 150px; opacity : 0; margin-left : 220px; cursor : pointer"> -->
						<div onclick="location.href='main.jsp?target=area1db&name=2'"
							style="width: 350px; height: 150px; opacity: 0; margin-left: 220px; cursor: pointer">
						</div>
					</td>
				</tr>
				<tr>
					<td><br> <br> <!-- <input type="submit" name="3"
							style="width: 500px; height: 200px; opacity: 0; cursor: pointer"> -->
						<div
							style="width: 500px; height: 200px; opacity: 0; cursor: pointer"
							onclick="location.href='main.jsp?target=area1db&name=3'"></div></td>
					<td><br> <br> <br> <br> <br> <br>
						<br> <br> <br> <br> <br> <!-- <input type="submit" name="4"
							style="width: 500px; height: 250px; opacity: 0; margin-left: 170px; cursor: pointer"> -->
						<div
							style="width: 500px; height: 250px; opacity: 0; margin-left: 170px; cursor: pointer"
							onclick="location.href='main.jsp?target=area1db&name=4'"></div></td>
				</tr>
				<tr>
					<td></td>
				</tr>
			</table>
		</div>
	</center>
</body>
</html>