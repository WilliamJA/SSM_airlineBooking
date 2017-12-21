/**
 * Created by LENOVO on 2017/6/6.
 * @author zhangmingming
 */

$(document).ready(function(){
    /**
    * 加载第三方日历
    * trigger:设置触发显示的元素，为null时默认显示
    * offset:偏移位置，可设正负值(trigger 设置时生效)
    * selectedRang:设置选择范围(格式：[开始日期, 结束日期])
    * format:日期格式化方式
    */
    var $fousInput = $(".select-date").find("input");
    var nowDate = new Date();
    $("#select-date").calendar({
        trigger: $fousInput,
        zIndex: 999,
        date:nowDate,
        selectedRang:[nowDate,null],
        offset:[-225 ,-209],
        format: 'yyyy-mm-dd'
    });

    //出发城市输入框、到达城市输入框
    var $cityInput = $(".text").find("input");
    //选择城市Div
    var $cityDiv = $("#select-city");
    //城市列表关闭button
    var $closeBtn = $(".close");
    //城市列表
    var $cityList = $("#select-city").find("ul").eq(2);
    //城市字母检索
    var $select = $("#select-city").find("ul").eq(1).find("li");
    /**
     * 城市字母检索功能实现
     */
    $select.on("click",function() {
        $(this).css({borderBottom:"2px solid #d7000f",color:"#d7000f"}).siblings().css({borderBottom:"none",color:"#333"});
        switch ($(this).text()) {
            case "热门" : {
                $cityDiv.find("ul").eq(2).empty().append(
                    "<li>北京</li>" +
                    "<li>上海浦东</li>" +
                    "<li>成都</li>" +
                    "<li>长春</li>" +
                    "<li>沈阳</li>" +
                    "<li>长沙</li>" +
                    "<li>重庆</li>" +
                    "<li>大连</li>" +
                    "<li>西安</li>" +
                    "<li>贵阳</li>" +
                    "<li>广州</li>" +
                    "<li>南京</li>" +
                    "<li>西宁</li>" +
                    "<li>温州</li>" +
                    "<li>昆明</li>" +
                    "<li>拉萨</li>" +
                    "<li>深圳</li>" +
                    "<li>乌鲁木齐</li>" +
                    "<li>兰州</li>" +
                    "<li>银川</li>" +
                    "<li>杭州</li>" +
                    "<li>丽江</li>" +
                    "<li>宁波</li>" +
                    "<li>厦门</li>" +
                    "<li>天津</li>" +
                    "<li>三亚</li>" +
                    "<li>南昌</li>" +
                    "<li>济南</li>" +
                    "<li>海口</li>" +
                    "<li>哈尔滨</li>"
                );
            }
            break;
            case "A-F" : {
                $cityDiv.find("ul").eq(2).empty().append(
                    "<li>北海</li>" +
                    "<li>长春</li>" +
                    "<li>常州</li>" +
                    "<li>东营</li>" +
                    "<li>大理</li>" +
                    "<li>北京</li>" +
                    "<li>重庆</li>" +
                    "<li>大同</li>" +
                    "<li>达州</li>" +
                    "<li>鄂尔多斯</li>" +
                    "<li>毕节</li>" +
                    "<li>长沙</li>" +
                    "<li>大连</li>" +
                    "<li>稻城</li>" +
                    "<li>福州</li>" +
                    "<li>包头</li>" +
                    "<li>成都</li>" +
                    "<li>敦煌</li>" +
                    "<li>迪庆</li>"
                );
            }
                break;
            case "G-J" : {
                $cityDiv.find("ul").eq(2).empty().append(
                    "<li>广州</li>" +
                    "<li>赣州</li>" +
                    "<li>海口</li>" +
                    "<li>固原</li>" +
                    "<li>合肥</li>" +
                    "<li>红原</li>" +
                    "<li>九寨沟</li>" +
                    "<li>杭州</li>" +
                    "<li>嘉峪关</li>" +
                    "<li>济南</li>" +
                    "<li>贵阳</li>" +
                    "<li>海拉尔</li>" +
                    "<li>哈尔滨</li>" +
                    "<li>揭阳</li>" +
                    "<li>济宁</li>" +
                    "<li>桂林</li>" +
                    "<li>呼和浩特</li>" +
                    "<li>邯郸</li>" +
                    "<li>晋江</li>" +
                    "<li>金华</li>"
                );
            }
            break;
            case "K-N" : {
                $cityDiv.find("ul").eq(2).empty().append(
                    "<li>喀什</li>" +
                    "<li>丽江</li>" +
                    "<li>林芝</li>" +
                    "<li>吕梁</li>" +
                    "<li>南昌</li>" +
                    "<li>南通</li>" +
                    "<li>昆明</li>" +
                    "<li>拉萨</li>" +
                    "<li>泸州</li>" +
                    "<li>绵阳</li>" +
                    "<li>宁波</li>" +
                    "<li>康定</li>" +
                    "<li>临沂</li>" +
                    "<li>连云港</li>" +
                    "<li>满洲里</li>" +
                    "<li>南京</li>" +
                    "<li>兰州</li>" +
                    "<li>连城</li>" +
                    "<li>柳州</li>" +
                    "<li>芒市</li>" +
                    "<li>南宁</li>"
                );
            }
                break;
            case "P-W" : {
                $cityDiv.find("ul").eq(2).empty().append(
                    "<li>攀枝花</li>" +
                    "<li>神农架</li>" +
                    "<li>深圳</li>" +
                    "<li>太原</li>" +
                    "<li>温州</li>" +
                    "<li>万州</li>" +
                    "<li>上饶</li>" +
                    "<li>黔江</li>" +
                    "<li>沈阳</li>" +
                    "<li>上海</li>" +
                    "<li>台州</li>" +
                    "<li>乌海</li>" +
                    "<li>五台山</li>" +
                    "<li>青岛</li>" +
                    "<li>石家庄</li>" +
                    "<li>天津</li>" +
                    "<li>铜仁</li>" +
                    "<li>武汉</li>" +
                    "<li>梧州</li>" +
                    "<li>上海虹桥</li>" +
                    "<li>三亚</li>" +
                    "<li>唐山</li>" +
                    "<li>乌鲁木齐</li>" +
                    "<li>无锡</li>" +
                    "<li>乌兰浩特</li>"
                );
            }
                break;
            case "X-Z" : {
                $cityDiv.find("ul").eq(2).empty().append(
                    "<li>西双版纳</li>" +
                    "<li>徐州</li>" +
                    "<li>银川</li>" +
                    "<li>延吉</li>" +
                    "<li>盐城</li>" +
                    "<li>中卫</li>" +
                    "<li>西安</li>" +
                    "<li>西昌</li>" +
                    "<li>榆林</li>" +
                    "<li>宜春</li>" +
                    "<li>烟台</li>" +
                    "<li>珠海</li>" +
                    "<li>厦门</li>" +
                    "<li>夏河</li>" +
                    "<li>宜宾</li>" +
                    "<li>扬州</li>" +
                    "<li>西宁</li>" +
                    "<li>郑州</li>" +
                    "<li>宜昌</li>" +
                    "<li>玉树</li>" +
                    "<li>张家界</li>" +
                    "<li>襄阳</li>"
                );
            }
                break;
        }
    });

        $cityList.on("click","li",function() {
            if ($cityDiv.hasClass("first")) {
                $cityInput.eq(0).val($(this).text());
            } else if($cityDiv.hasClass("second")) {
                $cityInput.eq(1).val($(this).text());
            }
           $cityDiv.hide();
       });

    $cityInput.focus(function() {
        if ($(this).attr("name") == "leaveCity") {
            $cityDiv.css({left:0}).fadeIn(300).addClass("first").removeClass("second");
            $(this).eq(1).removeClass("second");
        } else {
            $cityDiv.css({left:"200px"}).fadeIn(300).addClass("second").removeClass("first");
        }
    });

    /**
     * 出发城市与到达城市地址互换
     *
     */
    $(".change").find("b").on("click",function() {
        var temp;
        temp = $cityInput.eq(0).val();
        $cityInput.eq(0).val($cityInput.eq(1).val());
        $cityInput.eq(1).val(temp);
    });

    /**
     * 乘客类型选择
     *
     */
    var $selectType =  $(".select-type");
   $selectType.find("div").on("click",function() {
        if (!$(this).hasClass("active")) {
            $(this).addClass("active").siblings().removeClass("active");
            $(this).find("ul").show();
            $(this).siblings().find("b").removeClass("anit").addClass("positive");
            $(this).siblings().find("ul").hide();
            $(this).find("b").removeClass("positive").addClass("anit");
            var $temp = $(this);
            $(this).find("ul li").on("click",function() {
               $temp.find("span").text($(this).text());
            });
        } else {
            $(this).removeClass("active");
            $(this).find("ul").hide();
            $(this).find("b").removeClass("anit").addClass("positive");
        }
    });

    /**
    * 关闭城市选择列表
    */
    $closeBtn.on("click",function() {
        $select.eq(0).trigger("click");
        $cityDiv.hide();
    });

    /**
     * 航班查询表单提交
     */
    $(".submit").on("click",function(event) {
        event.preventDefault();
        $(".query").find("form").submit();
    });

});
