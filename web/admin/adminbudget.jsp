<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: panxi
  Date: 2017/7/10
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
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
            <li class="seleli"><a href="<%=request.getContextPath()%>/budget.action">预算管理</a></li>
            <li><a href="<%=request.getContextPath()%>/showAllPlan.action">帮扶管理</a></li>
            <li><a href="<%=request.getContextPath()%>/DataAnalyze.action">数据分析</a></li>
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
                <li><a href="#">预算管理</a></li>
            </ul>
        </div>
        <div>

            <table border="2" align="center" bordercolor="#6666FF" width="80%">
                <tr>
                    <th>ID</th>
                    <th>帮扶措施</th>
                    <th>花费</th>
                    <th>名额</th>
                    <th>操作</th>
                </tr>
                <s:iterator value="budgetlist">
                    <tr>
                        <td align="center">
                            <s:property value="measureId"/>
                        </td>
                        <td align="center">
                            <s:property value="measureName"/>
                        </td>
                        <td align="center">
                            <s:property value="cost"/>
                        </td align="center">

                        <td align="center">
                            <s:property value="number"/>
                        </td align="center">
                        <td align="center">
                            <a href="updatebudget.action?ID=<s:property value="measureId"/>&act=add">增加名额</a>
                            &nbsp &nbsp

                            <a href="updatebudget.action?ID=<s:property value="measureId"/>&act=cut">减少名额</a>
                        </td>

                    </tr>
                </s:iterator>

            </table>
        </div>
    </div>
</div>
<div class="footer"></div>
</body>
</html>
