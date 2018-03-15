/*
 * 公共提示框 js
 */
function infoDialogClose(){
        $('.m2-pwdConfirm-close').click(function(){
        $('.m2-pwdBg').hide();
        $('.m2-pwdConfirm').hide();
        $('.m2-pwdConfirm-con').text('');
        $('#dialog-status').removeClass('m2-pwdConfirm-ture');
        $('#dialog-status').removeClass('m2-pwdConfirm-false');
        $(this).unbind();
    });
}
function showInfoDialog(text,status,func,callback){
    $('.m2-pwdConfirm-con').text(text);
    if(status){
        $('#dialog-status').addClass('m2-pwdConfirm-ture');
    }else{
        $('#dialog-status').addClass('m2-pwdConfirm-false');
    }
    $('.m2-pwdBg').show();
    $('.m2-pwdConfirm').show();
    if(typeof(callback)=='function'){
        $('.m2-pwdConfirm-close').click(callback);
    }
    infoDialogClose();
    if(typeof(func)=='function'){
        func();
    }
//			$(".mylogin").show();
}
function showLoginInfoDialog(text,status,func,callback){
    $('.m2-pwdConfirm-con').text(text);
    if(status){
        $('#dialog-status').addClass('m2-pwdConfirm-ture');
    }else{
        $('#dialog-status').addClass('m2-pwdConfirm-false');
    }
    $('.m2-pwdBg').show();
    $('.m2-pwdConfirm').show();
    if(status){
        $('.m2-pwdConfirm').hide();
        $('.m2-pwdConfirm-auto').show();
    }
    if(typeof(callback)=='function'){
        $('.m2-pwdConfirm-close').click(callback);
    }
    infoDialogClose();
    if(typeof(func)=='function'){
        func();
    }
}
function showLoginDialog(text,status){
    $("#nowcoin").html(text.allcoin);
    $("#overcoin").html(text.overcoin);
    $("#user").html(text.userName);
    $(".mylogin").show();
    $(".myloginmask").show();
}
$(".mylogin .closeimg").click(function(){
    $(".mylogin").hide();
    $(".myloginmask").hide();
    window.location.href="/Index";
})
//END
    		
/*
 *用户协议弹框 
 */
    		$(function(){
		        // 显示&关闭
		        $('.mo2-indRegagree b').click(function(){
            		$.ajax({
                		type:"POST",
                		url:"",
                		success:function(msg){
	                    	var obj = eval('('+msg+')');
	                    	var obj = eval(obj);
	                    	if (obj.status==0){
	                        	$('.m2-loginReg-box').html('<i class="m2-loginReg-boxClose"></i><h3>协议加载出错</h3>');
	                    	}else if(obj.status==1){
	                        	$('.m2-loginReg-box').html(obj.data);
	                    	}
                		}
            		});
            		$('.m2-loginReg-box,.m2-commonBg').show();
        		});

    		});
    		
/*
 * 弹出层
 */
$(function () {
	//隐藏更多按钮
	if ($('.m2-tranHide-det').length < 19) {
		$('.m2-tranHidetoggle').hide();
	}

	//展开收起
	$('.m2-tranHidetoggle').click(function () {
		if ($(this).hasClass('m2-tranMore')) {
    		$(this).removeClass('m2-tranMore');
    		$(this).children('span').html('收&nbsp;&nbsp;&nbsp;起&raquo;');
    		$('.m2-tranHidelist').css('max-height', 9999);
		}else {
    		$(this).addClass('m2-tranMore');
    		$(this).children('span').html('显示更多&raquo;');
    		$('.m2-tranHidelist').css('max-height', 240);
		}
	});

	//点击关闭按钮
	$('.m2-tranHide-close,.m2-tranHidenum-btn').click(function () {
		$('.m2-tranBg').hide();
		$('.m2-tranHide').hide();
	});
})

var page=$(".m2-commonNavul-fir").attr("data_page");
$("#"+page).parent().css("borderBottom","2px solid #ff6666");
var queuename = '30017180006';
function callback() {
    $('#tel').val($('#phonenumber').val());
    call();
}
setCallResponse = function (json) {
    var obj = eval('(' + json + ')');
    if (obj['description']) {
        $('#callBack-codeErr').css('display', 'block');
        $('#ivrSecurityCode').val('');
        getCode();
        setTimeout(function () {
            $('#callBack-codeErr').css('display', 'none');
        }, 3000);
    }
}
//新用户完成注册
$(function(){
    $("#user_name").focus();
    //隐藏弹窗(体验金弹框)
    $("#newregister-close").click(function(){
        $("#newregister").hide();
    });
});

