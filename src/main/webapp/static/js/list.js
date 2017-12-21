/**
 * Created by LENOVO on 2017/7/1.
 *
 */
$(document).ready(function() {
    var $select = $(".tb-td");
    $select.on("click",function() {
        if (!$(this).hasClass("active")) {
            $select.css({backgroundColor:"#ffffff"}).removeClass("active").find(".ticket-wrap>input:radio").removeAttr("checked");
            $select.parents(".details").next().slideUp(200);
            $(this).addClass("active");
            $select.find(".ticket-wrap>p").css({color:"#d7000f"});
            $(this).css({backgroundColor:"#d7000f"});
            $(this).find(".ticket-wrap>input:radio").attr("checked","checked");
            $(this).find(".ticket-wrap>p").css({color:"#ffffff"});
            $(this).parents(".details").next().slideDown(200);
        } else {
            $(this).removeClass("active").css({backgroundColor:"#ffffff"}).find(".ticket-wrap>input:radio").removeAttr("checked");
            $(this).find(".ticket-wrap>p").css({color:"#d7000f"});
            $(this).parents(".details").next().slideUp(200);
        }

    });
});

