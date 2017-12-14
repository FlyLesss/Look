<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  lang="UTF-8">
<head>
	<title>驾校</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="../css/teacherShowStyles.css">
    <link rel="stylesheet" type="text/css" href="../css/head_foot.css">
    <script type="text/javascript" src="http://api.map.baidu.com/getscript?v=2.0&ak=QXfWGArZwMaN4YpllRWCzC1jY20U4cqb"></script>
</head>
<body>
       <!-- <div id="simple-container"></div> -->
       <!--<div class="jkpt-header-top"></div>-->
       <!--<div class="jkpt-header-bar" style="width: 100%;"></div>-->
       <!--<div class="jkpt-header-nav"></div>-->
       <!--<div class="jkpt-nav-switch"></div>-->
       <div id="firstPage">

          <%@ include file="/head.jsp"%>


           </div>
       <div class="tacher-list">
           <ul class="ul-list">
            
             <c:forEach items="${driverschoollist}"  var="driverschoollist">
             <li>
             <div class="jkpt-list-left"><a target="_blank" href="/look/driverschool/getonedriverschool.htm?did=${driverschoollist.did}"><img src="${driverschoollist.dphoto}" title="${driverschoollist.dname}"></a>
                 </div>
                 <div class="jkpt-list-center">
                     <div class="title"><a href="/look/driverschool/getonedriverschool.htm?did=${driverschoollist.did}">${driverschoollist.dname} </a><span class="age">${driverschoollist.dtime}年</span></div>
                     <div class="address"><span>${driverschoollist.dname}</span></div>
                     <div class="jtaddress"><span>地址：${driverschoollist.daddress} </span></div>
                     <div class="score"><span>驾校评分：${driverschoollist.sid}</span></div>
                 </div>
                 <!-- <div class="jkpt-list-pirce "> -->
                 <div style="float:right;margin-top: 14px;">
                       <p><font style="font-size:28px;font-family: sans-serif;color: red"><strong ><i >￥</i>${driverschoollist.d1}</strong></font><span><font size="2px">起</font></span></p>
                 </div>
               <br><br>
                <div style="height:0; clear:both;" ></div>
             <li>
             </c:forEach>
 
           </ul>
         </div>
         
          <div id="allmap1"></div>
</body>
<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("allmap1");
	var point = new BMap.Point(116.331398,39.897445);
	map.centerAndZoom(point,12);

	var lng1;
	var lat1;
	var fail='fail';

	var geolocation = new BMap.Geolocation();
	geolocation.getCurrentPosition(function(r){
		if(this.getStatus() == BMAP_STATUS_SUCCESS){
			var mk = new BMap.Marker(r.point);
			map.addOverlay(mk);
			map.panTo(r.point);
			lng1=r.point.lng;
			lat1=r.point.lat;
			//alert('您的位置：'+r.point.lng+','+r.point.lat);
		}
		else {
			//alert('failed'+this.getStatus());
			fail='failed'+this.getStatus()
		}        
	},{enableHighAccuracy: true})
	
</script>
</html>