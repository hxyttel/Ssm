$(function () {
    //点击 马上投资 和 立即注册得88元红包 返回到顶部
    $(".goRegister, .finance_gr .btn, .gototop").click(function(){
        $('body,html').animate({scrollTop:110},1000);
        return false;
    });
    var timeover=true;
    isChoose();
    getdata();
    //清除input缓存
    $('.register input').each(function () {
        $(this).val('');
    });
    $('.iptChoose').click(function (event) {
        event.stopPropagation();
        isChoose()
    });

    function isChoose() {

        if ($('#agree').prop('checked')) {

            $('.iptChoose input').addClass("choose");
        } else {
            $('.iptChoose input').removeClass("choose");
        }
    }    

    //大banner特效左右滚动控制显示或隐藏
    $(".index_focus").hover(function () {
        $(this).find(".index_focus_pre,.index_focus_next").stop(true, true).fadeTo("show", 1)
    }, function () {
        $(this).find(".index_focus_pre,.index_focus_next").fadeOut()
    });
    //大banner特效
    $(".index_focus").slide({
        titCell: ".slide_nav a ",
        mainCell: ".bd ul",
        delayTime: 500,
        interTime: 2500,
        prevCell: ".index_focus_pre",
        nextCell: ".index_focus_next",
        effect: "fold",
        autoPlay: true,
        trigger: "click",
        mouseOverStop: false,
        startFun: function (i) {
            $(".index_focus_info").eq(i).find("h3").css("display", "block").fadeTo(1000, 1);
            $(".index_focus_info").eq(i).find(".text").css("display", "block").fadeTo(1000, 1);
        }
    });


    //协议
    $('#agreement').click(function () {
        $.post("/home-index-agreement", {}, function (msg) {
            var obj = JSON.parse(msg);
            if (obj.status == 1) {
                //加载协议
                $('.protocol-box').html(obj.data);
            } else {
                //协议出错
                $('.protocol-box').html('<i class="m2-loginReg-boxClose"></i><h3>协议加载出错</h3>');
            }
        });
        $('.m2-tranBg,.protocol-box').show();
    });
    // 协议->关闭
    $(document).on('click', '.m2-loginReg-boxClose', function () {
        $('.m2-tranBg,.protocol-box').hide();
    });
    //点击 马上投资 和 立即注册得88元红包 返回到顶部
    $(".gotoTop").click(function () {
        $('body,html').animate({scrollTop: 110}, 1000);
        return false;
    });
    function getdata() {
        var pfurl = "/Activity-getdata";
        $.post(pfurl, {}, function (d) {
            var obj = JSON.parse(d);
            $('#pf_day').html(obj.day_count);
            $('#pf_money').html(obj.money_count);
            $('#pf_user').html(obj.user_count);
        })
    }
});
