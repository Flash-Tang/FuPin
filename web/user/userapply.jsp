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
    <div class="top"><a href="<%=request.getContextPath()%>/getMessage.action"><img class="logo" src="<%=request.getContextPath()%>/user/images/logo.jpg" /></a>
        <ul class="nav">
            <li class="seleli"><a href="<%=request.getContextPath()%>/user/userapply.jsp">申请帮扶</a></li>
            <li><a href="<%=request.getContextPath()%>/user/usertrack.jsp">帮扶追踪</a></li>
            <li><a href="<%=request.getContextPath()%>/user/userfeedback.jsp">反馈信息</a></li>
            <li><a href="<%=request.getContextPath()%>/index.html">返回首页</a></li>
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
    <form action="apply.action" method="post" name="myForm">
        <br><br><br>
      <table border="2" align="center" bordercolor="#6666FF" width="80%">
        <tr> 
          <td colspan="4" bgcolor="#6666FF" align="center"> 
            <font color="#FFFFFF">请填入下列个人信息</font>
          </td>
        </tr>
        <tr> 
          <td align="center"  colspan="0" >用户账号</td>
          <td colspan="3"><input name="user.username" type="text" size="15"></td>
        </tr>
        <tr> 
          <td align="center">姓名</td>
          <td><input name="applys.name" type="text" size="15">
          </td>
           <td align="center">社会保险</td>
          <td align="center"><label>
              <input type="radio" name="demand.socialSecurity" value="1" id="RadioGroup1_0">
              有</label>
            <label>
              <input type="radio" name="demand.socialSecurity" value="0" id="RadioGroup1_1">
              无</label>
          </td>
        </tr>
        <tr> 
          <td align="center">性别</td>
          <td> <label>
              <input type="radio" name="applys.sex" value="男" id="RadioGroup1_0">
              男</label>
            <label>
              <input type="radio" name="applys.sex" value="女" id="RadioGroup1_1">
              女</label></td>
            <td align="center">托养服务</td>
          <td align="center"> <label>
              <input type="radio" name="demand.fosterService" value="1" id="RadioGroup1_0">
              需要</label>
            <label>
              <input type="radio" name="demand.fosterService" value="0" id="RadioGroup1_1">
              不需要</label></td>
        </tr>
        
        <tr>
          <td align="center">民族</td>
          <td><input name="applys.nation" type="text" size="8"></td>
          <td align="center">康复</td>
          <td align="center"> <label>
              <input type="radio" name="demand.rehabilitation" value="1" id="RadioGroup1_0">
              需要</label>
            <label>
              <input type="radio" name="demand.rehabilitation" value="0" id="RadioGroup1_1">
              不需要</label></td>
        </tr>
        <tr> 
          <td align="center">联系方式</td>
          <td> 
           <input name="applys.telephone" type="text" size="15">
          </td>
          
           <td align="center">社会救助福利补贴</td>
          <td align="center"> <label>
              <input type="radio" name="demand.socialAssistance" value="1" id="RadioGroup1_0">
              需要</label>
            <label>
              <input type="radio" name="demand.socialAssistance" value="0" id="RadioGroup1_1">
              不需要</label></td>
        </tr>
        <tr> 
          <td align="center">身份证号</td>
          <td>
            <input type="text" name="applys.idCardNum" size="15">
          </td>
           <td align="center">无障碍改造</td>
          <td align="center"> <label>
              <input type="radio" name="demand.disabReconst" value="1" id="RadioGroup1_0">
              需要</label>
            <label>
              <input type="radio" name="demand.disabReconst" value="0" id="RadioGroup1_1">
              不需要</label></td>
        </tr>
        <tr > 
          <td align="center">残疾状况</td>
          <td>
            <select name="applys.disability" class="form-select">
             <option value="无残疾">无残疾</option>
             <option value="轻微残疾">轻微残疾</option>
             <option value="重度残疾">重度残疾</option>
          </select>
          </td>
           <td align="center">教育文化体育</td>
          <td align="center"> <label>
              <input type="radio" name="demand.education" value="1" id="RadioGroup1_0">
              需要</label>
            <label>
              <input type="radio" name="demand.education" value="0" id="RadioGroup1_1">
              不需要</label></td>
        </tr>
        <tr> 
          <td align="center">残疾证编号</td>
          <td><input name="applys.disabCardNum" type="text" size="20"></td>
           <td align="center">就业</td>
          <td align="center"> <label>
              <input type="radio" name="demand.job" value="1" id="RadioGroup1_0">
              需要</label>
            <label>
              <input type="radio" name="demand.job" value="0" id="RadioGroup1_1">
              不需要</label></td>
        </tr>
        <tr> 
          <td align="center">家庭人数</td>
          <td>
                  <input name="applys.famMemNum" type="text" size="10">
          </td>
           <td align="center">扶贫</td>
          <td align="center"> <label>
              <input type="radio" name="demand.privation" value="1" id="RadioGroup1_0">
              需要</label>
            <label>
              <input type="radio" name="demand.privation" value="0" id="RadioGroup1_1">
              不需要</label></td>
        </tr>
        <tr>
          <td align="center">户籍所在地</td>
          <td><input name="applys.placeOfDemicile" type="text" size="40"></td>
          <td align="center">维权</td>
          <td align="center"> <label>
              <input type="radio" name="demand.legalRight" value="1" id="RadioGroup1_0">
              需要</label>
            <label>
              <input type="radio" name="demand.legalRight" value="0" id="RadioGroup1_1">
              不需要</label></td>
        </tr>
        <tr> 
          <td align="center">家庭人均收入</td>
          <td><input name="applys.perIncome" type="text" value="" size="10"></td>
           <td align="center">改善基本生活条件</td>
          <td align="center"> <label>
              <input type="radio" name="demand.improlivCondition" value="1" id="RadioGroup1_0">
              需要</label>
            <label>
              <input type="radio" name="demand.improlivCondition" value="0" id="RadioGroup1_1">
              不需要</label></td>
        </tr>
        <tr> 
          <td align="center">受教育程度</td>
          <td >
           <select name="applys.education" class="form-select">
            <option value="未受教育">未受教育</option>
             <option value="小学">小学</option>
             <option value="初中">初中</option>
             <option value="高中">高中</option>
             <option value="本科及以上">本科及以上</option>
          </select>
          </td>
          <td align="center">婚姻状况</td>
        <td align="center">
        <label>
              <input type="radio" name="applys.marriage" value="已婚" id="RadioGroup1_0">
              已婚</label>
            <label>
              <input type="radio" name="applys.marriage" value="未婚" id="RadioGroup1_1">
             未婚</label>
        </td>
        </tr>
         <tr> 
          <td align="center">家庭住址</td>
          <td colspan="3"><input name="applys.address" type="text" value="" size="86"></td>
        </tr>
        
        <tr > 
          <td align="center" colspan="4">
             <input type="submit" class="sub-btn" value="提  交" />
          <input type="reset" class="sub-btn" value="重  置" />
          </td>
        </tr>
      </table>
    </form>
            </div>
        </div>
</div>
    </center>
<div class="footer"></div>
</body>
</html>