$(document).ready(function () {
    $('.m2-banner-box').mouseenter(function () {
        $('.m2-prev,.m2-next').fadeIn(200);
    });
    $('.m2-banner-box').mouseleave(function () {
        $('.m2-prev,.m2-next').fadeOut(200);
    })
    //焦点图轮播
    $(".prev,.next").hover(function () {
        $(this).stop(true, false).fadeTo("show", 0.9);
    }, function () {
        $(this).stop(true, false).fadeTo("show", 0.4);
    });
    $(".m2-banner-box").slide({
        titCell: ".m2-hd ul",
        mainCell: ".m2-bd ul",
        effect: "fold",
        interTime: 3500,
        delayTime: 500,
        autoPlay: true,
        autoPage: true,
        trigger: "mouseover"
    });
});
//滚动公告
function marquee(height,speed,delay){
    var scrollT;
    var pause = false;
    var ScrollBox = document.getElementById("upRoll1");
    if(document.getElementById("holder1").offsetHeight <= height){
    	 return;
    }
    var _tmp = ScrollBox.innerHTML.replace('holder1', 'holder')
    ScrollBox.innerHTML += _tmp;
    ScrollBox.onmouseover = function(){pause = true}
    ScrollBox.onmouseout = function(){pause = false}
    ScrollBox.scrollTop = 0;
    function start(){
        scrollT = setInterval(scrolling,speed);
        if(!pause) ScrollBox.scrollTop += 2;
    }
    function scrolling(){
        if(ScrollBox.scrollTop % height != 0){
            ScrollBox.scrollTop += 2;
            if(ScrollBox.scrollTop >= ScrollBox.scrollHeight/2) ScrollBox.scrollTop = 0;
        }
        else{
            clearInterval(scrollT);
            setTimeout(start,delay);
        }
    }
    setTimeout(start,delay);
}
marquee(42,30,3000);

//倒计时
var timeLeftnewuser = 0;
var newuserstatus = Number('');
function timeDownwbq() {
    if (timeLeftnewuser < 86400 & timeLeftnewuser > 0) {
        var minLeft1 = Number(parseInt(timeLeftnewuser % 3600 / 60 / 10)).toString();//分钟第一位
        var minLeft2 = Number(parseInt(timeLeftnewuser % 3600 / 60 % 10)).toString();//分钟数第二位
        var secLeft1 = Number(parseInt(timeLeftnewuser % 3600 % 60 / 10)).toString(); //秒第一位
        var secLeft2 = Number(parseInt(timeLeftnewuser % 10)).toString();//秒第二位
        $('.mo2-wbqDay').hide(); //隐藏天
        $('.mo2-wbqSec').show(); //显示秒
        $('.mo2-wbqHou').children('i').html(parseInt(timeLeftnewuser / 3600)); //小时
        $('.mo2-wbqMin').children('i').html(minLeft1 + minLeft2); //分钟
        $('.mo2-wbqSec').children('i').html(secLeft1 + secLeft2); //秒
        timeLeftnewuser--;
        setTimeout("timeDownwbq()", 1000); //设置1秒以后执行一次本函数
    }
    else if (timeLeftnewuser >= 86400) {
        var houLeft1 = Number(parseInt(timeLeftnewuser % 86400 / 3600 / 10)).toString();//小时第一位
        var houLeft2 = Number(parseInt(timeLeftnewuser % 86400 / 3600 % 10)).toString();//小时数第二位
        var minLeft1 = Number(parseInt(timeLeftnewuser % 86400 % 3600 / 60 / 10)).toString();//分钟第一位
        var minLeft2 = Number(parseInt(timeLeftnewuser % 86400 % 3600 / 60 % 10)).toString();//分钟数第二位
        $('.mo2-wbqDay').show(); //隐藏天
        $('.mo2-wbqSec').hide(); //显示秒
        $('.mo2-wbqDay').children('i').html(parseInt(timeLeftnewuser / 86400)); //天
        $('.mo2-wbqHou').children('i').html(houLeft1 + houLeft2); //小时
        $('.mo2-wbqMin').children('i').html(minLeft1 + minLeft2); //分钟
        timeLeftnewuser--;
        setTimeout("timeDownwbq()", 1000); //设置1秒以后执行一次本函数
    }
    else if (timeLeftnewuser == 0) {
        $('.mo2-wbqDay').hide(); //隐藏天
        $('.mo2-wbqSec').show(); //显示秒
        $('.mo2-wbqHou').children('i').html(0); //小时
        $('.mo2-wbqMin').children('i').html('00'); //分钟
        $('.mo2-wbqSec').children('i').html('00'); //秒

        $('.mo2-indWbqtim').hide();
        $('.mo2-wbqProc').show();
        if (newuserstatus == 1) {
            $('.mo2-wbqBtn a').html('已满额');
            $('.mo2-wbqBtn a').addClass('mo2-btnGery');
            $('.mo2-wbqProcess b u').css('color','#ccc');
            $('.mo2-wbqProcess b i').css('background-color','#ccc');
            $('.mo2-wbqProcess b u em').css('background','url(statics/home2/images/m2-indexIcon.png) no-repeat -288px -30px');
        } else {
            $('.mo2-wbqBtn a').html('立即投资');
            $('.mo2-wbqBtn a').removeClass('mo2-btnGery');
        }
    }

}
timeDownwbq();

