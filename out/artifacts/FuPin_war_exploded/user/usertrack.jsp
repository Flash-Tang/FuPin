<%--
  Created by IntelliJ IDEA.
  User: panxi
  Date: 2017/7/10
  Time: 17:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gbk" />
    <meta name="description" content="��׼��ƶ��Ϣ������ƽ̨" />
    <title>��׼��ƶ��Ϣ������ƽ̨</title>
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/user/css/css.css" />
</head>
<body>
<div class="header">
    <div class="top"><a href="<%=request.getContextPath()%>/getMessage.action"><img class="logo" src="<%=request.getContextPath()%>/user/images/logo.jpg" /></a>
        <ul class="nav">
            <li><a href="<%=request.getContextPath()%>/user/userapply.jsp">������</a></li>
            <li class="seleli"><a href="<%=request.getContextPath()%>/user/usertrack.jsp">���׷��</a></li>
            <li><a href="<%=request.getContextPath()%>/user/userfeedback.jsp">������Ϣ</a></li>
            <li><a href="<%=request.getContextPath()%>/index.jsp">������ҳ</a></li>
        </ul>
    </div>
</div>
<div class="container">
    <div class="leftbar">
        <div class="lm01"> <img class="peptx" src="<%=request.getContextPath()%>/user/images/user.png" />
            <div class="pepdet">
                <p class="pepname">��ӭ��������ͨ�û�</p>
            </div>
            <div class="clear"></div>
        </div>
        <div class="lm02">
            <div class="title"><img class="icon" src="<%=request.getContextPath()%>/user/images/dataicon.jpg" />
                <h2>����</h2>
            </div>
            <div class="detail"> <img class="" src="<%=request.getContextPath()%>/user/images/kj_01.jpg" /> </div>
        </div>
        <div class="lm03">
            <div class="title"><img style="padding-right:5px;" class="icon" src="<%=request.getContextPath()%>/user/images/weaicon.jpg" />
                <h2>����</h2>
            </div>
            <div class="detail"> <img class="" src="<%=request.getContextPath()%>/user/images/kj_02.jpg" /> </div>
        </div>
    </div>
    <div class="mainbody">
        <div class="currmenu">
            <ul class="rig_nav">
                <li class="rig_seleli"><a href="#">��ǰ</a><span> x </span></li>
                <li><a href="#">���׷��</a></li>
            </ul>
        </div>
        <br><br><br><br>
        <div style="font-size:18px; text-align:center">����д�����û���:</div>
        <br>
        <form action="usertrack.action" method="post">
            <div border="2" align="center" bordercolor="#6666FF">
                <input type="text" name="user.username"/>
                <input type="submit"/>
            </div>
        </form>
    </div>
</div>
<div class="footer"></div>
</body>
</html>
