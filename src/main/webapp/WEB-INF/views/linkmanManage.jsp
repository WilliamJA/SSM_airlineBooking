<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2017/6/27
  Time: 17:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="information-content">
    <p class="bread-mu">
        <a href="">首页</a>
        <i></i>
        <a href="">我的账户</a>
        <i></i>
        <a href="">乘机人管理</a>
        <i></i>
    </p>
    <div class="right-tabs">
        <div>国内常用乘机人</div>
        <div>新增常用乘机人</div>
    </div>

    <div>
        <table class="cus-manaTable">
            <tbody>
            <tr>
                <th>姓名</th>
                <th>类型</th>
                <th>出生日期</th>
                <th>证件信息</th>
                <th>联系方式</th>
                <th>操作</th>
            </tr>
            <tr>
                <td>张明明</td>
                <td>成人</td>
                <td>1993.10.19</td>
                <td>身份证 622827199310190258</td>
                <td>18309346731</td>
                <td>
                    <a href="">编辑</a>
                    <a href="">删除</a>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>

<div class="embody"></div>
<div class="add-connection">
    <p class="close">
        <span></span>
    </p>
    <div class="add-froms">
        <h3>新增常用乘机人</h3>
        <div class="type">
            <p>国内常用乘机人</p>
            <p>国际常用乘机人</p>
        </div>
        <form action="">
            <input type="hidden" name="connection-type" value="成人">
            <ul>
                <li>
                    <label>
                        <span>姓名：</span>
                        <span>*</span>
                    </label>
                    <input type="text" placeholder="输入姓名需与有效证件一致" name="connection-name">
                    <span class="error">
                        </span>
                </li>
                <li>
                    <label>
                        <span>旅客类型：</span>
                        <span>*</span>
                    </label>
                    <div class="connection-type">
                        <span>成人</span>
                        <ul>
                            <li>成人</li>
                            <li>儿童</li>
                        </ul>
                        <i></i>
                    </div>
                </li>
                <li>
                    <label>
                        <span>出生日期：</span>
                    </label>
                    <input type="text" placeholder="出生日期" name="connection-birthday">
                </li>
                <li>
                    <label>
                        <span>身份证号：</span>
                        <span>*</span>
                    </label>
                    <input type="text" placeholder="身份证号码" name="connection-idCard">
                    <span class="error">
                        </span>
                </li>
                <li>
                    <label>
                        <span>会员卡号：</span>
                    </label>
                    <input type="text" placeholder="请输入对应的凭证号码">
                </li>
                <li>
                    <label>
                        <span>移动电话：</span>
                        <span>*</span>
                    </label>
                    <input style="width: 370px;" type="text" placeholder="请输入移动手机号码" name="connection-phoneNumber">
                    <span class="error">
                        </span>
                </li>
                <li>
                    <label>
                        <span>固定电话：</span>
                    </label>
                    <input type="text" style="width: 106px;">
                    <input type="text" style="width: 252px;margin-left: 10px">
                </li>
                <li>
                    <label>
                        <span>电子邮箱：</span>
                    </label>
                    <input type="text" name="connection-email">
                </li>
            </ul>
        </form>
        <a href="" class="submit-btn">保存</a>
    </div>
</div>