//倒计时
var timeLeftpri = 0;
var pristatus = Number('3');
function timeDownpri() {
    if (timeLeftpri < 86400 & timeLeftpri > 0) {
        var minLeft1 = Number(parseInt(timeLeftpri % 3600 / 60 / 10)).toString();//分钟第一位
        var minLeft2 = Number(parseInt(timeLeftpri % 3600 / 60 % 10)).toString();//分钟数第二位
        var secLeft1 = Number(parseInt(timeLeftpri % 3600 % 60 / 10)).toString(); //秒第一位
        var secLeft2 = Number(parseInt(timeLeftpri % 10)).toString();//秒第二位
        $('.mo2-priDay').hide(); //隐藏天
        $('.mo2-priSec').show(); //显示秒
        $('.mo2-priHou').children('i').html(parseInt(timeLeftpri / 3600)); //小时
        $('.mo2-priMin').children('i').html(minLeft1 + minLeft2); //分钟
        $('.mo2-priSec').children('i').html(secLeft1 + secLeft2); //秒
        timeLeftpri--;
        setTimeout("timeDownpri()", 1000); //设置1秒以后执行一次本函数
    }
    else if (timeLeftpri >= 86400) {
        var houLeft1 = Number(parseInt(timeLeftpri % 86400 / 3600 / 10)).toString();//小时第一位
        var houLeft2 = Number(parseInt(timeLeftpri % 86400 / 3600 % 10)).toString();//小时数第二位
        var minLeft1 = Number(parseInt(timeLeftpri % 86400 % 3600 / 60 / 10)).toString();//分钟第一位
        var minLeft2 = Number(parseInt(timeLeftpri % 86400 % 3600 / 60 % 10)).toString();//分钟数第二位
        $('.mo2-priDay').show(); //隐藏天
        $('.mo2-priSec').hide(); //显示秒
        $('.mo2-priDay').children('i').html(parseInt(timeLeftpri / 86400)); //天
        $('.mo2-priHou').children('i').html(houLeft1 + houLeft2); //小时
        $('.mo2-priMin').children('i').html(minLeft1 + minLeft2); //分钟
        timeLeftpri--;
        setTimeout("timeDownpri()", 1000); //设置1秒以后执行一次本函数
    }
    else if (timeLeftpri == 0) {
        $('.mo2-priDay').hide(); //隐藏天
        $('.mo2-priSec').show(); //显示秒
        $('.mo2-priHou').children('i').html(0); //小时
        $('.mo2-priMin').children('i').html('00'); //分钟
        $('.mo2-priSec').children('i').html('00'); //秒

        $('.mo2-indPritim').hide();
        $('.mo2-priProc').show();
        if (pristatus == 2||pristatus == 7||pristatus == 11) {
            $('.mo2-priBtn a').html('已满额');
            $('.mo2-priBtn a').addClass('mo2-btnGery');
            $('.mo2-priProcess b u').css('color','#ccc');
            $('.mo2-priProcess b i').css('background-color','#ccc');
            $('.mo2-priProcess b u em').css('background','url(statics/home2/images/m2-indexIcon.png) no-repeat -288px -30px');
        } else {
            $('.mo2-priBtn a').html('立即投资');
            $('.mo2-priBtn a').removeClass('mo2-btnGery');
        }
    }

}

timeDownpri();

//活动加息
$(".huodongjiaxi").mouseover(function(){
    $(this).parent().find(".jiaxishow").show();
})
$(".huodongjiaxi").mouseout(function(){
    $(this).parent().find(".jiaxishow").hide();
})

 $(function () {
    // 爱车贷滑入效果
    $('.mo2-indCarlist').mouseenter(function () {
        $(this).children('.mo2-indCartop').children('.mo2-indCartop-rig').children('ul').stop().animate({top: "-36px"}, 250);
    });
    $('.mo2-indCarlist').mouseleave(function () {
        $(this).children('.mo2-indCartop').children('.mo2-indCartop-rig').children('ul').stop().animate({top: "0px"}, 250);
    });
});

