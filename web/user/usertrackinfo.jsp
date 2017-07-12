<%--
  Created by IntelliJ IDEA.
  User: panxi
  Date: 2017/7/10
  Time: 17:08
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
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/user/css/css.css" />
</head>
<body>
<div class="header">
    <div class="top"><a href="<%=request.getContextPath()%>/user/user.jsp"><img class="logo" src="<%=request.getContextPath()%>/user/images/logo.jpg" /></a>
        <ul class="nav">
            <li><a href="<%=request.getContextPath()%>/user/userinfo.jsp">个人信息</a></li>
            <li><a href="<%=request.getContextPath()%>/user/userapply.jsp">申请帮扶</a></li>
            <li class="seleli"><a href="<%=request.getContextPath()%>/user/usertrack.jsp">帮扶追踪</a></li>
            <li><a href="<%=request.getContextPath()%>/user/userfeedback.jsp">反馈信息</a></li>
            <li><a href="<%=request.getContextPath()%>/index.jsp">返回首页</a></li>
        </ul>
    </div>
</div>
<div class="container">
    <div class="leftbar">
        <div class="lm01"> <img class="peptx" src="<%=request.getContextPath()%>/user/images/user.png" />
            <div class="pepdet">
                <p class="pepname">欢迎回来，普通用户</p>
            </div>
            <div class="clear"></div>
        </div>
        <div class="lm02">
            <div class="title"><img class="icon" src="<%=request.getContextPath()%>/user/images/dataicon.jpg" />
                <h2>日历</h2>
            </div>
            <div class="detail"> <img class="" src="<%=request.getContextPath()%>/user/images/kj_01.jpg" /> </div>
        </div>
        <div class="lm03">
            <div class="title"><img style="padding-right:5px;" class="icon" src="<%=request.getContextPath()%>/user/images/weaicon.jpg" />
                <h2>天气</h2>
            </div>
            <div class="detail"> <img class="" src="<%=request.getContextPath()%>/user/images/kj_02.jpg" /> </div>
        </div>
    </div>
    <div class="mainbody">
        <div class="currmenu">
            <ul class="rig_nav">
                <li class="rig_seleli"><a href="#">当前</a><span> x </span></li>
                <li><a href="#">帮扶追踪</a></li>
            </ul>
        </div>
        <table border width="80%">
            <tr>
                <th>
                    用户ID
                </th>
                <th>
                <s:property value="applys.userid" />
                </th>
            </tr>
            <tr>
                <th>
                    用户姓名
                </th>
                <th>
                <s:property value="applys.name" />
                </th>
            </tr>
            <tr>
                <th>
                    性别
                </th>
                <th>
                <s:property value="applys.sex" />
                </th>
            </tr>
            <tr>
                <th>
                    民族
                </th>
                <th>
                <s:property value="applys.nation" />
                </th>
            </tr>
            <tr>
                <th>
                    联系方式
                </th>
                <th>
                <s:property value="applys.telephone" />
                </th>
            </tr>
            <tr>
                <th>
                    身份证号
                </th>
                <th>
                <s:property value="applys.idCardNum" />
                </th>
            </tr>
            <tr>
                <th>
                    户籍所在地
                </th>
                <th>
                <s:property value="applys.placeOfDemicile" />
                </th>
            </tr>
            <tr>
                <th>
                    受教育程度
                </th>
                <th>
                <s:property value="applys.education" />
                </th>
            </tr>
            <tr>
                <th>
                    家庭住址
                </th>
                <th>
                <s:property value="applys.address" />
                </th>
            </tr>
            <tr>
                <th>
                    婚姻状况
                </th>
                <th>
                <s:property value="applys.marriage" />
                </th>
            </tr>
            <tr>
                <th>
                    家庭人数
                </th>
                <th>
                <s:property value="applys.famMemNum" />
                </th>
            </tr>
            <tr>
                <th>
                    残疾情况
                </th>
                <th>
                <s:property value="applys.disability" />
                </th>
            </tr>
            <tr>
                <th>
                    残疾证号
                </th>
                <th>
                <s:property value="applys.disabCardNum" />
                </th>
            </tr>
            <tr>
                <th>
                    家庭人均收入
                </th>
                <th>
                <s:property value="applys.perIncome" />
                </th>
            </tr>
            <tr>
                <th>
                    社会保险
                </th>
                <s:if test="plan.socialSecurity==0">
                    <th></th>
                </s:if>
                <s:if test="plan.socialSecurity==1">
                    <th>申请中</th>>
                </s:if>
                <s:if test="plan.socialSecurity==2">
                    <th>申请成功</th>
                </s:if>
            </tr>
            <tr>
                <th>
                    社会救助福利补贴
                </th>
                <s:if test="plan.socialAssistance==0">
                    <th></th>
                </s:if>
                <s:if test="plan.socialAssistance==1">
                    <th>申请中</th>
                </s:if>
                <s:if test="plan.socialAssistance==2">
                    <th>申请成功</th>
                </s:if>
            </tr>
            <tr>
                <th>
                    托养服务
                </th>
                <s:if test="plan.fosterService==0">
                    <th></th>
                </s:if>
                <s:if test="plan.fosterService==1">
                    <th>申请中</th>
                </s:if>
                <s:if test="plan.fosterService==2">
                    <th>申请成功</th>
                </s:if>
            </tr>
            <tr>
                <th>
                    康复医疗
                </th>
                <s:if test="plan.rehabilitation==0">
                    <th></th>
                </s:if>
                <s:if test="plan.rehabilitation==1">
                    <th>申请中</th>
                </s:if>
                <s:if test="plan.rehabilitation==2">
                    <th>申请成功</th>
                </s:if>
            </tr>
            <tr>
                <th>
                    无障碍改造
                </th>
                <s:if test="plan.disabReconst==0">
                    <th></th>
                </s:if>
                <s:if test="plan.disabReconst==1">
                    <th>申请中</th>
                </s:if>
                <s:if test="plan.disabReconst==2">
                    <th>申请成功</th>
                </s:if>
            </tr>
            <tr>
                <th>
                    教育培训
                </th>
                <s:if test="plan.education==0">
                    <th></th>
                </s:if>
                <s:if test="plan.education==1">
                    <th>申请中</th>
                </s:if>
                <s:if test="plan.education==2">
                    <th>申请成功</th>
                </s:if>
            </tr>
            <tr>
                <th>
                    就业
                </th>
                <s:if test="plan.job==0">
                    <th></th>
                </s:if>
                <s:if test="plan.job==1">
                    <th>申请中</th>
                </s:if>
                <s:if test="plan.job==2">
                    <th>申请成功</th>
                </s:if>
            </tr>
            <tr>
                <th>
                    扶贫
                </th>
                <s:if test="plan.privation==0">
                    <th></th>
                </s:if>
                <s:if test="plan.privation==1">
                    <th>申请中</th>
                </s:if>
                <s:if test="plan.privation==2">
                    <th>申请成功</th>
                </s:if>
            </tr>

            <tr>
                <th>
                    维权
                </th>
                <s:if test="plan.legalRight==0">
                    <th></th>
                </s:if>
                <s:if test="plan.legalRight==1">
                    <th>申请中</th>
                </s:if>
                <s:if test="plan.legalRight==2">
                    <th>申请成功</th>
                </s:if>
            </tr>
            <tr>
                <th>
                    改善基本生活条件
                </th>
                <s:if test="plan.improlivCondition==0">
                    <th></th>
                </s:if>
                <s:if test="plan.improlivCondition==1">
                    <th>申请中</th>
                </s:if>
                <s:if test="plan.improlivCondition==2">
                    <th>申请成功</th>
                </s:if>
            </tr>
    </div>
</div>
<div class="footer"></div>
</body>
</html>

