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
    <meta name="description" content="��׼��ƶ��Ϣ������ƽ̨" />
    <title>��׼��ƶ��Ϣ������ƽ̨</title>
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/admin/css/css.css" />
</head>
<body>
<div class="header">
    <div class="top"> <a href="<%=request.getContextPath()%>/admin/admin.jsp"><img class="logo" src="<%=request.getContextPath()%>/admin/images/logo.jpg" /></a>
        <ul class="nav">
            <li><a href="<%=request.getContextPath()%>/admin/adminsearch.jsp">��Ϣ��ѯ</a></li>
            <li class="seleli"><a href="budget.action">Ԥ�����</a></li>
            <li><a href="<%=request.getContextPath()%>/admin/adminhelp.jsp">�������</a></li>
            <li><a href="<%=request.getContextPath()%>/admin/adminfeedback.jsp">��������</a></li>
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
                <li><a href="#">Ԥ�����</a></li>
            </ul>
        </div>
        <form action="updatebudget.action" method="post">
        <table border width="60">
            <tr>
                <th>ID</th>
                <th>�����ʩ</th>
                <th>����</th>
                <th>����</th>
            </tr>
            <s:iterator value="budgetlist">
                <tr>
                    <td>
                        <s:property value="measureId"/>
                    </td>
                    <td>
                        <s:property value="measureName"/>
                    </td>
                    <td>
                        <s:property value="cost"/>
                    </td>
                    <td>
                        <input type="text" name="Number" value="<s:property value="number"/>">
                    </td>
                    <td>
                    </td>
                </tr>
            </s:iterator>
        </table>
            <input type="submit" value="ȷ�ϸ���"/>
        </form>
    </div>
</div>
<div class="footer"></div>
</body>
</html>
