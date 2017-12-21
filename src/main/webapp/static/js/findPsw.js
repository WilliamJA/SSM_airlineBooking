/**
 * Created by LENOVO on 2017/6/21.
 *
 */
$(document).ready(function() {
    var $emailOrPhoneNumber = $("#find-password-box").find("input[name='emailOrPhoneNumber']");
    var $newPassword = $("#find-password-box").find("input[name='newPassword']");
    var $confirmNewPassword = $("#find-password-box").find("input[name='confirmNewPassword']");
    var $idCard = $("#find-password-box").find("input[name='idCard']");
    var $checkCode = $("#find-password-box").find("input[name='checkCode']");
    $(".submit").on("click",function(event) {
        event.preventDefault();
        if ($emailOrPhoneNumber.check({targetNode:$emailOrPhoneNumber.next(),type:"userName"}) &&
            $emailOrPhoneNumber.check({targetNode:$emailOrPhoneNumber.next(),type:"userName"}) &&
            $newPassword.check({targetNode:$newPassword.next(),type:"password"}) &&
            $confirmNewPassword.check({targetNode:$confirmNewPassword.next(),type:"confirmPassword",firstInputPassword:$newPassword}) &&
            $idCard.check({targetNode:$idCard.next(),type:"idCard"}) && $checkCode.check({targetNode:$checkCode.next(),type:"verificationCode"})
           ) {
            $("#find-password-box").find("form").submit();
        } else {
            return false;
        }
    });
});