/**
 * Created by LENOVO on 2017/6/28.
 * 添加乘机人
 */
$(document).ready(function() {
    var $addConnection = $(".right-tabs").find("div").eq(1);
    var $close = $(".close").find("span");
    /**
     * 添加常用联系人窗口弹出
     *
     */
    $addConnection.on("click",function() {
        $(".embody").show();
        $(".add-connection").show();
    });
    /**
     * 添加常用联系人窗口关闭功能
     */
    $close.on("click",function() {
        $(".embody").hide();
        $(".add-connection").hide();
    });

    /**
     * 乘客类型选择
     */
    $(".connection-type").on("click",function() {
        if (!$(this).hasClass("active")) {
            $(this).addClass("active");
            $(".connection-type").find("ul").slideDown(100);
            $(".connection-type").find("i").css({borderColor:"transparent transparent #dbdbdb",marginTop:"10px"});
        } else {
            $(this).removeClass("active");
            $(".connection-type").find("ul").slideUp(100);
            $(".connection-type").find("i").css({borderColor:"#dbdbdb transparent transparent",marginTop:"15px"});
        }
    });
    $(".connection-type").find("ul li").on("click",function() {
        $(".connection-type").find("span").text($(this).text());
        $(".add-froms").find("input[name='type']").val($(this).text());
        $(".connection-type").find("i").css({borderColor:"#dbdbdb transparent transparent",marginTop:"15px"});
    });
    /**
     * 添加联系人信息不符合规范验证
     */
        //联系人姓名输入框的值
    var $connectionName = $(".add-froms").find("input[name='userName']");
    //联系人身份证号码输入框
    var $connectionIdCard = $(".add-froms").find("input[name='idCard']");
    //联系人电话号码输入框
    var $connectionPhoneNumber = $(".add-froms").find("input[name='phoneNumber']");
    $(".add-froms").find("a").on("click",function(event) {
        event.preventDefault();
        if ($connectionName.check({targetNode:$connectionName.next(),type:"chinesName"}) &&
            $connectionIdCard.check({targetNode:$connectionIdCard.next(),type:"idCard"}) &&
            $connectionPhoneNumber.check({targetNode:$connectionPhoneNumber.next(),type:"phoneNumber"})
        ) {
            $(".add-froms").find("form").submit();
        } else {
            return false;
        }
        /*$.ajax({
         url:"http://localhost:8888/addConnection.action",
         async : false,
         type : "post",
         dataType : "json",
         data : $(".add-froms").find("form").serialize(),
         success : function(res) {
         alert(res);
         },
         error : function (res) {
         alert(res);
         }
         });*/
    });
});
