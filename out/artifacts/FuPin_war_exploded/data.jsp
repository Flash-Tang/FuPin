<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="java.sql.*"%>
<%--
  Created by IntelliJ IDEA.
  User: panxi
  Date: 2017/7/13
  Time: 0:40
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <meta charset="utf-8">
    <title>市级政策资讯-扶贫首页服务</title>
    <meta name="keywords" content="龙岩市级政策资讯,龙岩扶贫首页服务">
    <meta name="description" content="龙岩扶贫首页服务为您提供龙岩扶贫类市级政策资讯">
    <style type="text/css">
        body,td,th {
            font-family: "微软雅黑";
        }
        body {
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
        }
    </style>
    <link href="css/new.css" rel="stylesheet" type="text/css">
    <link href="css/pu.css" rel="stylesheet" type="text/css">
    <link href="css/base.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="js/j1.8.2.js"></script>
    <link href="css/jzfp.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="css/min.css">
    <link rel="stylesheet" type="text/css" href="css/zx.css">
    <script type="text/javascript" src="/js/navTab.js"></script>
    <script type="text/javascript" src="js/min.js"></script>
    <script type="text/javascript">
        $(function(){
            var winWid = $(window).width();
            if( winWid>1200 ){
                var marL = ( winWid - 1900 ) / 2 ;
                $(".banner").css("margin-left",marL + "px");
            }
            else {
                $(".banner").css("margin-left","-" + 360 + "px");
                $(".banner").css("width",1560 + "px");
            }

            $(window).resize(function() {
                var winWid = $(window).width();
                if( winWid>1200 ){
                    var marL = ( winWid - 1900 ) / 2 ;
                    var plusW = ( 1900 - winWid ) / 2 ;
                    $(".banner").css("margin-left",marL + "px");
                    $(".banner").css("width",winWid + plusW + "px");
                }
                else {
                    $(".banner").css("margin-left","-" + 360 + "px");
                    $(".banner").css("width",1560 + "px");
                }
            });

        })
    </script>
    <script type="text/javascript">

        $(function(){
            navTab({
                'btn':$('#menus').find('.menu'),
                'con':'.menuCont'
            });
            /*$(".menuCont").hover(function(e) {
             $(".menuCont").mouseleave(function(e) {
             $(".menuCont").hide();
             });
             });*/
            $(".menuHover").mouseleave(function(e) {
                $(".menuCont").hide();
            });

            hotTab({
                'btn':$('#hotNavs').find('.hotNav'),
                'con':'.hotNavCont'
            });
            $('#hotNavCont1').show();
            $('#hotNavCont2').hide();
            $('#hotNavCont3').hide();

            $(".photoSlide").hover(function() {
                $(".swiperPhotoBtn").show();
            });
            $(".photoSlide").mouseleave(function() {
                $(".swiperPhotoBtn").hide();
            });
        });

        $(document).ready(function(){

            $('#hotNavCont11').click(function(){
                $("#moreId").attr("href","http://www.longyan.cn/fp/fphomepage/fphpresource/fpyw/fpdt/fpdtinfo/index.jsp?type=fpdt");
            });
            $('#hotNavCont22').click(function(){
                $("#moreId").attr("href","http://www.longyan.cn/fp/fphomepage/fphpresource/fpyw/jdxw/jdxwinfo/index.jsp?type=jdxw");
            });
            $('#hotNavCont33').click(function(){
                $("#moreId").attr("href","http://www.longyan.cn/fp/fphomepage/fphpresource/fpyw/mtbd/mtbdinfo/index.jsp?type=mtbd");
            });
        });
    </script>
    <script>
        var swiper1 = new Swiper('.swiper-top', {
            pagination: '.swiper-pagination',
            paginationClickable: true,
            autoplay:3000,
            autoplayDisableOnInteraction : false,
            speed:800,
            loop:true,
        });
        var swiper2 = new Swiper('.swiper-photo', {
            paginationClickable: true,
            nextButton: '.swiper-button-next',
            prevButton: '.swiper-button-prev',
            autoplay:4000,
            autoplayDisableOnInteraction : false,
            speed:800,
            loop:true,
        });
    </script>
    <script type="text/javascript">
        onLoad();
        function getTime(){
            //获取系统日期
            var now =new Date();
            //月
            var month=now.getMonth()+1;
            //星期
            var week =now.getDay();
            var s ="";
            switch(week){
                case 0: s = "星期日";break;
                case 1: s = "星期一";break;
                case 2: s = "星期二";break;
                case 3: s = "星期三";break;
                case 4: s = "星期四";break;
                case 5: s = "星期五";break;
                case 6: s = "星期六";break;
            }
            //年
            var year=now.getYear()+1900;
            //日
            var day=now.getDate();
            //小时
            var hour=now.getHours();
            //分钟
            var minute=now.getMinutes();
            //秒
            var second=now.getSeconds();

            if(day<10){
                day="0"+day;
            }
            if(hour<10){
                hour="0"+hour;
            }
            if(minute<10){
                minute="0"+minute;
            }
            if(second<10){
                second="0"+second;
            }
            return year+"年"+month+"月"+day+"日 "+"  "+hour+":"+minute+":"+second+"  "+s;
        }
        function onLoad(){
            var timeStr = getTime();
            $("#serverTime").attr("value",timeStr);
            setTimeout(onLoad,1000);
        }

    </script>
    <script type="text/javascript">
        var app_path='/ly_portal';
        $(function(){
            if(.browser == true && .browser <= 9){
                $("input").placeholder({force: true});//解决IE8,IE9的placeholde兼容性
            }
        });
    </script>
    <script type="text/javascript">
        /******piwik common统一埋点*******/
        var pkSiteID = '350800';
        var pkBaseURL = 'http://app.scity.cn/piwik/';
        document.write(unescape("%3Cscript src='" + pkBaseURL + "piwik.js' type='text/javascript'%3E%3C/script%3E"));
        $(function(){	$("#weather_iframe").attr("src","http://i.tianqi.com/index.php?c=code&id=34&icon=1&num=3");
        });
    </script>
