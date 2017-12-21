<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2017/7/2
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="list">
    <div class="list-content">
        <ul>
            <li>
                <p>
                    <b>1</b>
                    <span>查询航班</span>
                </p>
                <span class="bg-foot"></span>
            </li>
            <li>
                <span class="bg-head"></span>
                <p>
                    <b>2</b>
                    <span>选择航班</span>
                </p>

                <span class="bg-foot"></span>
            </li>
            <li>
                <span class="bg-head"></span>
                <p>
                    <b>3</b>
                    <span>航班概况</span>
                </p>
                <span class="bg-foot"></span>
            </li>
            <li>
                <span class="bg-head" style="background-position: -28px 0"></span>
                <p style="background-color: #d7000f">
                    <b>4</b>
                    <span style="color: #ffffff">填写信息</span>
                </p>
                <span class="bg-foot" style="background-position: 0 -38px"></span>
            </li>
            <li>
                <span class="bg-head"></span>
                <p>
                    <b>5</b>
                    <span>订单支付</span>
                </p>
                <span class="bg-foot"></span>
            </li>
            <li>
                <span class="bg-head"></span>
                <p>
                    <b>6</b>
                    <span>支付完成</span>
                </p>
            </li>
        </ul>

        <!--选择机票后添加联系人信息-->
        <div class="area-title">
            <h2>填写旅客信息</h2>
            <div class="swap">
                <form action="" method="post">
                <div class="frame-hd">
                    <h3>乘机人1（成人）</h3>
                    <ul>
                        <li>
                            <label>
                                <span>*</span>姓名：
                            </label>
                            <input type="text" name="confirmName" value="">
                            <span></span>
                        </li>
                        <li>
                            <label>
                                <span>*</span>身份证号码：
                            </label>
                            <input type="text" name="confirmIdCard" value="">
                            <span></span>
                        </li>
                    </ul>
                </div>
                <div class="frame-hd">
                    <h3>联系人信息</h3>
                    <ul>
                        <li>
                            <label>
                                <span>*</span>联系人姓名：
                            </label>
                            <input type="text" name="confirmConnection">
                            <span></span>
                        </li>
                        <li>
                            <label>
                                <span>*</span>移动电话：
                            </label>
                            <input type="text" name="confirmPhoneNumber">
                            <span></span>
                        </li>
                        <li>
                            <label>
                                固定电话：
                            </label>
                            <input type="text" style="width: 75px;margin-right: 5px;">
                            <input type="text" style="width: 168px;">
                        </li>
                        <li>
                            <label>
                                邮箱：
                            </label>
                            <input type="text">
                        </li>
                    </ul>
                </div>
                <p>
                    <input type="checkbox">
                    <span>我已阅读并理解
                        <a href="">《购票须知》 、《关于锂电池安全运输告旅客书》、《保险详情及条款》 、《旅客、行李运输总条件》</a>
                    </span>
                </p>
                <a class="order-submit">下一步</a>
                </form>
            </div>

            <aside>
                <div>
                    <span>总价：</span>
                    <span>
                            <span class="price">￥880</span>
                        </span>
                </div>
                <div>
                    <ul>
                        <li>成人 X 1</li>
                        <li>
                            <span>机票价格：</span>
                            <span>￥830 X 1</span>
                        </li>
                        <li>
                            <span>机建税：</span>
                            <span>￥50 X 1</span>
                        </li>
                        <li>
                            <span>燃油税：</span>
                            <span>￥0 X 1</span>
                        </li>
                        <li>
                            <span>小计：</span>
                            <span>￥830</span>
                        </li>
                    </ul>
                </div>
            </aside>
        </div>
    </div>
</div>
