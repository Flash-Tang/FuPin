<%--
  Created by IntelliJ IDEA.
  User: panxi
  Date: 2017/7/10
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="java.sql.*"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gbk" />
    <meta name="description" content="精准扶贫信息化管理平台" />
    <title>精准扶贫信息化管理平台</title>
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/admin/css/css.css" />
</head>
<body>
<div class="header">
    <div class="top"> <a href="<%=request.getContextPath()%>/showAllMessage.action"><img class="logo" src="<%=request.getContextPath()%>/admin/images/logo.jpg" /></a>
        <ul class="nav">
            <li><a href="<%=request.getContextPath()%>/showAllApply.action"">信息审核</a></li>
            <li><a href="<%=request.getContextPath()%>/budget.action">预算管理</a></li>
            <li><a href="<%=request.getContextPath()%>/showAllPlan.action">帮扶管理</a></li>
            <li class="seleli"><a href="<%=request.getContextPath()%>/DataAnalyze.action">数据分析</a></li>
            <li><a href="<%=request.getContextPath()%>/showAllFeedback.action">反馈管理</a></li>
            <li><a href="<%=request.getContextPath()%>/index.html">返回首页</a></li>
        </ul>
    </div>
</div>
<div class="container">
    <div class="leftbar">
        <div class="lm01"> <img class="peptx" src="<%=request.getContextPath()%>/admin/images/manager.png" />
            <div class="pepdet">
                <p class="pepname">欢迎回来，管理员</p>
            </div>
            <div class="clear"></div>
        </div>
        <div class="lm02">
            <div class="title"><img class="icon" src="<%=request.getContextPath()%>/admin/images/dataicon.jpg" />
                <h2>日历</h2>
            </div>
            <div class="detail"> <img class="" src="<%=request.getContextPath()%>/admin/images/kj_01.jpg" /> </div>
        </div>
        <div class="lm03">
            <div class="title"><img style="padding-right:5px;" class="icon" src="<%=request.getContextPath()%>/admin/images/weaicon.jpg" />
                <h2>天气</h2>
            </div>
            <div class="detail"> <img class="" src="<%=request.getContextPath()%>/admin/images/kj_02.jpg" /> </div>
        </div>
    </div>
    <div class="mainbody">
        <div class="currmenu">
            <ul class="rig_nav">
                <li class="rig_seleli"><a href="#">当前</a><span> x </span></li>
                <li><a href="#">信息查询</a></li>
            </ul>
        </div>
        <br>
        <br>
        <div style="font-size: 20px; text-align:center;font-family: "microsoft yahei", Arial, Helvetica, sans-serif">
            根据贫困户地区分布统计
        </div>
    <br>
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

        <br><br><br><br><br><br><br>
    <div style="font-size: 20px; text-align:center;font-family: "microsoft yahei", Arial, Helvetica, sans-serif">
   根据用户需求分析
</div>
<br>
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
<div class="footer"></div>
</body>
</html>

