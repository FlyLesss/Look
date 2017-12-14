<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  lang="UTF-8">
<head>
	<title>权威教练</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="./css/teacherShowStyles.css">
    <link rel="stylesheet" type="text/css" href="./css/head_foot.css">
</head>
<body>
       <!-- <div id="simple-container"></div> -->
       <!--<div class="jkpt-header-top"></div>-->
       <!--<div class="jkpt-header-bar" style="width: 100%;"></div>-->
       <!--<div class="jkpt-header-nav"></div>-->
       <!--<div class="jkpt-nav-switch"></div>-->
       <div id="firstPage">

           <!--头部-->
           <div id="head">

               <!--头部上面的定位栏-->
               <div id="headTop">

                   <!--定位栏内容显示-->
                   <div class="headTop_show">

                       <!--定位-->
                       <!--定位图片-->
                       <div class="location_img">
                           <img src="imgs/location.png">
                       </div>
                       <!--定位的文字-->
                       <div class="location_text">
                           <p style="color: #ffffff">成都
                               <a href="#" style="color: #499afd">[切换]</a>
                           </p>
                       </div>

                       <!--手机二维码-->
                       <div class="phone_text">
                           <a href="#" style="color: #ffffff">手机端查看</a>
                       </div>

                   </div>
               </div>

               <!--导航部分-->
               <div id="headnav">

                   <!--导航部分显示内容区域-->
                   <div class="headnav_show">
                       <!--logo-->
                       <div class="logo">
                           <img src="imgs/logo.png"/>
                       </div>

                       <!--导航条-->
                       <div class="navbar">
                           <ul>
                               <li><a href="#" style="color: #499afd">首页</a></li>
                               <li><a href="#">我要学车</a></li>
                               <li><a href="#">理论题库</a></li>
                               <li><a href="#">经验论坛</a></li>
                               <li><a href="#">个人中心</a></li>
                               <li><a href="#">在线咨询</a></li>
                           </ul>
                       </div>

                       <!--登录注册-->
                       <div class="login">
                           <a href="#" style="color: #000000">登录</a>
                           &nbsp;|&nbsp;
                           <a href="#" style="color: #499afd">注册</a>
                       </div>


                       <div class="clear"></div>
                   </div>
               </div>

           </div>
       <div class="tacher-list">
           <ul class="ul-list">
            
             <li>
                 <div class="jkpt-list-left"><a target="_blank" href="/coach/239179/"><img src="showImg.jsp?id=tid&tid=teacher.getTid()&photoname=timg&db=t_power" title="teacher.getTname()"></a>
                 </div>
                 <div class="jkpt-list-center">
                     <div class="title"><a href="teacherIntroduServlet?tid=teacher.getTid()">teacher.getTname() </a><span class="age">教龄teacher.getTage()年</span></div>
                     <div class="address"><span>驾校距离我teacher.getTdistance()km</span></div>
                     <div class="jtaddress"><span>teacher.getTschool() </span></div>
                     <div class="score"><span>teacher.getTgrade() </span></div>
                 </div>
                 <div class="jkpt-list-pirce ">
                       <p><strong><i>￥</i>teacher.getTprice()</strong><span>起</span></p>
                 </div>
             <div style="height:0; clear:both;" ></div>
                   
             </li>
 
           </ul>
           
           <div class="center"><table border="1" id="mytable">
	
	<tr style="height:30px">
	
		<td style="width:35px">教练姓名</td>
		<td style="width:120px">教练性别</td>
		<td style="width:90px">教练状态</td>
		<td style="width:70px">教龄</td>
		<td style="width:230px">场地</td>
		<td style="width:140px">教练评分</td>
		<td style="width:140px">教练称号</td>
	</tr>
	<c:forEach items="${coach}"  var="coach">
	<tr style="height:30px">
		<td>1</td>
		<td><a href="/capital_account/coach/getnamecoach.htm?cid=${coach.cid}" style="text-decoration: none;color:blue">${coach.cname}</a></td>
		<td>${coach.csex}</td>
		<td>${coach.cstate}</td>
		<td>${coach.ctime}</td>
		<td>${coach.caddress}</td>
		<td>${coach.cscore}</td>
		<td>${coach.cprofess}</td>
	</tr>
		
		</c:forEach>
	
</table>

       </div>
</body>
</html>