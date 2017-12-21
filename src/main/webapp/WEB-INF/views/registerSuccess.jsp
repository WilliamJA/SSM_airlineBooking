<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2017/6/24
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="success-box">
    <div class="success">
        <div></div>
        <p>恭喜您 , 操作成功 !</p>
        <div class="info">
            <p>注册网站用户成功，您的登录账号为：
                <span>
                    <s:property value="#session.userName" />
                </span>，</p>
            <p>使用该账号及密码也可以登录常旅客俱乐部网站。</p>
        </div>
        <a href="${pageContext.request.contextPath}/indexPage.action">返回首页</a>
    </div>
</div>

