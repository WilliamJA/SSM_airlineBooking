<%@ page import="java.util.List" %>
<%@ page import="java.sql.Date" %><%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2017/6/26
  Time: 18:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                <span class="bg-head" style="background-position: -28px 0"></span>
                <p style="background-color: #d7000f">
                    <b>2</b>
                    <span style="color: #fff">选择航班</span>
                </p>
                <span class="bg-foot" style="background-position: 0 -38px"></span>
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
        <ul class="flight-title">
            <li>
                <b class="city"></b>
                <span class="f">— </span><b class="city"></b>
            </li>
            <li>
                <span>/</span>
                <b class="date">2017-05-20</b>
                <span>/</span>
            </li>
            <li>
                <b class="count"> 1成人，0儿童</b>
            </li>
        </ul>
        <ul class="result-title">
            <li>航班信息</li>
            <li>优惠头等舱</li>
            <li>标准经济舱</li>
            <li>优选经济舱</li>
            <li>优选公务舱</li>
            <li>超值经济舱</li>
        </ul>

        <s:iterator value="#session.flightInfo" var="flight" status="sta">
            <ul class="result-content">
                <li>
                    <ul class="details">
                        <li>
                            <div class="details-content">
                                <div class="route-info">
                                    <img src="../../static/image/3u.png" alt="logo">
                                    <span><s:property value="#flight.flightNumber" /></span>
                                    <span><s:property value="#flight.airline" /></span>
                                    <span>
                                        <s:iterator value="#flight.aircraft" status="status" var="aircraft">
                                            <s:property value="#aircraft.aircraftType" />
                                        </s:iterator>
                                    </span>
                                </div>
                                <div class="route-start-end">
                                    <div class="route-start">
                                        <p><s:date name="#flight.leaveDateTime" format="HH:mm" /></p>
                                        <p><s:property value="#flight.leaveAirport" />
                                            <span><s:property value="#flight.leaveTerminal" /></span>
                                        </p>
                                        <p>
                                            <s:date name="#flight.leaveDateTime" format="yyyy-MM-dd" />
                                        </p>
                                    </div>
                                    <div class="route-to">
                                        <p>
                                            <%--<s:date name="%{#flight.arrivalDateTime-#flight.leaveDateTime}" format="HH:mm" />--%>
                                        </p>
                                        <i></i>
                                    </div>
                                    <div class="route-end">
                                        <p></p>
                                        <p><s:property value="#flight.arrivalAirport" />
                                            <span><s:property value="#flight.arrivalTerminal" /></span>
                                        </p>
                                        <p><s:date name="#flight.arrivalDateTime" format="yyyy-MM-dd" /></p>
                                </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="tb-td">
                                <div class="ticket-wrap">
                                    <input type="radio">
                                    <p class="ticket-price">
                                        <i class="rmb-symbol">¥</i>1690
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="tb-td">
                                <div class="ticket-wrap">
                                    <input type="radio">
                                    <p class="ticket-price">
                                        <i class="rmb-symbol">¥</i>1580
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="tb-td">
                                <div class="ticket-wrap">
                                    <input type="radio">
                                    <p class="ticket-price">
                                        <i class="rmb-symbol">¥</i>1700
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="tb-td">
                                <div class="ticket-wrap">
                                    --
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="tb-td">
                                <div class="ticket-wrap">
                                    --
                                </div>
                            </div>
                        </li>
                    </ul>
                    <div class="data-detail-item">
                        <ul>
                            <li>
                                <span>标准经济舱</span>
                            </li>
                            <li>Y舱</li>
                            <li class="li-divide"></li>
                            <li>支持里程抵扣</li>
                            <li class="li-divide"></li>
                            <li>行李额20KG</li>
                            <li class="li-divide"></li>
                            <li>午餐</li>
                        </ul>
                        <ul>
                            <li class="ticket-price">
                                <i>¥</i>1330
                            </li>
                            <li></li>
                        </ul>
                        <a href="confirmInfo.action" class="booking-btn">预订</a>
                    </div>
                </li>
            </ul>
        </s:iterator>
    </div>
</div>

