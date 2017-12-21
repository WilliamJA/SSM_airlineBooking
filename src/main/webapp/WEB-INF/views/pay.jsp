<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2017/7/2
  Time: 14:15
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
                <span class="bg-head"></span>
                <p>
                    <b>4</b>
                    <span>填写信息</span>
                </p>
                <span class="bg-foot"></span>
            </li>
            <li>
                <span class="bg-head" style="background-position: -28px 0"></span>
                <p style="background-color: #d7000f">
                    <b>5</b>
                    <span style="color: #fff">订单支付</span>
                </p>
                <span class="bg-foot" style="background-position: 0 -38px"></span>
            </li>
            <li>
                <span class="bg-head"></span>
                <p>
                    <b>6</b>
                    <span>支付完成</span>
                </p>
            </li>
        </ul>

        <div class="pay-result">
            <div class="book-res">
                <span class="right-rs">预订成功！请尽快支付，</span>您的订单金额为:
                <p>
                    <i>￥</i>
                    <span>1030</span>
                </p>
            </div>
            <ul>
                <li>
                    <span>1.</span>
                    <p>请您务必尽快完成支付，超时订单将被取消且无法进行支付。</p>
                </li>
                <li>
                    <span>2.</span>
                    <p>特殊产品支付时以具体产品规则为准。</p>
                </li>
                <li>
                    <span>3.</span>
                    <p>使用银行卡支付需开通网上银行并办理口令卡、U-KEY或电子密码器等，具体支付限额以发卡银行规定为准。</p>
                </li>
                <li>
                    <span>4.</span>
                    <p>请您在支付成功后，注意查收通知您出票成功的短信或进入“订单管理”页面查看订单状态是否为“已出票”并有876开头的13位数字票号。</p>
                </li>
            </ul>
        </div>
        <p class="order-nums">订单编号：201706201307512685</p>
        <div class="order-bound">
            <div class="route-item">
                <div class="route-ride">
                    <span>单程</span>
                </div>
                <div class="air-flight">
                    <img src="../../static/image/3u.png" alt="">
                    <span>3U8548</span>
                </div>
                <div class="leaveCity-arrival-City">
                    <span>北京首都</span>
                    <div>
                        <i></i>
                    </div>
                    <span>四川双流</span>
                </div>
                <div class="time-airport">
                    <p>
                        <span>2017-06-30  06:25</span>北京首都国际机场，T3航站楼
                    </p>
                    <p>
                        <span>2017-06-30  09:35</span>成都双流机场，T1航站楼
                    </p>
                </div>
            </div>
            <div class="guest-info">
                <table class="order-info-table">
                    <tr class="info-tr">
                        <th class="dw1">
                            <span>姓名</span>
                        </th>
                        <th class="dw2">旅客类型</th>
                        <th class="dw3">证件信息</th>
                        <th class="dw4">会员卡号</th>
                        <th class="dw5">附加服务</th>
                        <th class="dw6">支付总额</th>
                    </tr>
                    <tr class="info-tr">
                        <td>
                            <span>张明明</span>
                        </td>
                        <td>成人</td>
                        <td>身份证622827199812587528</td>
                        <td>-</td>
                        <td>-</td>
                        <td>
                                <span class="ticket-price c1">
                                    <i>￥</i>1030
                                </span>
                        </td>
                    </tr>
                </table>
                <table class="order-info-table user-contact">
                    <tr class="info-tr">
                        <th class="dw1">
                            <span>联系人姓名</span>
                        </th>
                        <th class="dw2"></th>
                        <th class="dw3">移动电话</th>
                        <th class="dw4">固定电话</th>
                        <th class="dw5">电子邮箱</th>
                        <th class="dw6"></th>
                    </tr>
                    <tr class="info-tr">
                        <td>
                            <span>张明明</span>
                        </td>
                        <td></td>
                        <td>18309346731</td>
                        <td>-</td>
                        <td>1119290792@qq.com</td>
                        <td></td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="pay-bank">
            <div class="payment">
                <ul>
                    <li>快捷支付</li>
                    <li>第三方支付</li>
                    <li>网上银行</li>
                </ul>
                <div>
                    <ul>
                        <li>
                            <label>
                                <input type="radio">
                                <img src="../../static/image/alipayqr.gif" alt="支付宝扫码">
                            </label>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="check-pay">
            <a href="">确认并支付</a>
        </div>
        <div class="placeholder"></div>
    </div>
</div>