</head>
<body>
<div class="top">
    <div class="topCont">
        <div class="fl" >
            <input id="serverTime" type="text" style="border:none;background:#fbfbfb;width:210px;" value="" disabled />
        </div>
        <div class="topLogin fr"><a href="userlogin.html" target="blank">用户登录</a>    <a href="adminlogin.html">管理员登录</a></div>
    </div>
</div>
<div class="banner"><img src="image/top.png" alt="" /></div>
<div class="middle">
    <div class="menuInner">
        <div class="menuHover">
            <div class="menus" id="menus">
                <div class="menu fl"><a href="index.html"><div class="font">首页</div></a></div>
                <div class="menu fl"><a href="message.html"><div class="font">信息公开</div></a></div>
                <div class="menu fl"><a href="show.html"><div class="font">公示公告</div></a></div>
                <div class="menu fl"><a href="bangfu.html"><div class="font">帮扶计划</div></a></div>
                <div class="menu fl"><a href="chengguo.html"><div class="font">成果展示</div></a></div>
                <div class="menu fl"><a href="dataAnalyze.action"><div class="font">数据分析</div></a></div>
            </div>





        </div>
    </div>
</div>

<div class="cms">

    <script src="js/piwik.js" type="text/javascript"></script><script src="js/piwik.js" type="text/javascript"></script>
    <script src="js/piwik.js" type="text/javascript"></script><script src="js/piwik.js" type="text/javascript"></script>


    <div style="float:left">
        <div class="mainbox-l-t" style="width:218px">
            <div id="clMenu">

                <div class="ej_jc">
                    <h3 class=" ML10 ej_jc_ico1">信息公开</h3>
                </div>
                <div class="ej_l">
                    <ul>
                        <li><a href="message.html">资金使用情况</a>
                        </li>
                        <li><a href="message.html">扶贫动态</a>
                        </li>
                        <li><a href="message.html">媒体报道</a>
                        </li>
                    </ul>
                </div>

                <div class="ej_jc">
                    <h3 class=" ML10 ej_jc_ico2">公示公告</h3>
                </div>
                <div class="ej_l">
                    <ul>
                        <li><a href="show.html">评选须知</a>
                        </li>
                        <li><a href="show.html">评选名单</a>
                        </li>
                        <li><a href="shili.html">扶贫典型事例</a>
                        </li>

                    </ul>
                </div>

                <div class="ej_jc">
                    <h3 class=" ML10 ej_jc_ico3">帮扶计划</h3>
                </div>
                <div class="ej_l">
                    <ul>
                        <li><a href="bangfu.html">资金项目</a>
                        </li>
                        <li><a href="shengji.html">省级政策</a>
                        </li>
                        <li><a href="zhongyang.html">中央政策</a>
                        </li>
                    </ul>
                </div>
                <div class="ej_jc">
                    <h3 class=" ML10 ej_jc_ico4">数据分析</h3>
                </div>
                <div class="ej_l">
                    <ul>
                        <li><a href="data.html">贫困水平分析</a>
                        </li>
                        <li><a href="data.html">帮扶效果分析</a>
                        </li>
                        <li><a href="data.html">贫困原因分析</a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
    </div>

    <div style="float: left;margin-left: 45px;width: 918px">




        <div  style="border:2px solid gray ;align:center; bordercolor:#6666FF;font-size: 13px">
            <div style="border:1px solid gray ;font-size: 25px; text-align:center;font-family: "microsoft yahei", Arial, Helvetica, sans-serif">
                根据贫困户地区分布统计
            </div>

        <div style="font-size: 18px; text-align:center;font-family: "microsoft yahei", Arial, Helvetica, sans-serif">
            <table  border="2" align="center" bordercolor="#6666FF" width="95%">
                <tr>
                    <th>
                        户籍所在地
                    </th>
                    <th>
                        贫困人数
                    </th>
                    <th>
                        人均收入
                    </th>
                </tr>
                <s:iterator value="placeList">
                    <tr>
                        <td align="center"><s:property value="placeOfDemicile" /></td>
                        <td align="center"><s:property value="poorNum" /></td>
                        <td align="center"><s:property value="avgIncome" /></td>
                    </tr>

                </s:iterator>
            </table>
        </div>
            </div>
            <br><br><br><br> <br><br><br><br>
    <div  style="border:2px solid gray ;align:center; bordercolor:#6666FF">
            <div style="border:1px solid gray ;font-size: 25px; text-align:center;font-family: "microsoft yahei", Arial, Helvetica, sans-serif">
            根据用户需求分析
            </div>
