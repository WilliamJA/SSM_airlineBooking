/**
 * Created by LENOVO on 2017/6/11.
 */
$(document).ready(function() {
    var $phoneNumberInput = $("#loginForm").find("input").eq(0);
    var $pswInput = $("#loginForm").find("input").eq(1);
    var $mobileValidateCodeInput = $("#loginForm").find("input").eq(2);
    $(".login-btn").find("a").eq(0).on("click",function(event) {
        event.preventDefault();
        if ($phoneNumberInput.check({targetNode:$(".message"),type:"userName"}) &&
            $pswInput.check({targetNode:$(".message"),type:"password"}) &&
            $mobileValidateCodeInput.check({targetNode:$(".message"),type:"verificationCode"})) {
            $("#loginForm").submit();
        } else {
            return false;
        }
    });
    /**
     * 发送验证码
     */
    $("#sendCode").on("click",function(event) {
        event.preventDefault();
        if ($phoneNumberInput.check({targetNode:$(".message"),type:"userName"}) &&
            $pswInput.check({targetNode:$(".message"),type:"password"})) {
            $.ajax({
                url : "http://localhost:8888/sendCode.action",
                type : "POST",
                ContentType :"application/x-www-form-urlencoded;charset=utf-8",
                data : "userName="+$("#loginForm").find("input[name='userName']").val(),
                dataType : "json",
                success : function (data) {
                    console.log(data);
                    var i = 30;
                    window.timer = setInterval(function() {
                        if (i>1) {
                            i--;
                            $("#sendCode").text("等待（"+i+"秒）之后重新发送").off("click");
                        } else {
                            $("#sendCode").on("click").text("获取验证码");
                            clearInterval(window.timer);
                        }
                    },1000);
                },
                error : function () {
                }
            });

        } else {
            return false;
        }

    });

});