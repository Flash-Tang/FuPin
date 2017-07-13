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
			<form action="sendMessage.action" method="post">
			<table border="2" align="center" bordercolor="#6666FF" width="80%">
			<tr>
			<td align="center">管理员ID</td>
			<td align="left"><input text name="message.adminid"></text></td>
			</tr>
			<tr>
			<td align="center">通知信息</td>
			<td align="left"><textarea name="message.text" rows="4" cols="90"></textarea></td>
			</tr>
			<tr>
<td align="center" colspan="2">
<input type="submit" value="提交"/>
</td>
</tr>
</table>
</form>
    </div>
	</div>
	<div class="footer"></div>
</body>
</html>
