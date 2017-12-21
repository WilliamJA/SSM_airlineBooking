<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2017/6/28
  Time: 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="information-content">
    <p class="bread-mu">
        <a href="">首页</a>
        <i></i>
        <a href="">我的账户</a>
        <i></i>
        <a href="">账户信息管理</a>
        <i></i>
    </p>
    <div>
        <table class="audit-table">
            <tbody>
            <tr>
                <th>会员等级</th>
                <td>普通卡</td>
            </tr>
            <tr>
                <th>身份证卡</th>
                <td>
                    <s:iterator value="#session.user" status="statu">
                        <s:property value="idCard" />
                    </s:iterator>
                </td>
            </tr>
            <tr>
                <th>手机号码</th>
                <td>
                    <s:iterator value="#session.user" var="user" status="statu">
                        <s:if test="#user.phoneNumber != null">
                            <s:property value="#user.phoneNumber" />
                        </s:if>
                        <s:else>
                            --
                        </s:else>
                    </s:iterator>
                </td>
            </tr>
            <tr>
                <th>电子邮箱</th>
                <td>
                    <s:iterator value="#session.user" var="user" status="statu">
                        <s:if test="#user.email != null">
                            <s:property value="#user.email" />
                        </s:if>
                        <s:else>
                            --
                        </s:else>
                    </s:iterator>
                </td>
            </tr>
            </tbody>
        </table>

        <div class="open info">
            <span>个人信息设置</span>
            <i></i>
        </div>
        <div class="open-content update-info">
            <form id="update-form">
                <ul>
                    <%
                        List list = (List)session.getAttribute("user");
                        Users user = (Users) list.get(0);
                        String userName = user.getChinesSurname() + user.getChineseName();
                        String idCard = user.getIdCard();
                    %>
                    <li>
                        <label>姓名：</label>
                        <input type="text" readonly="true" value="<%=userName%>">
                        <span>不可更改</span>
                    </li>
                    <li>
                        <label>身份证号码：</label>
                        <input type="text" readonly="true" value="<%=idCard%>">
                        <span>不可更改</span>
                    </li>
                    <li>
                        <label>固定电话：</label>
                        <input type="text" placeholder="区号" style="width: 102px" name="areaCode">
                        <input type="text" placeholder="座机号码" name="landline">
                    </li>
                    <li>
                        <label>所属地区：</label>
                        <input type="text" placeholder="省/直辖市" name="province">
                        <input type="text" placeholder="市" name="city">
                    </li>
                    <li>
                        <label></label>
                        <input type="text" placeholder="请输入街区/门牌号码等详细地址" style="width: 480px;" name="address">
                    </li>
                    <li>
                        <label>邮编：</label>
                        <input type="text" placeholder="邮政编码" name="zipCode">
                    </li>
                    <li>
                        <label></label>
                        <a href="" class="update-btn">保存</a>
                    </li>
                </ul>
            </form>
            <!--保存账户信息提示S-->
            <div class="update-success">
                <span></span>
                <div class="dialog-title">
                    <div></div>
                    <p>账户信息保存成功！</p>
                </div>
                <p class="dialog-text">点击【确定】刷新页面。</p>
                <div class="btn-con">
                    <a href="" class="submit-btn">确定</a>
                </div>
            </div>
            <!--保存账户信息提示E-->
        </div>
        <div class="open psw">
            <span>修改登录密码</span>
            <i></i>
        </div>
        <div class="open-content update-psw">
            <form id="alter-psw-form">
                <ul>
                    <li>
                        <label>
                            <span>*</span>原始密码：
                        </label>
                        <input type="password" placeholder="8到16个字符，需包含数字+字母" name="oldPsw">
                        <span>
                                </span>
                    </li>
                    <li>
                        <label>
                            <span>*</span>新密码：
                        </label>
                        <input type="password" placeholder="8到16个字符，需包含数字+字母" name="newPsw">
                        <span>
                                </span>
                    </li>
                    <li>
                        <label>
                            <span>*</span>确认密码：
                        </label>
                        <input type="password" placeholder="8到16个字符，需包含数字+字母" name="confirmNewPsw">
                        <span>
                        </span>
                    </li>
                    <li>
                        <label></label>
                        <a href="" class="alter-psw-btn submit-btn">保存</a>
                    </li>
                </ul>
            </form>
            <!--修改密码信息提示S-->
            <div class="alert-success">
                <span></span>
                <div class="dialog-title">
                    <div></div>
                    <p>密码修改成功！</p>
                </div>
                <p class="dialog-text">点击【确定】刷新页面。</p>
                <div class="alter-con">
                    <a href="" class="submit-btn">确定</a>
                </div>
            </div>
            <!--修改密码信息提示E-->
        </div>
    </div>
</div>
<div class="overlay"></div>
