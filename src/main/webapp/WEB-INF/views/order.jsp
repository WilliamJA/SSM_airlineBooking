<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2017/6/29
  Time: 20:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="order-manage-box">
    <div class="order-manage">
        <h3>订单管理</h3>
    </div>
    <form action="">
    </form>
    <div class="search-part">
        <div class="query-date1"></div>
        <div class="query-date2"></div>
        <div class="search-inputs">
            <div class="search-show">
                <span>订单日期</span>
                <input type="text" name="data1">
                <div></div>
                <input type="text" name="data2">
            </div>
        </div>
        <input type="button" class="search-btn" value="立即查询">
    </div>
    <div class="search-result">
        <table class="cus-manaTable">
            <tr>
                <th>订单编号</th>
                <th>行程</th>
                <th>出发日期</th>
                <th>订单日期</th>
                <th>票款总额</th>
                <th>订单状态</th>
            </tr>
            <tr>
                <td>
                    <a href="" class="link">201706201307512685</a>
                </td>
                <td>
                    <p>北京首都国际机场
                        <i class="i-to"></i>成都双流机场
                    </p>
                </td>
                <td>
                    <p>2017-06-30</p>
                </td>
                <td>2017-06-30</td>
                <td>
                    <p class="ticket-price">
                        <i>¥</i>1203
                    </p>
                </td>
                <td>
                    <span>等待支付</span>
                </td>
            </tr>
        </table>
    </div>
</div>


