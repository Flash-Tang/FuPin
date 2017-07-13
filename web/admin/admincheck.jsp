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
						用户ID
					</th>
					<th>
					    <td align="center"><s:property value="applys.userid" /></td>
					</th>
				</tr>
				<tr>
					<th>
						用户姓名
					</th>
					<th>
					    <td align="center"><s:property value="applys.name" /></td>
					</th>
				</tr>
				<tr>
					<th>
						性别
					</th>
					<th>
					    <td align="center"><s:property value="applys.sex" /></td>
					</th>
				</tr>
				<tr>
					<th>
						民族
					</th>
					<th>
					    <td align="center"><s:property value="applys.nation" /></td>
					</th>
				</tr>
				<tr>
					<th>
						联系方式
					</th>
					<th>
					    <td align="center"><s:property value="applys.telephone" /></td>
					</th>
				</tr>
				<tr>
					<th>
						身份证号
					</th>
					<th>
					    <td align="center"><s:property value="applys.idCardNum" /></td>
					</th>
				</tr>
				<tr>
					<th>
						户籍所在地
					</th>
					<th>
					    <td align="center"><s:property value="applys.placeOfDemicile" /></td>
					</th>
				</tr>
				<tr>
					<th>
						受教育程度
					</th>
					<th>
					    <td align="center"><s:property value="applys.education" /></td>
					</th>
				</tr>
				<tr>
					<th>
						家庭住址
					</th>
					<th>
					    <td align="center"><s:property value="applys.address" /></td>
					</th>
				</tr>
				<tr>
					<th>
						婚姻状况
					</th>
					<th>
					    <td align="center"><s:property value="applys.marriage" /></td>
					</th>
				</tr>
				<tr>
					<th>
						家庭人数
					</th>
					<th>
					    <td align="center"><s:property value="applys.famMemNum" /></td>
					</th>
				</tr>
				<tr>
					<th>
						残疾情况
					</th>
					<th>
					    <td align="center"><s:property value="applys.disability" /></td>
					</th>
				</tr>
				<tr>
					<th>
						残疾证号
					</th>
					<th>
					    <td align="center"><s:property value="applys.disabCardNum" /></td>
					</th>
				</tr>
				<tr>
					<th>
						家庭人均收入
					</th>
					<th>
					    <td align="center"><s:property value="applys.perIncome" /></td>
					</th>
				</tr>
				<tr>
					<th>
						社会保险
					</th>
					<th>
					    <td align="center"><s:if test="demand.socialSecurity==1">
                                                            需要
                     </s:if> <s:if test="demand.socialSecurity==0">
                                                           不需要
                     </s:if></td>
					</th>
				</tr>
				<tr>
					<th>
						社会救助福利补贴
					</th>
					<th>
					    <td align="center"><s:if test="demand.socialAssistance==1">
                                                            需要
                     </s:if> <s:if test="demand.socialAssistance==0">
                                                           不需要
                     </s:if></td>
					</th>
				</tr>
				<tr>
					<th>
						托养服务
					</th>
					<th>
					    <td align="center"><s:if test="demand.fosterService==1">
                                                            需要
                     </s:if> <s:if test="demand.fosterService==0">
                                                           不需要
                     </s:if></td>
					</th>
				</tr>
				<tr>
					<th>
						康复医疗
					</th>
					<th>
					    <td align="center"><s:if test="demand.rehabilitation==1">
                                                            需要
                     </s:if> <s:if test="demand.rehabilitation==0">
                                                           不需要
                     </s:if></td>
					</th>
				</tr>
				<tr>
					<th>
						无障碍改造
					</th>
					<th>
					    <td align="center"><s:if test="demand.disabReconst==1">
                                                            需要
                     </s:if> <s:if test="demand.disabReconst==0">
                                                           不需要
                     </s:if></td>
					</th>
				</tr>
				<tr>
					<th>
						教育培训
					</th>
					<th>
					    <td align="center"><s:if test="demand.education==1">
                                                            需要
                     </s:if> <s:if test="demand.education==0">
                                                           不需要
                     </s:if></td>
					</th>
				</tr>
				<tr>
					<th>
						就业
					</th>
					<th>
					    <td align="center"><s:if test="demand.job==1">
                                                            需要
                     </s:if> <s:if test="demand.job==0">
                                                           不需要
                     </s:if></td>
					</th>
				</tr>
				<tr>
					<th>
						扶贫
					</th>
					<th>
					    <td align="center"><s:if test="demand.privation==1">
                                                            需要
                     </s:if> <s:if test="demand.privation==0">
                                                           不需要
                     </s:if></td>
					</th>
				</tr>
				<tr>
					<th>
						维权
					</th>
					<th>
					    <td align="center"><s:if test="demand.legalRight==1">
                                                            需要
                     </s:if> <s:if test="demand.legalRight==0">
                                                           不需要
                     </s:if></td>
					</th>
				</tr>
					<tr>
					<th>
						改善基本生活条件
					</th>
					<th>
					    <td align="center"><s:if test="demand.improlivCondition==1">
                                                            需要
                     </s:if> <s:if test="demand.improlivCondition==0">
                                                           不需要
                     </s:if></td>
					</th>
				</tr>

		</table>
		<br><br>
		<div style="font-size: 20px;text-align:center;font-family:microsoft yahei;font;font-style: inherit">
			<a href="passApply.action?userId=<s:property value="applys.userid" />"> 合格</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="deleteApply.action?userId=<s:property value="applys.userid" />"> 不合格</a>
		</div>

    </div>
</div>
<div class="footer"></div>
</body>
</html>
