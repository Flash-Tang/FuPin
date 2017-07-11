<%--
  Created by IntelliJ IDEA.
  User: panxi
  Date: 2017/7/10
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="精准扶贫信息化管理平台" />
    <title>精准扶贫信息化管理平台</title>
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/user/css/css.css" />
</head>
<body>
<div class="header">
    <div class="top"><a href="<%=request.getContextPath()%>/user/user.jsp"><img class="logo" src="<%=request.getContextPath()%>/user/images/logo.jpg" /></a>
        <ul class="nav">
            <li><a href="<%=request.getContextPath()%>/user/userinfo.jsp">个人信息</a></li>
            <li class="seleli"><a href="<%=request.getContextPath()%>/user/userapply.jsp">申请帮扶</a></li>
            <li><a href="<%=request.getContextPath()%>/user/usertrack.jsp">帮扶追踪</a></li>
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
    <center>
    <div class="mainbody">
        <div class="currmenu">
            <ul class="rig_nav">
                <li class="rig_seleli"><a href="#">当前</a><span> x </span></li>
                <li><a href="#">申请帮扶</a></li>
            </ul>
        </div>
        <div class="myconment" id="loader"style="width: 80%;">

            <div class="container">
                <div class="public-nav">您当前的位置：<a href="">基本信息添加</a></div>
                <div class="public-content">
                    <div class="public-content-header">
                        <h3>贫困户基本信息表</h3>
                    </div>
                    <div class="public-content-cont">
                        <form action="apply" method="post">
                            <div class="form-group">
                                <label for="">用户账号</label>
                                <input class="form-input-txt" type="text" name="user.username" value="" />
                            </div>

                            <div class="form-group">
                                <label for="">姓名</label>
                                <input class="form-input-txt" type="text" name="applys.name" value="" />
                            </div>

                            <div class="form-group">
                                <label for="">性别</label>
                                <p>
                                    <label>
                                        <input type="radio" name="applys.sex" value="male" id="RadioGroup1_0">
                                        男</label>
                                    <label>
                                        <input type="radio" name="applys.sex" value="female" id="RadioGroup1_1">
                                        女</label>

                                </p>
                            </div>

                            <div class="form-group">
                                <label for="">民族</label>
                                <input class="form-input-txt" type="text" name="applys.nation" value="" />
                            </div>

                            <div class="form-group">
                                <label for="">联系方式</label>
                                <input class="form-input-txt" type="text" name="applys.telephone" value="" />
                            </div>

                            <div class="form-group">
                                <label for="">身份证号</label>
                                <input class="form-input-txt" type="text" name="applys.idCardNum" value="" />
                            </div>

                            <div class="form-group">
                                <label for="">残疾状况</label>
                                <select name="applys.disability" class="form-select">
                                    <option value="无残疾">无残疾</option>
                                    <option value="轻微残疾">轻微残疾</option>
                                    <option value="重度残疾">重度残疾</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="">残疾症编号</label>
                                <input class="form-input-txt" type="text" name="applys.disabCardNum" value="" />
                            </div>
                            <div class="form-group">
                                <label for="">家庭人数</label>
                                <input type="text" name="applys.famMemNum" value=""/>
                            </div>
                            <div class="form-group">
                                <label for="">户籍所在地</label>
                                <input class="form-input-txt" type="text" name="applys.placeOfDemicile" value="" />
                            </div>

                            <div class="form-group">
                                <label for="">家庭人均收入</label>
                                <input class="form-input-txt" type="text" name="applys.perIncome" value="" />
                            </div>
                            <div class="form-group">
                                <label for="">受教育程度</label>
                                <select name="applys.education" class="form-select">
                                    <option value="未受教育">未受教育</option>
                                    <option value="小学">小学</option>
                                    <option value="初中">初中</option>
                                    <option value="高中">高中</option>
                                    <option value="本科及以上">本科及以上</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="">婚姻状况</label>
                                <p>
                                    <label>
                                        <input type="radio" name="applys.marriage" value="已婚" id="RadioGroup1_0">
                                        已婚</label>
                                    <label>
                                        <input type="radio" name="applys.marriage" value="未婚" id="RadioGroup1_1">
                                        未婚</label>

                                </p>
                            </div>

                            <div class="form-group">
                                <label for="">家庭住址</label>
                                <input class="form-input-txt" type="text" name="applys.address" value="" />
                            </div>
                            --------------
                            <div class="form-group">
                                <label for="">社会保险</label>
                                <p>
                                    <label >
                                        <input  type="radio" name="demand.socialSecurity" value= "1" id="RadioGroup1_0">
                                        有</label>
                                    <label>
                                        <input type="radio" name="demand.socialSecurity" value= "0" id="RadioGroup1_1">
                                        无</label>

                                </p>
                            </div>
                            ------------------------
                            <div class="form-group">
                                <label for="">社会救助福利补贴</label>
                                <p>
                                    <label >
                                        <input  type="radio" name="demand.socialAssistance" value="1" id="RadioGroup1_0">
                                        需要</label>
                                    <label>
                                        <input type="radio" name="demand.socialAssistance" value="0" id="RadioGroup1_1">
                                        不需要</label>

                                </p>
                            </div>
                            ------------------------
                            <div class="form-group">
                                <label for="">托养服务</label>
                                <label >
                                    <input  type="radio" name="demand.fosterService" value="1" id="RadioGroup1_0">
                                    需要</label>
                                <label>
                                    <input type="radio" name="demand.fosterService" value="0" id="RadioGroup1_1">
                                    不需要</label>

                            </div>
                            ------------------------
                            <div class="form-group">
                                <label for="">康复</label>

                                <label >
                                    <input  type="radio" name="demand.rehabilitation" value="1" id="RadioGroup1_0">
                                    需要</label>
                                <label>
                                    <input type="radio" name="demand.rehabilitation" value="0" id="RadioGroup1_1">
                                    不需要</label>
                            </div>
                            ------------------------
                            <div class="form-group">
                                <label for="">无障碍改造</label>
                                <p>
                                    <label >
                                        <input  type="radio" name="demand.disabReconst" value="1" id="RadioGroup1_0">
                                        需要</label>
                                    <label>
                                        <input type="radio" name="demand.disabReconst" value="0" id="RadioGroup1_1">
                                        不需要</label>

                                </p>
                            </div>
                            ------------------------
                            <div class="form-group">
                                <label for="">教育文化体育</label>
                                <p>
                                    <label >
                                        <input  type="radio" name="demand.education" value="1" id="RadioGroup1_0">
                                        需要</label>
                                    <label>
                                        <input type="radio" name="demand.education" value="0" id="RadioGroup1_1">
                                        不需要</label>

                                </p>
                            </div>
                            ------------------------
                            <div class="form-group">
                                <label for="">就业</label>
                                <p>
                                    <label >
                                        <input  type="radio" name="demand.job" value="1" id="RadioGroup1_0">
                                        需要</label>
                                    <label>
                                        <input type="radio" name="demand.job" value="0" id="RadioGroup1_1">
                                        不需要</label>

                                </p>
                            </div>
                            ------------------------
                            <div class="form-group">
                                <label for="">扶贫</label>
                                <p>
                                    <label >
                                        <input  type="radio" name="demand.privation" value="1" id="RadioGroup1_0">
                                        需要</label>
                                    <label>
                                        <input type="radio" name="demand.privation" value="0" id="RadioGroup1_1">
                                        不需要</label>

                                </p>
                            </div>
                            ------------------------
                            <div class="form-group">
                                <label for="">维权</label>
                                <p>
                                    <label >
                                        <input  type="radio" name="demand.legalRight" value="1" id="RadioGroup1_0">
                                        需要</label>
                                    <label>
                                        <input type="radio" name="demand.legalRight" value="0" id="RadioGroup1_1">
                                        不需要</label>

                                </p>
                            </div>
                            ------------------------
                            <div class="form-group">
                                <label for="">改善基本生活条件</label>
                                <p>
                                    <label >
                                        <input  type="radio" name="demand.improlivCondition" value="1" id="RadioGroup1_0">
                                        需要</label>
                                    <label>
                                        <input type="radio" name="demand.improlivCondition" value="0" id="RadioGroup1_1">
                                        不需要</label>

                                </p>
                            </div>
                            <div class="form-group" style="margin-left:250px;">
                                <input type="submit" class="sub-btn" value="提  交" />
                                <input type="reset" class="sub-btn" value="重  置" />
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
