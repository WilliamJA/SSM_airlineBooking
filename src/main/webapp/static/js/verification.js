/**
 * Created by LENOVO
 * @author martin
 * @date 2017/6/18 18:44
 * 本项目表单验证
 */
(function($){
    PHONENUMBER_REGEX = /^0?(13[0-9]|15[012356789]|17[013678]|18[0-9]|14[57])[0-9]{8}$/;
    EMAIL_REGEX = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
    CHINES_NAME_REGEX = /^[\u4E00-\u9FA5A-Za-z]+$/;
    IDCARD_REGEX = /^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$|^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/;
    VERIFICATION_CODE_REGEX = /^[0-9]{6}$/;
    CHINES_SURNAME_REGEX = /^([\u4e00-\u9fa5]{1,2})$/;
    ENGLISH_SURNAME_REGEX = /^[A-Za-z]{3,5}$/;
    ENGLISH_NAME_REGEX = /^[A-Za-z]{3,10}$/;

    $.fn.extend({
        parameter : {
            //提示消息出现的目标节点
            targetNode:"",
            //设置验证的类型
            //可选：chinesName(中文姓名验证)，email(邮箱验证)，phoneNumber(电子邮箱验证)，idCard(身份证验证),
            // userName(登录手机号或邮箱验证) password(登录密码验证 密码大于8位小于16位) verificationCode(验证码)
            type:"",
            //被验证的密码框
            firstInputPassword:""
        },
        check:function(parameter) {
            if ($(this).attr("type") == "text" || $(this).attr("type") == "password" ) {
                switch (parameter.type) {
                    case "chinesName": {
                        if ($(this).val() == "") {
                            parameter.targetNode.empty().append("<b class='verifcation-style'>!</b> 必须输入旅客姓名！");
                        } else if (!CHINES_NAME_REGEX.test($(this).val())) {
                            parameter.targetNode.empty().append("<b class='verifcation-style'>!</b> 请输入正确的旅客姓名！");
                        } else {
                            return true;
                        }
                    }
                    break;
                    case "email":{
                        if ($(this).val() == "") {
                            parameter.targetNode.empty().append("<b class='verifcation-style'>!</b> 必须输入电子邮箱！");
                        } else if (!EMAIL_REGEX.test($(this).val())) {
                            parameter.targetNode.empty().append("<b class='verifcation-style'>!</b> 请输入正确的电子邮箱！");
                        } else {
                            return true;
                        }
                    }
                    break;
                    case "idCard":{
                        if ($(this).val() == "") {
                            parameter.targetNode.empty().append("<b class='verifcation-style'>!</b> 必须输入身份证号码！");
                        } else if (!IDCARD_REGEX.test($(this).val())) {
                            parameter.targetNode.empty().append("<b class='verifcation-style'>!</b> 请输入正确的身份证号码！");
                        } else {
                            return true;
                        }
                    }
                        break;
                    case "phoneNumber":{
                        if ($(this).val() == "") {
                            parameter.targetNode.empty().append("<b class='verifcation-style'>!</b> 必须输入手机号码！");
                        } else if (!PHONENUMBER_REGEX.test($(this).val())) {
                            parameter.targetNode.empty().append("<b class='verifcation-style'>!</b> 请输入正确的手机号码！");
                        } else {
                            return true;
                        }
                    }
                        break;
                    case "userName":{
                        if ($(this).val() == "") {
                            parameter.targetNode.empty().append("<b class='verifcation-style'>!</b> 请输入手机号或邮箱号！");
                        } else if (!(PHONENUMBER_REGEX.test($(this).val()) || EMAIL_REGEX.test($(this).val()))) {
                            parameter.targetNode.empty().append("<b class='verifcation-style'>!</b> 请输入正确的手机号码或电子邮箱！");
                        } else {
                            return true;
                        }
                    }
                        break;
                    case "password":{
                        if ($(this).val() == "") {
                            parameter.targetNode.empty().append("<b class='verifcation-style'>!</b> 必须输入密码！");
                        } else if ($(this).val().length<8 || $(this).val().length>16) {
                            parameter.targetNode.empty().append("<b class='verifcation-style'>!</b> 请输入正确格式的密码！");
                        } else {
                            return true;
                        }
                    }
                        break;
                    case "verificationCode":{
                        if ($(this).val() == "") {
                            parameter.targetNode.empty().append("<b class='verifcation-style'>!</b> 必须输入验证码！");
                        } else if (!VERIFICATION_CODE_REGEX.test($(this).val())) {
                            parameter.targetNode.empty().append("<b class='verifcation-style'>!</b> 请输入正确格式的验证码！");
                        } else {
                            return true;
                        }
                    }
                        break;

                    case "confirmPassword":{
                        if ($(this).val() == "") {
                            parameter.targetNode.empty().append("<b class='verifcation-style'>!</b> 必须输入确认密码！");
                        } else if ($(this).val().length<8 || $(this).val().length>16) {
                            parameter.targetNode.empty().append("<b class='verifcation-style'>!</b> 请输入正确格式的确认密码！");
                        } else if($(this).val() != parameter.firstInputPassword.val()) {
                            parameter.targetNode.empty().append("<b class='verifcation-style'>!</b> 两次密码不一致！");
                        } else {
                            return true;
                        }
                    }
                        break;
                    case "chineseSurname":{
                        if ($(this).val() == "") {
                            parameter.targetNode.empty().append("<b class='verifcation-style'>!</b> 请输入中文姓！");
                        } else if (!CHINES_SURNAME_REGEX.test($(this).val())) {
                            parameter.targetNode.empty().append("<b class='verifcation-style'>!</b> 请输入正确格式的中文姓！");
                        } else {
                            return true;
                        }
                    }
                        break;
                    case "chineseName":{
                        if ($(this).val() == "") {
                            parameter.targetNode.empty().append("<b class='verifcation-style'>!</b> 请输入中文名！");
                        } else if (!CHINES_NAME_REGEX.test($(this).val())) {
                            parameter.targetNode.empty().append("<b class='verifcation-style'>!</b> 请输入正确的中文名！");
                        } else {
                            return true;
                        }
                    }
                        break;
                    case "englishSurname":{
                        if ($(this).val() == "") {
                            parameter.targetNode.empty().append("<b class='verifcation-style'>!</b> 请输入英文姓，中文请用拼音！");
                        } else if (!ENGLISH_SURNAME_REGEX.test($(this).val())) {
                            parameter.targetNode.empty().append("<b class='verifcation-style'>!</b> 请输入正确格式的英文姓，中文请用拼音！");
                        } else {
                            return true;
                        }
                    }
                        break;
                    case "englishName":{
                        if ($(this).val() == "") {
                            parameter.targetNode.empty().append("<b class='verifcation-style'>!</b> 请输入英文名，中文请用拼音！");
                        } else if (!ENGLISH_NAME_REGEX.test($(this).val())) {
                            parameter.targetNode.empty().append("<b class='verifcation-style'>!</b> 请输入正确格式的英文名，中文请用拼音！");
                        } else {
                            return true;
                        }
                    }
                }
                //当源节点获得焦点时，隐藏消息提示框
                $(this).focus(function() {
                    parameter.targetNode.empty();
                });
            } else {
                throw new TypeError("节点类型不正确");
            }
        }
    });
})(jQuery);

