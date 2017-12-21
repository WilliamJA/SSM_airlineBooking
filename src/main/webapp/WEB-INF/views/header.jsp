<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2017/6/26
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header>
    <!--网页副导航S-->
    <nav class="vice-nav">
        <ul>
            <li class="weixin_ico"><a href="">微信</a></li>
            <li class="weibo_ico"><a href="">微博</a></li>
            <li class="service_ico"><a href="">在线客服</a></li>
            <li class="mobile_ico"><a href="">移动端</a></li>
        </ul>
    </nav>
    <!--网页副导航E-->
    <!--网站logo及登录注册S-->
    <div class="head">
        <div>
            <h1 class="logo">
                <a href="/indexPage.action">
                    <img src="${pageContext.request.contextPath}/static/image/logo.png" alt="logo">
                </a>
            </h1>
            <ul class="login">
                <c:if test="${sessionScope.userName == null}">
                    <li>
                        <a href="/loginPage.action">登录</a><span>|</span>
                    </li>
                    <li>
                        <a href="/registerPage.action">注册</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.userName != null}">
                    <li>
                        <a href="">${sessionScope.userName}</a><span>|</span>
                    </li>
                    <li>
                        <a href="">退出</a>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
    <!--网站logo及登录注册E-->
    <!--主导航部分S-->
    <nav class="main-nav">
        <ul class="nav-list">
            <li><a href="${pageContext.request.contextPath}/indexPage.action">首页</a></li>
            <li><a href="">预订管理</a></li>
            <li><a href="">优惠促销</a></li>
            <li><a href="">自助服务</a></li>
            <li><a href="">出行帮助</a></li>
            <li><a href="">会员俱乐部</a></li>
            <li><a href="">企业文化</a></li>
            <li><a href="">我的假期</a></li>
        </ul>
    </nav>
    <!--主导航部分E-->
</header>
