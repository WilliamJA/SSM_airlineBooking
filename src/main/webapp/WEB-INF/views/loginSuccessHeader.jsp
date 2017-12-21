<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2017/6/25
  Time: 13:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <a href="index.action">
                    <img src="../../static/image/logo.png" alt="logo">
                </a>
            </h1>
            <ul class="select">
                <li>
                    <span>
                        <b></b>
                        <a href="linkmanManage.action">
                            <s:iterator value="#session.user" status="statu">
                                <s:property value="chinesSurname"/>
                                <s:property value="chineseName"/>
                            </s:iterator>
                        </a>
                    </span>
                    <ul class="layer-con">
                        <li>
                            <a href="signOut.action">退出</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="orderManage.action">我的订单</a>
                </li>
            </ul>
        </div>
    </div>
    <!--网站logo及登录注册E-->
    <!--主导航部分S-->
    <nav class="main-nav">
        <ul class="nav-list">
            <li><a href="index.action">首页</a></li>
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
<script src="../../static/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $(".select>li").eq(0).hover(function() {
            $(".layer-con").slideDown(200);
            $(this).find("span>b").css({borderColor: "transparent transparent #ffffff", marginTop: "4px"});
        },function() {
            $(".layer-con").slideUp(200);
            $(this).find("span>b").css({borderColor: " #ffffff transparent transparent", marginTop: "8px"});
        });
        });
</script>