$(function () {
    carListpage();
});
function carListpage() {
    var ulLeft = 0;
    var maxLeft = ($('.mo2-indCarlist').length - 3) * 341;
    $('.mo2-indCarlist-next').click(function () {
        if (ulLeft > -maxLeft) {
            ulLeft -= 341;
            $('.mo2-indCar').animate({left: ulLeft}, 400);
        }
    });

    $('.mo2-indCarlist-prev').click(function () {
        if (ulLeft < 0) {
            ulLeft += 341;
            $('.mo2-indCar').animate({left: ulLeft}, 400);
        }
    });
}

//活动加息
$(".huodongjiaxi").mouseover(function(){
    $(this).parent().find(".jiaxishow").show();
})
$(".huodongjiaxi").mouseout(function(){
    $(this).parent().find(".jiaxishow").hide();
})

 $(function(){
    // 爱房贷滑入效果
    $('.mo2-indHoulist').mouseenter(function(){
        $(this).children('.mo2-indHoutop').children('.mo2-indHoutop-rig').children('ul').stop().animate({top:"-36px"},250);
    });
    $('.mo2-indHoulist').mouseleave(function(){
        $(this).children('.mo2-indHoutop').children('.mo2-indHoutop-rig').children('ul').stop().animate({top:"0px"},250);
    });
});



$(function(){
    houListpage();
});
function houListpage(){
    var ulLeft=0;
    var maxLeft=($('.mo2-indHoulist').length-3)*341;
    $('.mo2-indHoulist-next').click(function(){
        if (ulLeft>-maxLeft) {
            ulLeft-=341;
            $('.mo2-indHou').animate({left:ulLeft},400);
        }
    });

    $('.mo2-indHoulist-prev').click(function(){
        if (ulLeft<0) {
            ulLeft+=341;
            $('.mo2-indHou').animate({left:ulLeft},400);
        }
    });
}

//活动加息
$(".huodongjiaxi").mouseover(function(){
    $(this).parent().find(".jiaxishow").show();
})
$(".huodongjiaxi").mouseout(function(){
    $(this).parent().find(".jiaxishow").hide();
})

 $(function(){
    // 消费金融滑入效果
    $('.mo2-indFinlist').mouseenter(function(){
        $(this).children('.mo2-indFintop').children('.mo2-indFintop-rig').children('ul').stop().animate({top:"-36px"},250);
    });
    $('.mo2-indFinlist').mouseleave(function(){
        $(this).children('.mo2-indFintop').children('.mo2-indFintop-rig').children('ul').stop().animate({top:"0px"},250);
    });
});

$(function(){
    finListpage();
});
function finListpage(){
    var ulLeft=0;
    var maxLeft=($('.mo2-indFinlist').length-3)*341;
    $('.mo2-indFinlist-next').click(function(){
        if (ulLeft>-maxLeft) {
            ulLeft-=341;
            $('.mo2-indFin').animate({left:ulLeft},400);
        }
    });

    $('.mo2-indFinlist-prev').click(function(){
        if (ulLeft<0) {
            ulLeft+=341;
            $('.mo2-indFin').animate({left:ulLeft},400);
        }
    });
}

//活动加息提示
$(".huodongjiaxi").mouseover(function(){
    $(this).parent().find(".jiaxishow").show();
})
$(".huodongjiaxi").mouseout(function(){
    $(this).parent().find(".jiaxishow").hide();
})

var transfer_id = [];
var transfer_left = [];
var sale_price = [];
var invest_limit = [];
var transfer_paylist = [];
var transfer_income = [];
var transfer_borrowname = [];
var transfer_money = [];
var transfer_num = [];

transfer_id[Number("1")] = Number("12204");
transfer_left[Number("1")] = Number("800");
sale_price[Number("1")] = Number("101.13");
invest_limit[Number("1")] = Number("100");

transfer_paylist[Number("1")] = eval('([{"day":351,"interest":12.02,"pay_date":"2017-08-22"}])');
transfer_income[Number("1")] = Number("10.89");
transfer_borrowname[Number("1")] = '娱乐帮-电视剧《惊天岳雷》投资项目-2';
transfer_money[Number("1")] = Number(0);
transfer_num[Number("1")] = Number(0);


transfer_id[Number("2")] = Number("12163");
transfer_left[Number("2")] = Number("100");
sale_price[Number("2")] = Number("100.78");
invest_limit[Number("2")] = Number("100");

