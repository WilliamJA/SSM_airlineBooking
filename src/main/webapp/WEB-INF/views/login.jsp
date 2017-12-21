<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2017/12/19
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="login-page">
    <div class="login-box">
        <div class="bg">
            <div class="login-form">
                <div class="login-content">
                    <h2>登录</h2>
                    <p class="message"></p>
                    <form action="loginAction.action" method="post" id="loginForm">
                        <ul>
                            <li>
                                <input type="text" placeholder="手机号码/注册邮箱" name="userName">
                            </li>
                            <li>
                                <input type="password" placeholder="密码" name="password">
                            </li>
                            <li>
                                <div class="check-code">
                                    <p class="cap-p">验证码：请点击属于<span>城市</span>的所有汉字</p>
                                    <div class="cap-pics">
                                        <c:forEach items="${requestScope.checkCode}" var="img">
                                            <span>
                                                <img src="${img}" alt="">
                                                <b></b>
                                            </span>
                                        </c:forEach>
                          <%--      <span>
                                    <img src="code.action" alt="">
                                    <b></b>
                                </span>
                                        <span>
                                   <img src="code.action" alt="">
                                    <b></b>
                                </span>
                                        <span>
                                    <img src="code.action" alt="">
                                    <b></b>
                                </span>
                                        <span>
                                   <img src="code.action" alt="">
                                    <b></b>
                                </span>
                                        <span>
                                    <img src="code.action" alt="">
                                    <b></b>
                                </span>--%>
                                    </div>
                                    <span class="cap-link">换一批</span>
                                </div>
                            </li>
                            <li class="mobileValidateCode">
                                <input type="text" placeholder="验证码" style="width: 150px" name="phoneNumberCode">
                                <a id="sendCode" class="code-btn">发送验证码</a>
                            </li>
                            <li class="login-btn">
                                <a href="" class="submit-btn">登录</a>
                                <a href="${pageContext.request.contextPath}/findPasswordPage.action">忘记密码？</a>
                                <a href="${pageContext.request.contextPath}/registerPage.action">注册会员</a>
                            </li>
                        </ul>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
