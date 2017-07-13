<%--
  Created by IntelliJ IDEA.
  User: panxi
  Date: 2017/7/10
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="精准扶贫信息化管理平台" />
<title>精准扶贫信息化管理平台</title>
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/user/css/css.css" />
</head>
<body>
	<div class="header">
		<div class="top">
			<a href="<%=request.getContextPath()%>/getMessage.action"><img
				class="logo"
				src="<%=request.getContextPath()%>/user/images/logo.jpg" /></a>
			<ul class="nav">

				<li><a href="<%=request.getContextPath()%>/user/userapply.jsp">申请帮扶</a></li>
				<li><a href="<%=request.getContextPath()%>/user/usertrack.jsp">帮扶追踪</a></li>
				<li class="seleli"><a
					href="<%=request.getContextPath()%>/user/userfeedback.jsp">反馈信息</a></li>
				<li><a href="<%=request.getContextPath()%>/index.html">返回首页</a></li>
			</ul>
		</div>
	</div>
	<div class="container">
		<div class="leftbar">
			<div class="lm01">
				<img class="peptx"
					src="<%=request.getContextPath()%>/user/images/user.png" />
				<div class="pepdet">
					<p class="pepname">欢迎回来，普通用户</p>
				</div>
				<div class="clear"></div>
			</div>
			<div class="lm02">
				<div class="title">
					<img class="icon"
						src="<%=request.getContextPath()%>/user/images/dataicon.jpg" />
					<h2>日历</h2>
				</div>
				<div class="detail">
					<img class=""
						src="<%=request.getContextPath()%>/user/images/kj_01.jpg" />
				</div>
			</div>
			<div class="lm03">
				<div class="title">
					<img style="padding-right:5px;" class="icon"
						src="<%=request.getContextPath()%>/user/images/weaicon.jpg" />
					<h2>天气</h2>
				</div>
				<div class="detail">
					<img class=""
						src="<%=request.getContextPath()%>/user/images/kj_02.jpg" />
				</div>
			</div>
		</div>
		<div class="mainbody">
			<div class="currmenu">
				<ul class="rig_nav">
					<li class="rig_seleli"><a href="#">当前</a><span> x </span></li>
					<li><a href="#">反馈信息</a></li>
				</ul>
			</div>
		<br><br>
			<center>
			<form action="sendFeedback.action" method="post">
			<table border width="50%">
			<tr>
			<td>用户名</td>
			<td><input text name="username"></text></td>
			</tr>
			<tr>
			<td>用户反馈</td>
			<td><textarea name="feedback.words" rows="10" cols="60"></textarea></td>
			</tr>
			<tr>
<td align="center" colspan="2">
<input type="submit" value="提交"/>
</td>
</tr>
</table>
</form>
			</center>
    </div>
	</div>
	<div class="footer"></div>
</body>
</html>
