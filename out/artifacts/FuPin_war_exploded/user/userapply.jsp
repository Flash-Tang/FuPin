<%--
  Created by IntelliJ IDEA.
  User: panxi
  Date: 2017/7/10
  Time: 17:07
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
    <div class="top"><a href="<%=request.getContextPath()%>/user/user.jsp"><img class="logo" src="<%=request.getContextPath()%>/user/images/logo.jpg" /></a>
        <ul class="nav">
            <li><a href="<%=request.getContextPath()%>/user/userinfo.jsp">������Ϣ</a></li>
            <li class="seleli"><a href="<%=request.getContextPath()%>/user/userapply.jsp">������</a></li>
            <li><a href="<%=request.getContextPath()%>/user/usertrack.jsp">���׷��</a></li>
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
    <center>
    <div class="mainbody">
        <div class="currmenu">
            <ul class="rig_nav">
                <li class="rig_seleli"><a href="#">��ǰ</a><span> x </span></li>
                <li><a href="#">������</a></li>
            </ul>
        </div>
        <div class="myconment" id="loader"style="width: 80%;">

            <div class="container">
                <div class="public-nav">����ǰ��λ�ã�<a href="">������Ϣ���</a></div>
                <div class="public-content">
                    <div class="public-content-header">
                        <h3>ƶ����������Ϣ��</h3>
                    </div>
                    <div class="public-content-cont">
                        <form action="apply" method="post">
                            <div class="form-group">
                                <label for="">�û��˺�</label>
                                <input class="form-input-txt" type="text" name="user.username" value="" />
                            </div>

                            <div class="form-group">
                                <label for="">����</label>
                                <input class="form-input-txt" type="text" name="apply.name" value="" />
                            </div>

                            <div class="form-group">
                                <label for="">�Ա�</label>
                                <p>
                                    <label>
                                        <input type="radio" name="apply.sex" value="��" id="RadioGroup1_0">
                                        ��</label>
                                    <label>
                                        <input type="radio" name="apply.sex" value="Ů" id="RadioGroup1_1">
                                        Ů</label>

                                </p>
                            </div>

                            <div class="form-group">
                                <label for="">����</label>
                                <input class="form-input-txt" type="text" name="apply.nation" value="" />
                            </div>

                            <div class="form-group">
                                <label for="">��ϵ��ʽ</label>
                                <input class="form-input-txt" type="text" name="apply.action" value="" />
                            </div>

                            <div class="form-group">
                                <label for="">���֤��</label>
                                <input class="form-input-txt" type="text" name="apply.idCardNum" value="" />
                            </div>

                            <div class="form-group">
                                <label for="">�м�״��</label>
                                <select name="apply.disability" class="form-select">
                                    <option value="�޲м�">�޲м�</option>
                                    <option value="��΢�м�">��΢�м�</option>
                                    <option value="�ضȲм�">�ضȲм�</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="">�м�֢���</label>
                                <input class="form-input-txt" type="text" name="apply.disabCardNum" value="" />
                            </div>
                            <div class="form-group">
                                <label for="">��ͥ����</label>
                                <select name="apply.famMemNum" class="form-select">
                                    <option value="1">һ��</option>
                                    <option value="2">����</option>
                                    <option value="3">����</option>
                                    <option value="4">����</option>
                                    <option value="5">����</option>
                                    <option value="6">����</option>
                                    <option value="7">����</option>
                                    <option value="8">����</option>
                                    <option value="9">����</option>
                                    <option value="10">ʮ�˼�����</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="">�������ڵ�</label>
                                <input class="form-input-txt" type="text" name="apply.placeOfDemicile" value="" />
                            </div>

                            <div class="form-group">
                                <label for="">��ͥ�˾�����</label>
                                <input class="form-input-txt" type="text" name="apply.perIncome" value="" />
                            </div>
                            <div class="form-group">
                                <label for="">�ܽ����̶�</label>
                                <select name="apply.education" class="form-select">
                                    <option value="δ�ܽ���">δ�ܽ���</option>
                                    <option value="Сѧ">Сѧ</option>
                                    <option value="����">����</option>
                                    <option value="����">����</option>
                                    <option value="���Ƽ�����">���Ƽ�����</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="">����״��</label>
                                <p>
                                    <label>
                                        <input type="radio" name="apply.marriage" value="�ѻ�" id="RadioGroup1_0">
                                        �ѻ�</label>
                                    <label>
                                        <input type="radio" name="apply.marriage" value="δ��" id="RadioGroup1_1">
                                        δ��</label>

                                </p>
                            </div>

                            <div class="form-group">
                                <label for="">��ͥסַ</label>
                                <input class="form-input-txt" type="text" name="apply.address" value="" />
                            </div>
