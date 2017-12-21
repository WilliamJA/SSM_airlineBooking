/**
 * Created by LENOVO on 2017/6/28.
 */
$(document).ready(function() {
    var $menu = $(".aside-nav").find("li:gt(0)");
    $menu.eq(0).css({backgroundColor:"#b2000c"});
    $menu.on("click",function() {
        switch ($(this).text()) {
            case "账户信息管理" : {
                window.location.href = "http://localhost:8888/linkmanManage.action";
                $(this).css({backgroundColor:"#b2000c"}).siblings().css({backgroundColor:""});
            }
                break;
            case "常用乘机人管理" : {
                window.location.href = "http://localhost:8888/linkman.action";
                $(this).css({backgroundColor:"#b2000c"}).siblings().css({backgroundColor:""});
            }
                break;

        }
    });
});