<div style="font-size: 18px; text-align:center;font-family: "microsoft yahei", Arial, Helvetica, sans-serif">
        <table border="2" align="center" bordercolor="#6666FF" width="95%">
            <tr>
                <th>
                    需求
                </th>
                <th>
                    社会保险
                </th>
                <th>
                    社会救助福利补贴
                </th>
                <th>
                    托养服务
                </th>
                <th>
                    康复
                </th>
                <th>
                    无障碍改造
                </th>
                <th>
                    教育
                </th>
                <th>
                    就业
                </th>
                <th>
                    扶贫
                </th>
                <th>
                    维权
                </th>
                <th>
                    改善基本生活条件
                </th>
            </tr>
            <s:iterator value="demandanaList">
                <tr>
                    <td align="center">人数</td>
                    <td align="center"><s:property value="socialSecurity" /></td>
                    <td align="center"><s:property value="socialAssistance" /></td>
                    <td align="center"><s:property value="fosterService" /></td>
                    <td align="center"><s:property value="rehabilitation" /></td>
                    <td align="center"><s:property value="disabReconst" /></td>
                    <td align="center"><s:property value="education" /></td>
                    <td align="center"><s:property value="job" /></td>
                    <td align="center"><s:property value="privation" /></td>
                    <td align="center"><s:property value="legalRight" /></td>
                    <td align="center"><s:property value="improlivCondition" /></td>
                </tr>
            </s:iterator>
        </table>
</div>
</div>
    </div>
</div>

<div class="bottom">
    <div class="content">
        <div class="left fl">
            <p>主办：某某市人民政府</p>
            <p>承办：某某市脱贫攻坚战役指挥部办公室 某某市数字办公室</p>
            <p>运行维护：第二小组&nbsp;&nbsp;&nbsp;&nbsp;联系我们：1454053442@qq.com</p>
            <p class="tipColor">推荐windows7操作系统以及与标准兼容的浏览器，最佳分辨率1440x900</p>
        </div>
        <div class="right fr"><img src="image/bottom.png" width="182" height="100" alt="" /></div>
    </div>
</div>
</body>
</html>
