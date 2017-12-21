/**
 * Created by LENOVO on 2017/6/11.
 */
/**
 * 性别选择功能实现
 */
$(document).ready(function() {
    var $valSex = $(".select-sex").find("ul");
    $(".select-sex").find("a").on("click",function(event) {
        event.preventDefault();
        var $valueSpan = $(this).find("span");
        if (!$valSex.hasClass("active")) {
            $valSex.show().addClass("active");
            $valSex.on("click","li",function() {
                var $thisValue = $(this).text();
                $valueSpan.text($thisValue);
                $valSex.hide().removeClass("active");
                $("form").find("input[name='sex']").val($thisValue);
            });
        } else {
            $valSex.hide().removeClass("active");
        }
    });

    /**
     * 字段格式验证
     */
    var $chineseSurname = $("#register-box").find("input[name='chineseSurname']");
    var $chineseName = $("#register-box").find("input[name='chineseName']");
    var $englishSurname = $("#register-box").find("input[name='englishSurname']");
    var $englishName = $("#register-box").find("input[name='englishName']");
    var $idCard = $("#register-box").find("input[name='idCard']");
    var $password = $("#register-box").find("input[name='password']");
    var $confirmPassword = $("#register-box").find("input[name='confirmPassword']");
    var $email = $("#register-box").find("input[name='email']");
    var $phoneNumber = $("#register-box").find("input[name='phoneNumber']");
    var $mobileCheckCode = $("#register-box").find("input[name='mobileCheckCode']");

    $(".page-btn-box").find(".submit-btn").on("click",function(event) {
        event.preventDefault();
        if ($chineseSurname.check({targetNode:$chineseSurname.next(),type:"chineseSurname"}) &&
            $chineseName.check({targetNode:$chineseName.next(),type:"chineseName"}) &&
            $englishSurname.check({targetNode:$englishSurname.next(),type:"englishSurname"}) &&
            $englishName.check({targetNode:$englishName.next(),type:"englishName"}) &&
            $idCard.check({targetNode:$idCard.next(),type:"idCard"}) &&
            $password.check({targetNode:$password.next(),type:"password"}) &&
            $confirmPassword.check({targetNode:$confirmPassword.next(),type:"confirmPassword",firstInputPassword:$password}) &&
            $email.check({targetNode:$email.next(),type:"email"}) &&
            $phoneNumber.check({targetNode:$phoneNumber.next(),type:"phoneNumber"}) &&
            $mobileCheckCode.check({targetNode:$mobileCheckCode.next(),type:"verificationCode"})) {
            $("#register-box").find("form").submit();

        } else {
            return false;
        }
    });

    /**
     * 验证码模拟
     */
    function random() {
        var res = "";
        for (var i = 0; i < 6; i++) {
            res += Math.floor(Math.random() * 10).toString();
        }
        return res;
    }
    var $getCodeBtn = $(".mobileCheckCode").find("a");
    var $codeValue =  $(".mobileCheckCode").find("input[name='mobileCheckCode']");
    $getCodeBtn.on("click",function(event) {
        event.preventDefault();
        event.stopPropagation();
         $codeValue.val(random());
        var i = 30;
        window.timer = setInterval(function() {
            if (i>1) {
                i--;
                $getCodeBtn.text("等待（"+i+"秒）之后重新发送");
                $getCodeBtn.unbind("click");
            } else {
                $getCodeBtn.bind("click");
                $getCodeBtn.on("click").text("获取验证码");
                clearInterval(window.timer);
            }
        },1000);

        });
});

