<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


	
	
<title>Insert title here</title>
<style>
	html, body {width:100%;height:100%;margin:0;padding:0;} 
	.map_wrap {position:relative;overflow:hidden;width:100%;height:600px;}
	.radius_border{border:1px solid #919191;border-radius:5px;}     
	.custom_typecontrol {position:absolute;top:10px;right:10px;overflow:hidden;width:130px;height:30px;margin:0;padding:0;z-index:1;font-size:12px;font-family:'Malgun Gothic', '맑은 고딕', sans-serif;}
	.custom_typecontrol span {display:block;width:65px;height:30px;float:left;text-align:center;line-height:30px;cursor:pointer;}
	.custom_typecontrol .btn {background:#fff;background:linear-gradient(#fff,  #e6e6e6);}       
	.custom_typecontrol .btn:hover {background:#f5f5f5;background:linear-gradient(#f5f5f5,#e3e3e3);}
	.custom_typecontrol .btn:active {background:#e6e6e6;background:linear-gradient(#e6e6e6, #fff);}    
	.custom_typecontrol .selected_btn {color:#fff;background:#425470;background:linear-gradient(#425470, #5b6d8a);}
	.custom_typecontrol .selected_btn:hover {color:#fff;}   
	.custom_zoomcontrol {position:absolute;top:50px;right:10px;width:36px;height:80px;overflow:hidden;z-index:1;background-color:#f5f5f5;} 
	.custom_zoomcontrol span {display:block;width:36px;height:40px;text-align:center;cursor:pointer;}     
	.custom_zoomcontrol span img {width:15px;height:15px;padding:12px 0;border:none;}             
	.custom_zoomcontrol span:first-child{border-bottom:1px solid #bfbfbf;}            
</style>

</head>
<body>
	<h1>MAP</h1>
	<hr>
	<span id="myvar">${location}</span>
	
<br>
<div class="map_wrap">
    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div> 
    <!-- 지도타입 컨트롤 div 입니다 -->
    <div class="custom_typecontrol radius_border">
        <span id="btnRoadmap" class="selected_btn" onclick="setMapType('roadmap')">지도</span>
        <span id="btnSkyview" class="btn" onclick="setMapType('skyview')">스카이뷰</span>
    </div>
    <!-- 지도 확대, 축소 컨트롤 div 입니다 -->
    <div class="custom_zoomcontrol radius_border"> 
        <span onclick="zoomIn()"><img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png" alt="확대"></span>  
        <span onclick="zoomOut()"><img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png" alt="축소"></span>
    </div>
</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=94c547820265ae0ce0a5f82974d74a77&libraries=services"></script>
<script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>	
	<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = { 
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	 };  
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	var locationval = document.getElementById("myvar").innerHTML;
	
	// 장소 검색 객체를 생성합니다
	var ps = new kakao.maps.services.Places(); 
	// 키워드로 장소를 검색합니다
	ps.keywordSearch(locationval, placesSearchCB); 
	
	// 키워드 검색 완료 시 호출되는 콜백함수 입니다
	function placesSearchCB (data, status, pagination) {
	    if (status === kakao.maps.services.Status.OK) {

	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
	        // LatLngBounds 객체에 좌표를 추가합니다
	        var bounds = new kakao.maps.LatLngBounds();

	        for (var i=0; i<data.length; i++) {  
	            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
	        }       

	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
	        map.setBounds(bounds);
	    } 
	}
	
	// model의 list 가져오기
	var list = '${list}';
	var arrayList = new Array('${list}');
	console.log(list);
	console.log(arrayList);
	
	var jsondto = JSON.parse('${list}');
	console.log("==");
	console.log(jsondto);
	console.log(jsondto.length);
	
	for (var i in jsondto) {
		console.log("latitude : " + jsondto[i].latitude);
		console.log("longitude : " + jsondto[i].longitude);
	}
	
	
	// 마커 이미지의 이미지 주소입니다
	var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
	
	for (var i = 0; i < jsondto.length; i ++) {    
	    // 마커 이미지의 이미지 크기 입니다
	    var imageSize = new kakao.maps.Size(24, 35); 
	    // 마커 이미지를 생성합니다    
	    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
	    
	    // 마커를 생성합니다
	    var marker = new kakao.maps.Marker({
	        map: map, // 마커를 표시할 지도
	        position: new kakao.maps.LatLng(jsondto[i].latitude, jsondto[i].longitude), // 마커를 표시할 위치
	        title : jsondto[i].name, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
	        image : markerImage, // 마커 이미지 
	        clickable: true //클릭 이벤트 표시
	    });
	    
	    // 마커를 지도에 표시합니다.
	    marker.setMap(map);
	    
	    // 마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
	    var iwContent = '<div style="padding:5px;">'+ jsondto[i].name + '</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	        iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
	    
	 	// 마커에 표시할 인포윈도우를 생성합니다 
	    var infowindow = new kakao.maps.InfoWindow({
	        content: iwContent,
	        removable: iwRemoveable
	    });
	 	
	    kakao.maps.event.addListener(marker, 'click', makeClickListner(map, marker, infowindow));
	}    
	
	
	function makeClickListner(map, marker, infowindow) {
		return function() {
			infowindow.open(map, marker);
		};
	}
	
	// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
	function makeOverListener(map, marker, infowindow) {
	    return function() {
	        infowindow.open(map, marker);
	    };
	}

	// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
	function makeOutListener(infowindow) {
	    return function() {
	        infowindow.close();
	    };
	}
	// 지도타입 컨트롤의 지도 또는 스카이뷰 버튼을 클릭하면 호출되어 지도타입을 바꾸는 함수입니다
	function setMapType(maptype) { 
	    var roadmapControl = document.getElementById('btnRoadmap');
	    var skyviewControl = document.getElementById('btnSkyview'); 
	    if (maptype === 'roadmap') {
	        map.setMapTypeId(kakao.maps.MapTypeId.ROADMAP);    
	        roadmapControl.className = 'selected_btn';
	        skyviewControl.className = 'btn';
	    } else {
	        map.setMapTypeId(kakao.maps.MapTypeId.HYBRID);    
	        skyviewControl.className = 'selected_btn';
	        roadmapControl.className = 'btn';
	    }
	}
	
	// 지도 확대, 축소 컨트롤에서 확대 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
	function zoomIn() {
	    map.setLevel(map.getLevel() - 1);
	}
	
	// 지도 확대, 축소 컨트롤에서 축소 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
	function zoomOut() {
	    map.setLevel(map.getLevel() + 1);
	}
</script>
</body>
</html>