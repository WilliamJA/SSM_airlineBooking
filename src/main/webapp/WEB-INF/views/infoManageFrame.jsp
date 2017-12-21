<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2017/6/28
  Time: 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="information">
    <aside>
        <ul class="aside-nav">
            <li>
                <div class="user-img">
                    <img src="../../static/image/user-image.png" alt="用户贴图">
                    <span>，您好！</span>
                </div>
            </li>
            <li>账户信息管理</li>
            <li>常用乘机人管理</li>
            <li>优惠券管理</li>
            <li>会员管理</li>
            <li>里程管理</li>
        </ul>
    </aside>
    <jsp:include page="${requestScope.option}" />
</div>