transfer_paylist[Number("2")] = eval('([{"day":27,"interest":0.95,"pay_date":"2016-10-02"},{"day":"31","interest":1.02,"pay_date":"2016-11-02"},{"day":"30","interest":0.99,"pay_date":"2016-12-02"},{"day":"31","interest":1.02,"pay_date":"2017-01-02"},{"day":"31","interest":1.02,"pay_date":"2017-02-02"},{"day":"28","interest":0.92,"pay_date":"2017-03-02"},{"day":"31","interest":1.02,"pay_date":"2017-04-02"},{"day":"30","interest":0.99,"pay_date":"2017-05-02"},{"day":"31","interest":1.02,"pay_date":"2017-06-02"},{"day":"30","interest":0.99,"pay_date":"2017-07-02"},{"day":"31","interest":1.09,"pay_date":"2017-08-02"}])');
transfer_income[Number("2")] = Number("10.25");
transfer_borrowname[Number("2")] = '易安家长租公寓项目20160801-1';
transfer_money[Number("2")] = Number(0);
transfer_num[Number("2")] = Number(0);


transfer_id[Number("3")] = Number("12175");
transfer_left[Number("3")] = Number("34900");
sale_price[Number("3")] = Number("102.12");
invest_limit[Number("3")] = Number("100");

transfer_paylist[Number("3")] = eval('([{"day":296,"interest":10.96,"pay_date":"2017-06-28"}])');
transfer_income[Number("3")] = Number("8.84");
transfer_borrowname[Number("3")] = '娱乐帮-电视剧《海上嫁女记》投资项目-1';
transfer_money[Number("3")] = Number(0);
transfer_num[Number("3")] = Number(0);

transfer_id[Number("4")] = Number("12203");
transfer_left[Number("4")] = Number("500");
sale_price[Number("4")] = Number("101.6");
invest_limit[Number("4")] = Number("100");

transfer_paylist[Number("4")] = eval('([{"day":351,"interest":12.02,"pay_date":"2017-08-22"}])');
transfer_income[Number("4")] = Number("10.42");
transfer_borrowname[Number("4")] = '娱乐帮-电视剧《惊天岳雷》投资项目-1';
transfer_money[Number("4")] = Number(0);
transfer_num[Number("4")] = Number(0);

transfer_id[Number("5")] = Number("12219");
transfer_left[Number("5")] = Number("20000");
sale_price[Number("5")] = Number("101.25");
invest_limit[Number("5")] = Number("100");

transfer_paylist[Number("5")] = eval('([{"day":26,"interest":0.85,"pay_date":"2016-10-01"},{"day":"31","interest":1.02,"pay_date":"2016-11-01"},{"day":"30","interest":0.99,"pay_date":"2016-12-01"},{"day":"31","interest":1.02,"pay_date":"2017-01-01"},{"day":"31","interest":1.02,"pay_date":"2017-02-01"},{"day":"28","interest":0.92,"pay_date":"2017-03-01"},{"day":"31","interest":1.02,"pay_date":"2017-04-01"},{"day":"30","interest":0.99,"pay_date":"2017-05-01"},{"day":"31","interest":1.02,"pay_date":"2017-06-01"},{"day":"30","interest":0.99,"pay_date":"2017-07-01"},{"day":"31","interest":1.02,"pay_date":"2017-08-01"},{"day":"31","interest":1.02,"pay_date":"2017-09-01"}])');
transfer_income[Number("5")] = Number("10.63");
transfer_borrowname[Number("5")] = '致胜地产长租公寓项目—装修';
transfer_money[Number("5")] = Number(0);
transfer_num[Number("5")] = Number(0);