<%--
                            --------------
                            <div class="form-group">
                                <label for="">��ᱣ��</label>
                                <p>
                                    <label >
                                        <input  type="radio" name="demand.socialSecurity" value="��" id="RadioGroup1_0">
                                        ��</label>
                                    <label>
                                        <input type="radio" name="demand.socialSecurity" value="��" id="RadioGroup1_1">
                                        ��</label>

                                </p>
                            </div>
                            ------------------------
                            <div class="form-group">
                                <label for="">��������������</label>
                                <p>
                                    <label >
                                        <input  type="radio" name="demand.socialAssistance" value="��Ҫ" id="RadioGroup1_0">
                                        ��Ҫ</label>
                                    <label>
                                        <input type="radio" name="demand.socialAssistance" value="����Ҫ" id="RadioGroup1_1">
                                        ����Ҫ</label>

                                </p>
                            </div>
                            ------------------------
                            <div class="form-group">
                                <label for="">��������</label>
                                <label >
                                    <input  type="radio" name="demand.fosterService" value="��Ҫ" id="RadioGroup1_0">
                                    ��Ҫ</label>
                                <label>
                                    <input type="radio" name="demand.fosterService" value="����Ҫ" id="RadioGroup1_1">
                                    ����Ҫ</label>

                            </div>
                            ------------------------
                            <div class="form-group">
                                <label for="">����</label>

                                <label >
                                    <input  type="radio" name="demand.rehabilitation" value="��Ҫ" id="RadioGroup1_0">
                                    ��Ҫ</label>
                                <label>
                                    <input type="radio" name="demand.rehabilitation" value="����Ҫ" id="RadioGroup1_1">
                                    ����Ҫ</label>
                            </div>
                            ------------------------
                            <div class="form-group">
                                <label for="">���ϰ�����</label>
                                <p>
                                    <label >
                                        <input  type="radio" name="demand.disabReconst" value="��Ҫ" id="RadioGroup1_0">
                                        ��Ҫ</label>
                                    <label>
                                        <input type="radio" name="demand.disabReconst" value="����Ҫ" id="RadioGroup1_1">
                                        ����Ҫ</label>

                                </p>
                            </div>
                            ------------------------
                            <div class="form-group">
                                <label for="">�����Ļ�����</label>
                                <p>
                                    <label >
                                        <input  type="radio" name="demand.education" value="��Ҫ" id="RadioGroup1_0">
                                        ��Ҫ</label>
                                    <label>
                                        <input type="radio" name="demand.education" value="����Ҫ" id="RadioGroup1_1">
                                        ����Ҫ</label>

                                </p>
                            </div>
                            ------------------------
                            <div class="form-group">
                                <label for="">��ҵ</label>
                                <p>
                                    <label >
                                        <input  type="radio" name="demand.job" value="��Ҫ" id="RadioGroup1_0">
                                        ��Ҫ</label>
                                    <label>
                                        <input type="radio" name="demand.job" value="����Ҫ" id="RadioGroup1_1">
                                        ����Ҫ</label>

                                </p>
                            </div>
                            ------------------------
                            <div class="form-group">
                                <label for="">��ƶ</label>
                                <p>
                                    <label >
                                        <input  type="radio" name="demand.privation" value="��Ҫ" id="RadioGroup1_0">
                                        ��Ҫ</label>
                                    <label>
                                        <input type="radio" name="demand.privation" value="����Ҫ" id="RadioGroup1_1">
                                        ����Ҫ</label>

                                </p>
                            </div>
                            ------------------------
                            <div class="form-group">
                                <label for="">άȨ</label>
                                <p>
                                    <label >
                                        <input  type="radio" name="demand.legalRight" value="��Ҫ" id="RadioGroup1_0">
                                        ��Ҫ</label>
                                    <label>
                                        <input type="radio" name="demand.legalRight" value="����Ҫ" id="RadioGroup1_1">
                                        ����Ҫ</label>

                                </p>
                            </div>
                            ------------------------
                            <div class="form-group">
                                <label for="">���ƻ�����������</label>
                                <p>
                                    <label >
                                        <input  type="radio" name="demand.improlivCondition" value="��Ҫ" id="RadioGroup1_0">
                                        ��Ҫ</label>
                                    <label>
                                        <input type="radio" name="demand.improlivCondition" value="����Ҫ" id="RadioGroup1_1">
                                        ����Ҫ</label>

                                </p>
                            </div>
--%>
                            <div class="form-group" style="margin-left:250px;">
                                <input type="submit" class="sub-btn" value="��  ��" />
                                <input type="reset" class="sub-btn" value="��  ��" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
</div>
    </center>
<div class="footer"></div>
</body>
</html>
