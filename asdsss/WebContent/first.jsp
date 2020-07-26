<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script> -->
<script async defer
  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDDEZFcrW6ZzcsGdx8cq_Lu8kIZ-xNwZvk&callback=initMap">
</script>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans|Jua&display=swap&subset=korean" rel="stylesheet">
<title>오지여 소개</title>
<style>

p {
font-family: 'Black Han Sans', sans-serif;
font-family: 'Jua', sans-serif;
font-size: 45px;
color : #FF5E00
}

p.a {
font-family: 'Black Han Sans', sans-serif;
font-family: 'Jua', sans-serif;
font-size: 30px;
color:black
}

p.b {
font-family: 'Black Han Sans', sans-serif;
font-family: 'Jua', sans-serif;
font-size: 30px;
color:#FF5E00;
margin-left:450px;
}

p.c {
font-family: 'Black Han Sans', sans-serif;
font-family: 'Jua', sans-serif;
font-size: 20px;
color:#FF5E00;
margin-left:450px;
}

p.d {
font-family: 'Black Han Sans', sans-serif;
font-family: 'Jua', sans-serif;
font-size: 20px;
color:#368AFF;
margin-left:450px;
}


</style>
</head>
<body onload="initialize()">
<center>
<br><br>
<!-- <font face = "경기천년제목V굵게" size="5px" color="#FF5E00">"권역별로 정보를 제공하는 서비스?"</font><br><br> -->
<!-- <font face = "경기천년제목V굵게" size="3px" color="#353535"> 대중교통을 사랑하는 공동 창업자 5명의 고민으로 시작된 내일뭐할래.<br> -->
<p class> "권역별로 정보를 제공하는 서비스?"</p>
<p class = "a">대중교통을 사랑하는 공동 창업자 5명의 고민으로 시작된 내일뭐할래.<br>
솔직하고 정확한 정보를 바탕으로 편리함을 제공하는 사이트가 되고자 합니다.</font><br><br>
<br><br>
</center>
<table>
<tr>
<td>
<p class = "b">Contact</p> <br><br><br>
<!-- <img src = "img/contact.png" style = "margin-left : 450px;"><br><br><br> -->
<!-- <font color = "#FF5E00" style = "margin-left : 500px;">전화번호</font><br><br> -->
<p class = "c">전화번호</p><br><br>
<p class = "d">010-2930-0646</p><br><br>
<p class = "c">식당등록 및 정보수정 문의</p><br><br>
<p class = "d">010-2465-4453</p><br><br>
<p class = "c">광고문의</p><br><br>
<p class = "d">010-7711-8909</p><br><br>
<p class = "c">컨텐츠 제휴 및 마케팅 문의</p><br><br>
<p class = "d">010-3040-6957</p><br><br>
<p class = "c">식당 대기관리 시스템 문의</p><br><br>
<p class = "d">010-3180-8302</p><br><br>
<p class = "c">주소</p><br><br>
<p class = "d">경기도 부천시 경인로 590</p><br><br>
<!-- <font color = "#368AFF" style = "margin-left : 550px;">010-2930-0646</font><br><br> -->
<!-- <font color = "#FF5E00" style = "margin-left : 500px;">식당등록 및 정보수정 문의</font><br><br>
<font color = "#368AFF" style = "margin-left : 550px;">010-2465-4453</font><br><br>
<font color = "#FF5E00" style = "margin-left : 500px;">광고문의</font><br><br>
<font color = "#368AFF" style = "margin-left : 550px;">010-7711-8909</font><br><br>
<font color = "#FF5E00" style = "margin-left : 500px;">컨텐츠 제휴 및 마케팅 문의</font><br><br>
<font color = "#368AFF" style = "margin-left : 550px;">010-3040-6957</font><br><br>
<font color = "#FF5E00" style = "margin-left : 500px;">식당 대기관리 시스템 문의</font><br><br>
<font color = "#368AFF" style = "margin-left : 550px;">010-3180-8302</font><br><br>
<font color = "#FF5E00" style = "margin-left : 500px;">주소</font><br><br>
<font color = "#368AFF" style = "margin-left : 550px;">경기도 부천시 경인로 590</font><br><br> -->
</td>
<td>
<div id="map_view" style="width:700px; height:700px; margin-left:200px;"></div>
<!-- <img src = "img/map.png" style = "padding-left : 100px;"> -->
</td>
</tr>
</table>
<script>
	function initialize() { 
		
		var Y_point =37.487380; // Y 좌표126.820521; 
		var X_point = 126.820521;  // X 좌표
		var zoomLevel = 16; // 첫 로딩시 보일 지도의 확대 레벨
		var markerTitle = "유한대학교"; // 현재 위치 마커에 마우스를 올렸을때 나타나는 이름
		var markerMaxWidth = 300; // 마커를 클릭했을때 나타나는 말풍선의 최대 크기
		
		
		var contentString = '<div id="content">' +
		'<div id="siteNotice">' +
		'</div>' +
		'<h1 id="firstHeading" class="firstHeading">유한대학교</h1>' +
		'<div id="bodyContent">' +
		'경기도 부천시 경인로 590<br />' +
		'Tel. 010-2930-0646' +
		'</div>' +
		'</div>';
	
		 var myLatlng = new google.maps.LatLng(Y_point, X_point);
		 var mapOptions = {
		 zoom: zoomLevel,
		 center: myLatlng,
		 mapTypeId: google.maps.MapTypeId.ROADMAP
		 }
		 var map = new google.maps.Map(document.getElementById('map_view'), mapOptions);
	
		 var marker = new google.maps.Marker({
		 position: myLatlng,
		 map: map,
		 title: markerTitle
		 });
	
	 var infowindow = new google.maps.InfoWindow(
	 {
	 content: contentString,
	 maxWidth: markerMaxWidth
	 }
	 );
	
	 google.maps.event.addListener(marker, 'click', function() {
	 infowindow.open(map, marker);
	 });
	}
</script>
</body>
</html>