//banner切换
var ulLeft;
$(function () {
    //项目列表切换
    $('.m2-indexSteplist li').click(function () {
        var stepIndex = 0;
        if ($(this).hasClass('m2-indexStep-unsel')) {
            stepIndex = $(this).index();
            $(this).addClass('m2-indexStep-sel').removeClass('m2-indexStep-unsel');
            $(this).siblings('.m2-indexStep-sel').addClass('m2-indexStep-unsel').removeClass('m2-indexStep-sel');
            $('.m2-indexStepimg-list li').eq(stepIndex).show();
            $('.m2-indexStepimg-list li').eq(stepIndex).siblings().hide();
            if (stepIndex == 0) {
                //直投
                borrowcate(0);
                $('#statistics-title').html('<i class="m2-indexStepfoot-icon"></i>项目直投统计数据');
            }else if (stepIndex == 1) {
                //债转
                transcate();
                $('.m2-indexStepfoot').hide();
            }
            ulLeft = 0;
            $('.m2-indexItemlist').animate({left: ulLeft}, 400);
        }
    });
    //项目分类显示
    borrowcate(0);
    function borrowcate(cate) {
        $('.trans').hide();
        $('.borrow').show();
        $('.m2-indexStepfoot').show();
        if ($('#statistics-' + cate).data('bnum') > 0) {
            $('#statistics-bnum').text($('#statistics-' + cate).data('bnum'));
            $('#statistics-pnum').text($('#statistics-' + cate).data('pnum'));
            $('#statistics-inum').text($('#statistics-' + cate).data('inum'));
        } else {
            $('#statistics-bnum').text(0);
            $('#statistics-pnum').text(0);
            $('#statistics-inum').text(0);
        }
    }
    //显示债转
    function transcate() {
        $('.trans').show();
        $('.borrow').hide();
    }
    //项目列表翻页
    itemListpage();
    //视频列表翻页
    vodListpage();
    //新闻列表tab切换
    $('.m2-indNewstablist li').click(function () {
        if ($(this).hasClass('m2-indNewtab-unsel')) {
            $(this).addClass('m2-indNewtab-sel').removeClass('m2-indNewtab-unsel');
            $(this).siblings('.m2-indNewtab-sel').addClass('m2-indNewtab-unsel').removeClass('m2-indNewtab-sel');
        }
    });
    // 新闻列表tab切换下方展示
    $('.m2-indNewstablist li').click(function () {
        if ($(this).index() == 0) {
            //媒体报道
            $('.newslist').hide();
            $('#newslist1').show();
            $('#article-more').prop('href', 'meitibaodao_aiqianbang_licaiwang/');
        } else if ($(this).index() == 1) {
            //行业动态
            $('.newslist').hide();
            $('#newslist2').show();
            $('#article-more').prop('href', 'touzi_licaiwang_xinwendongtai/');
        } else if ($(this).index() == 2) {
            //网站公告
            $('.newslist').hide();
            $('#newslist3').show();
            $('#article-more').prop('href', 'aiqianbang_licaiwang_gonggao/');
        } else if ($(this).index() == 3) {
            //网站公告
            $('.newslist').hide();
            $('#newslist4').show();
            $('#article-more').prop('href', 'aiqianbang_touzi_licai_chanpin_gonggao/');
        } else if ($(this).index() == 4) {
            //还款公告
            $('.newslist').hide();
            $('#newslist5').show();
            $('#article-more').prop('href', 'aiqianbang_touzi_licai_chanpin_jieshu_gonggao/');
        } else if ($(this).index() == 5) {
            //活动公告=爱钱帮动态
            $('.newslist').hide();
            $('#newslist6').show();
            $('#article-more').prop('href', 'aiqianbang_licaiwang_xinwendongtai/');
        } else if ($(this).index() == 6) {
            //活动公告=爱钱帮动态
            $('.newslist').hide();
            $('#newslist7').show();
            $('#article-more').prop('href', 'touzi_licaijianyi/');
        }
    });
    
    // 视频播放
    $('.m2-indVodlist li').click(function () {
        $('.m2-indVoditem').remove();
        var vedio = $(this).attr("videvalue");  
        $('.m2-indexVod-con').prepend('<div class="m2-indVoditem"><i></i><video class="m2-indexVideo" data-setup="{}" preload="none" loop="false" controls="controls"><source src="' + vedio + '" type="video/mp4">您的浏览器版本过低,不能播放此视频</video></div>');
        $('.m2-indexVideo').attr("autoplay", "autoplay");
        closeVideo();
    });
    function closeVideo() {
        $('.m2-indVoditem i').click(function () {
            $('.m2-indVoditem').remove();
        })
    }
});

//项目列表翻页
function itemListpage() {
    ulLeft = 0;
    $('.m2-indexItemlist-next').click(function () {
        var maxLeft = ($('.m2-indexItemlist li:visible').length - 3) * 341;
        if (ulLeft > -maxLeft) {
            ulLeft -= 341;
            $('.m2-indexItemlist').animate({left: ulLeft}, 400);
        }
    });
    $('.m2-indexItemlist-prev').click(function () {
        if (ulLeft < 0) {
            ulLeft += 341;
            $('.m2-indexItemlist').animate({left: ulLeft}, 400);
        }
    });
}

//视频列表翻页
function vodListpage() {
    var ulLeft = 0;
    var maxLeft = ($('.m2-indVodlist li').length - 4) * 220;
    $('.m2-indexVodbtn-next').click(function () {
        if (ulLeft > -maxLeft) {
            ulLeft -= 220;
            $('.m2-indVodlist').animate({left: ulLeft}, 300);
        }
    });
    $('.m2-indexVodbtn-prev').click(function () {
        if (ulLeft < 0) {
            ulLeft += 220;
            $('.m2-indVodlist').animate({left: ulLeft}, 300);
        }
    });
}

