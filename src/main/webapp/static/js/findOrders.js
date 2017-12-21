/**
 * Created by LENOVO on 2017/6/29.
 */
$(document).ready(function() {
    var $searchInput1 = $(".search-show").find("input[type='text']").eq(0);
    var $searchInput2 = $(".search-show").find("input[type='text']").eq(1);
    var parameter1 = {
        trigger: $searchInput1,
        date:new Date(),
        format: 'yyyy-mm-dd'
    };
    var parameter2 = {
        trigger: $searchInput2,
        date:new Date(),
        format: 'yyyy-mm-dd'
    };
    $(".query-date1").calendar(parameter1);
    $(".query-date2").calendar(parameter2);
});
