/**
 * Created by LENOVO on 2017/7/2.
 */

$(document).ready(function() {
    var $confirmConnection = $(".frame-hd").find("input[name='confirmConnection']");
    var $confirmPhoneNumber = $(".frame-hd").find("input[name='confirmPhoneNumber']");
    var $confirmName = $(".frame-hd").find("input[name='confirmName']");
    var $confirmIdCard = $(".frame-hd").find("input[name='confirmIdCard']");

        $(".order-submit").on("click",function(event) {
            event.preventDefault();
            if ($confirmConnection.check({targetNode:$confirmConnection.next(),type:"chineseName"}) &&
                $confirmPhoneNumber.check({targetNode:$confirmPhoneNumber.next(),type:"phoneNumber"}) &&
                $confirmName.check({targetNode:$confirmName.next(),type:"chineseName"}) &&
                $confirmIdCard.check({targetNode:$confirmIdCard.next(),type:"idCard"})
            ) {
                $(".swap").find("form").submit();
                window.location.href = "http://localhost:8888/pay.action";
            } else {
                return false;
            }
        });
});
