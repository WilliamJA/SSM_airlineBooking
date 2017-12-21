/**
 * Created by LENOVO on 2017/6/28.
 * 账户信息管理页面效果
 */
$(document).ready(function() {
    //信息填写、密码修改下拉菜单
    $(".open").on("click",function() {
        if ($(this).hasClass("info")) {
            infoShowHide($(this),$(".update-info"));
        } else {
            infoShowHide($(this),$(".update-psw"));
        }

    });
    function infoShowHide($controlNode,$contentNode) {
        if (!$controlNode.hasClass("active")) {
            $controlNode.addClass("active");
            $controlNode.find("i").css({backgroundPosition:"left -121px top 0"});
            $contentNode.slideDown(300);
        } else {
            $controlNode.removeClass("active");
            $controlNode.find("i").css({backgroundPosition:"left -102px top -64px"});
            $contentNode.slideUp(300);
        }
    }

    /**
     * 个人信息修改ajax提交
     */
    $(".update-btn").on("click",function(event) {
        event.preventDefault();
        $.ajax({
            url : "userInfoUpdate.action",
            data : $("#update-form").serialize(),
            type : "POST",
            dataType : "json",
            success : function() {
                $(".overlay").show().css({height:$(document).height()});
                $(".update-success").show();
            },
            error : function() {
                $(".overlay").show().css({height:$(document).height()});
                $(".update-success").show();
                $(".dialog-title>div").css({backgroundPosition:"0 -100px"});
            }
        });
        $(".btn-con").find("a").on("click",function(event) {
            event.preventDefault();
            $(".overlay").hide();
            $(".update-success").hide();
        });
        $(".update-success>span").on("click",function() {
            $(".overlay").hide();
            $(".update-success").hide();
        });

    });

    /**
     * 当输入的密码不符合规范时，出现提示信息
     */
    var $oldPsw = $(".update-psw").find("input[name='oldPsw']");
    var $newPsw = $(".update-psw").find("input[name='newPsw']");
    var $confirmNewPsw = $(".update-psw").find("input[name='confirmNewPsw']");
    $(".update-psw").find(".alter-psw-btn").on("click",function(event) {
        event.preventDefault();
      if ($oldPsw.check({targetNode:$oldPsw.next(),type:"password"}) &&
          $newPsw.check({targetNode:$newPsw.next(),type:"password"}) &&
          $confirmNewPsw.check({targetNode:$confirmNewPsw.next(),type:"confirmPassword",firstInputPassword:$newPsw})) {
          $.ajax({
              url : "alterPsw.action",
              type : "POST",
              data : $("#alter-psw-form").serialize(),
              dataType : "json",
              success : function(data) {
                  console.log(data);
                  if (data.result == "failure") {
                      $("#alter-psw-form").find("input[name='oldPsw']").next().empty().append("<b class='verifcation-style'>!</b> 旧密码输入错误！");
                  } else if(data.result == "success") {
                      $(".overlay").show().css({height:$(document).height()});
                      $(".update-psw").find(".alert-success").show();
                  }

              },
              error : function() {
                  $(".overlay").show().css({height:$(document).height()});
                  $(".alter-success").show();
                  $(".dialog-title>div").css({backgroundPosition:"0 -100px"});
              }
          });
      } else {
          return false;
      }
        $(".alter-con").find("a").on("click",function(event) {
            event.preventDefault();
            $(".overlay").hide();
            $(".update-psw").find(".alert-success").hide();
        });
        $(".update-psw").find(".alert-success>span").on("click",function() {
            $(".overlay").hide();
            $(".update-psw").find(".alert-success").hide();
        });
    });
});
