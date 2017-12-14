<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="css/bbs.css" rel="stylesheet" type="text/css" />
    <title>Document</title>
    <style type="text/css">
        a {
            text-decoration: none;
        }
        
        
        button {
            border-radius: 75%;
            color: deepskyblue;
        }
        .touxiang img {
             border-radius: 50%;
            /* float: left; */
            width: 90px;
            height: 90px;
            vertical-align: middle; 
        }
        
        .pinglun {
            font-size: 14px;
        }
        
       
        </style>
</head>
<body>
    <div id="mian">
        <div id="bankuai">
            <li>
                <div class="moban" style="width: 300px;height: 100px;">
                    <img src="imgs/notice.jpg" alt="社区公告" style=""  />
                    <h3>&nbsp;&nbsp;&nbsp;社区公告</h3><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话题：${board.topicnum}</p> 
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一知天下必知</p>
                 
                </div>
            </li>
            <li>
                <div class="moban" style="width: 300px;height: 100px;">
                    <img src="imgs/hot.jpg" alt="热帖榜" style=""  />
                    <h3>&nbsp;&nbsp;&nbsp;热帖榜</h3><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话题：${board.topicnum}</p> 
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;最火最热,最佳贴</p>
                 
                </div>
            </li>
            <li>
                <div class="moban" style="width: 300px;height: 100px;">
                    <img src="imgs/share.jpg" alt="分享会" style=""  />
                    <h3>&nbsp;&nbsp;&nbsp;分享会</h3><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话题：${board.topicnum}</p> 
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我分享我快乐</p>
                 
                </div>
            </li>
            <li>
                <div class="moban" style="width: 300px;height: 100px;">
                    <img src="imgs/qa.jpg" alt="问答榜" style=""  />
                    <h3>&nbsp;&nbsp;&nbsp;问答榜</h3><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话题：${board.topicnum}</p> 
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有问必答,解惑驾考难题</p>
                 
                </div>
            </li>
            <li>
                <div class="moban" style="width: 300px;height: 100px;">
                    <img src="imgs/wish.jpg" alt="愿望墙" style=""  />
                    <h3>&nbsp;&nbsp;&nbsp;愿望墙</h3><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话题：${board.topicnum}</p> 
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;天灵灵地灵灵我的愿望最灵</p>
                 
                </div>
            </li>
            <li>
                <div class="moban" style="width: 300px;height: 100px;">
                    <img src="imgs/fun.jpg" alt="学车趣事" style=""  />
                    <h3>&nbsp;&nbsp;&nbsp;学车趣事</h3><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话题：${board.topicnum}</p> 
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;分享趣事，一起乐呵呵</p>
                 
                </div>
            </li>
        </div>
        
        <div id="detail">
            <div style="width: 800px height:1050px">
                <div id="cheyouquan" style="width: auto; height: 120px;">
                    <h2>驾考车友圈</h2>
                    <br /> <br /> 
                        <div id="fatie"style="width: 50px; height: 30px; background-color: #499AFD; float: right;">
                        <a href="fatie.jsp?id=${user.sid }" target="_parent">	发帖</a>
                        </div>
                    
                    <hr style="width: 750px" />
                </div>
        
        
                <div id="main" style="width: 800px; height: 105px;">
                    <li style="border-bottom:1px solid gray;">
                         
                                <div class="touxiang" id="left"
                                    style="float: left; width: 15%; height: 100%; text-align: center">
        
                                    <img src="imgs/share.jpg" alt="头像" /> <br />
                                     用户名称
                                </div>
                                <div class="tiezi" id="right"
                                    style="float: right; width: 85%; height: 100%">
                                    <a href="card_detail?id=${c.t_id }" target="_parent"> <B>帖子题目</B>
                                    </a> <br />
                                    <p
                                        style="width: 660px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap">帖子部分内容
                                    </p>
        
                                    <div class="pinglun"><p>${c.time}&nbsp;&nbsp;来源
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;赞（3）回复（2)</br>
                                        <br></p>
                                    </div>
                                </div>
                    </li>
                    <li style="border-bottom:1px solid gray;">
                        
                               <div class="touxiang" id="left"
                                   style="float: left; width: 15%; height: 100%; text-align: center">
       
                                   <img src="imgs/share.jpg" alt="头像" /> <br />
                                    用户名称
                               </div>
                               <div class="tiezi" id="right"
                                   style="float: right; width: 85%; height: 100%">
                                   <a href="card_detail?id=${c.t_id }" target="_parent"> <B>帖子题目</B>
                                   </a> <br />
                                   <p
                                       style="width: 660px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap">帖子部分内容
                                   </p>
       
                                   <div class="pinglun"><p>${c.time}&nbsp;&nbsp;来源
                                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;赞（3）回复（2)</br>
                                       <br></p>
                                   </div>
                               </div>
                   </li>
                </div>
            </div>
        </div>
        
        <div id="retie">
            <div id="toutiao">
                <h3>今日头条推荐</h3>
                <hr />
                <li><a href="#">学车流程</a></li>
                <li><a href="#">科目二考试须知</a></li>
                <li><a href="#">开车秘籍！驾校里学不到的10大技巧</a></li>
                <li><a href="#">陇川县驾校驾驶员考试</a></li>
                <li><a href="#">学车指南</a></li>
                <li><a href="#">科目三考试须知</a></li>
                <li><a href="#">开车秘籍！驾校里学不到的10大技巧</a></li>
                <li><a href="#">科目二补考费用相关知识</a></li>
                <li><a href="#">科四备考中</a></li>
                <li><a href="#">科目二考试须知</a></li>
                <li><a href="#">开车秘籍！驾校里学不到的10大技巧</a></li>
                <li><a href="#">科目三补考费用相关知识</a></li>
                
                <hr />
            </div>
            <br />
            <br />
            <div id="tuijian">
                <h3>热门推荐</h3>
                <hr />
                <li><a href="#">分享一下今天考科三心得</a></li>
                <li><a href="#">我想知道预约科目一多久有结果来？</a></li>
                <li><a href="#">开车秘籍！驾校里学不到的10大技巧</a></li>
                <li><a href="#">科二已过😃学车心得</a></li>
                <li><a href="#">学车流程</a></li>
                <li><a href="#">科目二考试须知</a></li>
                <li><a href="#">开车秘籍！驾校里学不到的10大技巧</a></li>
                <li><a href="#">科目二补考费用相关知识</a></li>
                <li><a href="#">学车流程</a></li>
                <li><a href="#">科目二考试须知</a></li>
                <li><a href="#">开车秘籍！驾校里学不到的10大技巧</a></li>
                <li><a href="#">科目二补考费用相关知识</a></li>
                
                <hr />
            </div>
        </div>
    </div>
</body>
</html>