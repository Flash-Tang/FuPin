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
            <li class="seleli"><a href="<%=request.getContextPath()%>/showAllPlan.action">帮扶管理</a></li>
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
                <li><a href="#">帮扶管理</a></li>
            </ul>
        </div>
        <br><br>
        <div style="font-size: 15px;text-align: center;font-family: "microsoft yahei", Arial, Helvetica, sans-serif">用户ID:<s:property value="plan.userid"/></div>
        <table border="2" align="center" bordercolor="#6666FF" width="80%">
            <tr>
                <th>
                    扶贫项目
                </th>
                <th>
                    剩余名额
                </th>
                <th>
                    状态
                </th>
                <th>
                    操作
                </th>
            </tr>
            <tr>
                <th>
                    社会保险
                </th>
                <th>
                    <s:property value="demand.socialSecurity"/>
                </th>
                    <s:if test="plan.socialSecurity==0">
                    <th></th><th></th>
                    </s:if>
                    <s:if test="plan.socialSecurity==1">
                        <th>申请中</th>><th><a href="adjustplan.action?&item=socialSecurity&userId=<s:property value="plan.userid"/>">确认申请</a></th>
                    </s:if>
                    <s:if test="plan.socialSecurity==2">
                        <th>申请成功</th>
                        <th></th>
                    </s:if>
            </tr>
            <tr>
                <th>
                    社会救助福利补贴
                </th>
                <th>
                    <s:property value="demand.socialAssistance"/>
                </th>
                <s:if test="plan.socialAssistance==0">
                    <th></th><th></th>
                </s:if>
                <s:if test="plan.socialAssistance==1">
                    <th>申请中</th>><th><a href="adjustplan.action?&item=socialAssistance&userId=<s:property value="plan.userid"/>">确认申请</a></th>
                </s:if>
                <s:if test="plan.socialAssistance==2">
                    <th>申请成功</th>
                    <th></th>
                </s:if>
            </tr>
            <tr>
                <th>
                    托养服务
                </th>
                <th>
                    <s:property value="demand.fosterService"/>
                </th>
                <s:if test="plan.fosterService==0">
                    <th></th><th></th>
                </s:if>
                <s:if test="plan.fosterService==1">
                    <th>申请中</th>><th><a href="adjustplan.action?&item=fosterService&userId=<s:property value="plan.userid"/>">确认申请</a></th>
                </s:if>
                <s:if test="plan.fosterService==2">
                    <th>申请成功</th>
                    <th></th>
                </s:if>
            </tr>
            <tr>
                <th>
                    康复医疗
                </th>
                <th>
                    <s:property value="demand.rehabilitation"/>
                </th>
                <s:if test="plan.rehabilitation==0">
                    <th></th><th></th>
                </s:if>
                <s:if test="plan.rehabilitation==1">
                    <th>申请中</th>><th><a href="adjustplan.action?&item=rehabilitation&userId=<s:property value="plan.userid"/>">确认申请</a></th>
                </s:if>
                <s:if test="plan.rehabilitation==2">
                    <th>申请成功</th>
                    <th></th>
                </s:if>
            </tr>
            <tr>
                <th>
                    无障碍改造
                </th>
                <th>
                    <s:property value="demand.disabReconst"/>
                </th>
                <s:if test="plan.disabReconst==0">
                    <th></th><th></th>
                </s:if>
                <s:if test="plan.disabReconst==1">
                    <th>申请中</th>><th><a href="adjustplan.action?&item=disabReconst&userId=<s:property value="plan.userid"/>">确认申请</a></th>
                </s:if>
                <s:if test="plan.disabReconst==2">
                    <th>申请成功</th>
                    <th></th>
                </s:if>
            </tr>
            <tr>
                <th>
                    教育培训
                </th>
                <th>
                    <s:property value="demand.education"/>
                </th>
                <s:if test="plan.education==0">
                    <th></th><th></th>
                </s:if>
                <s:if test="plan.education==1">
                    <th>申请中</th>><th><a href="adjustplan.action?&item=education&userId=<s:property value="plan.userid"/>">确认申请</a></th>
                </s:if>
                <s:if test="plan.education==2">
                    <th>申请成功</th>
                    <th></th>
                </s:if>
            </tr>
            <tr>
                <th>
                    就业
                </th>
                <th>
                    <s:property value="demand.job"/>
                </th>
                <s:if test="plan.job==0">
                    <th></th><th></th>
                </s:if>
                <s:if test="plan.job==1">
                    <th>申请中</th>><th><a href="adjustplan.action?&item=job&userId=<s:property value="plan.userid"/>">确认申请</a></th>
                </s:if>
                <s:if test="plan.job==2">
                    <th>申请成功</th>
                    <th></th>
                </s:if>
            </tr>
            <tr>
                <th>
                    扶贫
                </th>
                <th>
                    <s:property value="demand.privation"/>
                </th>
                <s:if test="plan.privation==0">
                    <th></th><th></th>
                </s:if>
                <s:if test="plan.privation==1">
                    <th>申请中</th>><th><a href="adjustplan.action?&item=privation&userId=<s:property value="plan.userid"/>">确认申请</a></th>
                </s:if>
                <s:if test="plan.privation==2">
                    <th>申请成功</th>
                    <th></th>
                </s:if>
            </tr>

            <tr>
                <th>
                    维权
                </th>
                <th>
                    <s:property value="demand.legalRight"/>
                </th>
                <s:if test="plan.legalRight==0">
                    <th></th><th></th>
                </s:if>
                    <s:if test="plan.legalRight==1">
                        <th>申请中</th>><th><a href="adjustplan.action?&item=legalRight&userId=<s:property value="plan.userid"/>">确认申请</a></th>
                </s:if>
                <s:if test="plan.legalRight==2">
                    <th>申请成功</th>
                    <th></th>
                </s:if>
            </tr>
            <tr>
                <th>
                    改善基本生活条件
                </th>
                <th>
                    <s:property value="demand.improlivCondition"/>
                </th>
                <s:if test="plan.improlivCondition==0">
                    <th></th><th></th>
                </s:if>
                <s:if test="plan.improlivCondition==1">
                    <th>申请中</th>><th><a href="adjustplan.action?&item=improlivCondition&userId=<s:property value="plan.userid"/>">确认申请</a></th>
                </s:if>
                <s:if test="plan.improlivCondition==2">
                    <th>申请成功</th>
                    <th></th>
                </s:if>
            </tr>

        </table>
    </div>
</div>
<div class="footer"></div>
</body>
</html>
