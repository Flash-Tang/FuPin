<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: panxi
  Date: 2017/7/10
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gbk" />
    <meta name="description" content="��׼��ƶ��Ϣ������ƽ̨" />
    <title>��׼��ƶ��Ϣ������ƽ̨</title>
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/admin/css/css.css" />
</head>
<body>
<div class="header">
    <div class="top"> <a href="<%=request.getContextPath()%>/showAllMessage.action"><img class="logo" src="<%=request.getContextPath()%>/admin/images/logo.jpg" /></a>
        <ul class="nav">
            <li><a href="<%=request.getContextPath()%>/showAllApply.action"">��Ϣ���</a></li>
            <li><a href="<%=request.getContextPath()%>/budget.action">Ԥ�����</a></li>
            <li class="seleli"><a href="<%=request.getContextPath()%>/showAllPlan.action">�������</a></li>
            <li><a href="<%=request.getContextPath()%>/DataAnalyze.action">���ݷ���</a></li>
            <li><a href="<%=request.getContextPath()%>/showAllFeedback.action">��������</a></li>
            <li><a href="<%=request.getContextPath()%>/index.html">������ҳ</a></li>
        </ul>
    </div>
</div>
<div class="container">
    <div class="leftbar">
        <div class="lm01"> <img class="peptx" src="<%=request.getContextPath()%>/admin/images/manager.png" />
            <div class="pepdet">
                <p class="pepname">��ӭ����������Ա</p>
            </div>
            <div class="clear"></div>
        </div>
        <div class="lm02">
            <div class="title"><img class="icon" src="<%=request.getContextPath()%>/admin/images/dataicon.jpg" />
                <h2>����</h2>
            </div>
            <div class="detail"> <img class="" src="<%=request.getContextPath()%>/admin/images/kj_01.jpg" /> </div>
        </div>
        <div class="lm03">
            <div class="title"><img style="padding-right:5px;" class="icon" src="<%=request.getContextPath()%>/admin/images/weaicon.jpg" />
                <h2>����</h2>
            </div>
            <div class="detail"> <img class="" src="<%=request.getContextPath()%>/admin/images/kj_02.jpg" /> </div>
        </div>
    </div>
    <div class="mainbody">
        <div class="currmenu">
            <ul class="rig_nav">
                <li class="rig_seleli"><a href="#">��ǰ</a><span> x </span></li>
                <li><a href="#">�������</a></li>
            </ul>
        </div>
        <table border="2" align="center" bordercolor="#6666FF" width="80%">
            <tr>
                <th>
                    �û�ID
                </th>
                <th>
                    �û�����
                </th>
                <th>
                    �Ա�
                </th>
                <th>
                    �м����
                </th>
                <th>
                    �˾�����
                </th>
                <th>
                    ����
                </th>
            </tr>
            <s:iterator value="applyList">
                <tr>
                    <td align="center"><s:property value="userid" /></td>
                    <td align="center"><s:property value="name" /></td>
                    <td align="center"><s:property value="sex" /></td>
                    <td align="center"><s:property value="disability" /></td>
                    <td align="center"><s:property value="perIncome" /></td>
                    <td align="center"> <a href="showplan.action?userId=<s:property value="userid"/>">�鿴</a></td>
                </tr>
            </s:iterator>
        </table>
    </div>
</div>
<div class="footer"></div>
</body>
</html>
