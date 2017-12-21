<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2017/12/20
  Time: 17:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div id="register-box">
    <div class="heading">
        <h3>会员注册</h3>
        <p>已有本站会员了？<a href="${pageContext.request.contextPath}/loginPage.action">登录</a></p>
    </div>
    <form action="${pageContext.request.contextPath}/userRegister.action" method="post">
        <input type="hidden" name="sex" value="男">
        <ul>
            <li>
                <label>
                    <span>*</span>中文姓：
                </label>
                <input type="text" name="chineseSurname">
                <span></span>
            </li>
            <li>
                <label>
                    <span>*</span>中文名：
                </label>
                <input type="text" name="chineseName">
                <span></span>
            </li>
            <li>
                <label>
                    <span>*</span>英文姓：
                </label>
                <input type="text" name="englishSurname">
                <span></span>
            </li>
            <li>
                <label>
                    <span>*</span>英文名：
                </label>
                <input type="text" name="englishName">
                <span></span>
            </li>
            <li class="select-sex">
                <label>
                    <span>*</span>性别：
                </label>
                <a href=""><span>男</span>
                    <b></b>
                </a>
                <ul class="sex" style="padding: 0;margin: 0;">
                    <li style="height: 30px;padding: 0;margin: 0;border-bottom: 1px solid #dbdbdb;text-indent: 10px;">男</li>
                    <li style="height: 30px;padding: 0;margin: 0;text-indent: 10px;">女</li>
                </ul>
            </li>
            <li>
                <label>
                    <span>*</span>身份证：
                </label>
                <input type="text" name="idCard">
                <span></span>
            </li>
            <li>
                <label>
                    <span>*</span>密码：</label>
                <input type="password" name="password">
                <span></span>
            </li>
            <li>
                <label>
                    <span>*</span>确认密码：
                </label><input type="password" name="confirmPassword">
                <span></span>
            </li>
            <li>
                <label>
                    <span>*</span>电子邮件：
                </label><input type="text" name="email">
                <span></span>
            </li>
            <li>
                <label>
                    <span>*</span>移动电话：
                </label>
                <input type="text" name="phoneNumber">
                <span></span>
            </li>
            <li class="mobileCheckCode">
                <label style="width: 99px">
                    <span>*</span>短信验证码：
                </label>
                <input style="width: 155px;" type="text" name="mobileCheckCode">
                <span></span>
                <a href="" class="code-btn">发送验证码</a>
            </li>
        </ul>
    </form>
    <div class="page-btn-box">
        <div>
            <p>
                <label>
                    <input type="checkbox"> 我已阅读并理解<a href="">《会员须知》</a>
                </label>
                <a href="" class="submit-btn">提交注册</a>
            </p>
        </div>
    </div>
</div>
