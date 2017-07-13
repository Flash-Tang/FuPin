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
                <li><a href="#">信息查询</a></li>
            </ul>
        </div>

       	<table border="2" align="center" bordercolor="#6666FF" width="80%">

				<tr>
					<th>
						通知编号
					</th>
					<th>
						发布者ID
					</th>
					<th>
						通知内容
					</th>
					<th>
						操作
					</th>
				</tr>
          <s:iterator value="messageList">
				<tr>
					<td align="center"><s:property value="massageid" /></td>
					<td align="center"><s:property value="adminid" /></td>
					<td align="center"><s:property value="text" /></td>
					<td align="center"> <a href="deleteMessage.action?massageId=<s:property value="massageid" />" onClick='return confirm("确定要删除吗？")'> 删除</a></td>
				</tr>
			</s:iterator>
			</table>
        <center><button><a href="admin/adminaddmessage.jsp">发布新通知</a></button></center>
    </div>
</div>
<div class="footer"></div>
</body>
</html>