//圆环进度条
$(function () {
    //加载进度条
    $(".m2-indKnob").knob();
    //显示进度条百分比
    $('.m2-indPercent').each(function () {
        $(this).html($(this).siblings().children('input').attr('value') + "%");
    })
});


//倒计时
var timeLeft = Number('0');
function timeDown() {
    if (timeLeft < 86400 & timeLeft > 0) {
        var minLeft1 = Number(parseInt(timeLeft % 3600 / 60 / 10)).toString(); //分钟第一位
        var minLeft2 = Number(parseInt(timeLeft % 3600 / 60 % 10)).toString(); //分钟数第二位
        var secLeft1 = Number(parseInt(timeLeft % 3600 % 60 / 10)).toString(); //秒第一位
        var secLeft2 = Number(parseInt(timeLeft % 10)).toString(); //秒第二位
        $('.m2-invDay').hide(); //隐藏天
        $('.m2-invSec').show(); //显示秒
        $('.m2-invHou').children('i').html(parseInt(timeLeft / 3600)); //小时
        $('.m2-invMin').children('i').html(minLeft1 + minLeft2); //分钟
        $('.m2-invSec').children('i').html(secLeft1 + secLeft2); //秒
        timeLeft--;
        setTimeout("timeDown()", 1000); //设置1秒以后执行一次本函数
    }
    else if (timeLeft >= 86400) {
        var houLeft1 = Number(parseInt(timeLeft % 86400 / 3600 / 10)).toString(); //小时第一位
        var houLeft2 = Number(parseInt(timeLeft % 86400 / 3600 % 10)).toString(); //小时数第二位
        var minLeft1 = Number(parseInt(timeLeft % 86400 % 3600 / 60 / 10)).toString(); //分钟第一位
        var minLeft2 = Number(parseInt(timeLeft % 86400 % 3600 / 60 % 10)).toString(); //分钟数第二位
        $('.m2-invDay').show(); //隐藏天
        $('.m2-invSec').hide(); //显示秒
        $('.m2-invDay').children('i').html(parseInt(timeLeft / 86400)); //天
        $('.m2-invHou').children('i').html(houLeft1 + houLeft2); //小时
        $('.m2-invMin').children('i').html(minLeft1 + minLeft2); //分钟
        timeLeft--;
        setTimeout("timeDown()", 1000); //设置1秒以后执行一次本函数
    }
    else if (timeLeft == 0) {
        $('.m2-invDay').hide(); //隐藏天
        $('.m2-invSec').show(); //显示秒
        $('.m2-invHou').children('i').html(0); //小时
        $('.m2-invMin').children('i').html('00'); //分钟
        $('.m2-invSec').children('i').html('00'); //秒
    }

}

timeDown();



var account_money = Number("");
var transfer_index = 0;
//债转金额改变
$('.transfer-money').keyup(function () {
    transfer_index = $(this).data('index');
    var money = $(this).val();
    transferValidation(money);
});
//计算器债转金额改变
$('#transfer_money1').keyup(function () {
    var money = $(this).val();
    transferValidation(money);
});
//全用
$('.invest_all').click(function () {
    transferValidation(account_money, true);
});
$('.m2-indTrabtn-all').click(function () {
    transfer_index = $(this).data('index');
    transferValidation(account_money, true);
});
//债转金额处理
function transferValidation(money, flag) {
    if (!isNaN(money)) {
        var im = Number(money);
        if (transfer_left[transfer_index] > 0 && im > transfer_left[transfer_index]) {
            im = transfer_left[transfer_index];
        }
        if (flag) {
            im = im < invest_limit[transfer_index] ? invest_limit[transfer_index] : Math.floor(im / invest_limit[transfer_index]) * invest_limit[transfer_index];
        }
        transfer_money[transfer_index] = im;
        transfer_num[transfer_index] = Math.floor(transfer_money[transfer_index] / invest_limit[transfer_index]);
    }
    transferSync();
}
// 债转弹出层
$('.trans-cal-icon').click(function () {
    transfer_index = $(this).data('index');
    transferSync();
    $('.m2-tranBg,.m2-tranHide').show();
    $('.m2-tranHide').css('top', $(document).scrollTop() + 90);
});
//计算器还款列表
function transferPayList() {
    $('#trans-pay-list').html('');
    var arr = transfer_paylist[transfer_index];
    for (var i in arr) {
        var li = '<li>';
        li += '<div class="m2-tranHide-det m2-tranHide-day">计息天数:<span>' + arr[i]['day'] + '天</span></div>';
        li += '<div class="m2-tranHide-det m2-tranHide-tim">支付时间:<span>' + arr[i]['pay_date'] + '</span></div>';
        li += '<div class="m2-tranHide-det m2-tranHide-num">支付利息:<span class="list-interest" data-interest="' + arr[i]['interest'] + '">' + arr[i]['interest'] + '元</span></div>';
        li += '</li>';
        $('#trans-pay-list').append(li);
    }
}
//界面同步
function transferSync() {
    transferPayList();
    $('#transfer_money_' + transfer_index).val(transfer_money[transfer_index]);
    $('#transfer_money1').val(transfer_money[transfer_index]);
    $('#transfer_money2').text(transfer_money[transfer_index] + '元');
    $('#transfer_money3').text(transfer_money[transfer_index] + '元');
    $('#transfer_limit').text(invest_limit[transfer_index] + '元');
    $('#trans-borrow-name').html('<span>所选项目：</span>' + transfer_borrowname[transfer_index]);
    $('#transfer-income').text((Math.round(transfer_income[transfer_index] * transfer_money[transfer_index]) / 100) + '元');
    $('.list-interest').each(function () {
        var itm = Math.round(Number($(this).data('interest')) * transfer_money[transfer_index]) / 100;
        $(this).html(itm + '元');
    });
}
//提交债转
$('.transfer-submit').click(function () {
    transfer_index = $(this).data('index');
    transferValidation(transfer_money[transfer_index], true);
    $('#form_transfer_num').val(transfer_num[transfer_index]);
    $('#form_transfer_id').val(transfer_id[transfer_index]);
    if (transfer_num[transfer_index] * sale_price[transfer_index] < account_money) {
        confirmDialog('invest');
    } else {
        confirmDialog('charge');
    }
});
//债转提示
function confirmDialog(action) {
    var content = '<p class="m2-detConfirm-nor">尊敬的用户：</p>';
    if (action === 'charge') {
        $('#msgtitle').text('充值确认');
        content += '<p class="m2-detConfirm-nor">此债权最小承接金额为' + invest_limit[transfer_index] + '元</p>';
        content += '<p class="m2-detConfirm-nor">您承接金额为<span style="color:#f48a3f;">' + transfer_money[transfer_index] + '</span>元</p>';
        content += '<p class="m2-detConfirm-nor">债权售价为<span style="color:#f48a3f;">' + transfer_num[transfer_index] * sale_price[transfer_index] + '</span>元</p>';
        content += '<p class="m2-detConfirm-nor">您的账户金额不足，去充值吗?</p>';
        $('#msgcontent').html(content);
        $('#msgbtn1').hide();
        $('#msgbtn2').hide();
        $('#msgbtn3').show();
    } else if (action === 'invest') {
        $('#msgtitle').text('承接确认');
        content += '<p class="m2-detConfirm-nor">此债权最小承接金额为' + invest_limit[transfer_index] + '元</p>';
        content += '<p class="m2-detConfirm-nor">您承接金额为<span style="color:#f48a3f;">' + transfer_money[transfer_index] + '</span>元</p>';
        content += '<p class="m2-detConfirm-nor">债权售价为<span style="color:#f48a3f;">' + transfer_num[transfer_index] * sale_price[transfer_index] + '</span>元</p>';
        content += '<p class="m2-detConfirm-nor">您确认承接吗?</p>';
        $('#msgcontent').html(content);
        $('#msgbtn1').hide();
        $('#msgbtn2').show();
        $('#msgbtn3').hide();
    }
    $('.m2-detConfirm,.m2-tranBg').show();
}
//关闭弹窗
$('.m2-detConfirm-close,.m2-detConfirm-btn a').click(function () {
    $('.m2-detConfirm,.m2-tranBg').hide();
});

document.onkeydown=function(event){
    var e = event || window.event || arguments.callee.caller.arguments[0];
    if(e && e.keyCode==13){
        login();
    }
};

//活动加息
$(".huodongjiaxi").mouseover(function(){
    $(this).parent().find(".jiaxishow").css("display","block");
})
$(".huodongjiaxi").mouseout(function(){
    $(this).parent().find(".jiaxishow").hide();
})

//全局变量
var GV = {
    DIMAUB: "",
    JS_ROOT: "/Finances/statics/front/statics/home/js/",
    TOKEN: "6666cd76f96956469e7be39d750cc7d9_ee70776ff5a128756690de65b1bc04be",
    THIS_URL: "Index-",
    TINVEST_URL: "/invest-shownewinvest.shtml"
};
