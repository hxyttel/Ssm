//图形验证码
if ( $("#reverifyCode").length > 0 ) { 
	var verifyCode = new GVerify("reverifyCode");
}
$(function(){
    // 勾选注册用户协议
    $('#reverifyCode').click();
    $('.mo2-indRegagree i').click(function(){
        if ($(this).hasClass('mo2-indReg-sel')) {
            $(this).addClass('mo2-indReg-unsel').removeClass('mo2-indReg-sel');
            $('.mo2-indReg-btn a').addClass('mo2-indRegbtn-unable').removeClass('mo2-indRegbtn-able');
            $('.mo2-indReg-btn a').attr('href','javascript:void(0);')// 禁止注册链接
        }else if ($(this).hasClass('mo2-indReg-unsel')) {
            $(this).addClass('mo2-indReg-sel').removeClass('mo2-indReg-unsel');
            $('.mo2-indReg-btn a').addClass('mo2-indRegbtn-able').removeClass('mo2-indRegbtn-unable');
            $('.mo2-indReg-btn a').attr('href','javascript:void(0);')// 添加注册链接
        }
    });

    // 注册登录tab切换
    $('.mo2-indLogtab ul li').click(function(){
        if ($(this).hasClass('mo2-logTab-unsel')) {
            $(this).addClass('mo2-logTab-sel').removeClass('mo2-logTab-unsel');
            $(this).siblings('.mo2-logTab-sel').addClass('mo2-logTab-unsel').removeClass('mo2-logTab-sel');
        }
    });
    // 注册登录显示隐藏
    $('.mo2-indTab-reg').click(function(){
        $('.mo2-indRegbox').show();
        $('.mo2-indRegbox2').hide();
        $('.mo2-indLogbox').hide();
    });
    $('.mo2-indTab-log').click(function(){
        $('.mo2-indRegbox').hide();
        $('.mo2-indRegbox2').hide();
        $('.mo2-indLogbox').show();
    });
});
// 注册倒计时
var regTim =60; //剩余时间
function mo2_regTim(){
    if (regTim>0) {
        $('.mo2-indRegtim u').html(regTim+'秒后');
        regTim--;
        setTimeout("mo2_regTim()", 1000);
    }
    else if (regTim<=0) {
        regTim =60;
        $('.mo2-indRegvoi-btn').addClass('mo2-indRegvoi-able').removeClass('mo2-indRegvoi-unable');
        $('.mo2-indRegtim').addClass('mo2-regTin-able').removeClass('mo2-regTin-unable');
        $('.mo2-indRegtim span').html('重新发送');
    }
}

// 隐藏登录验证码
function hideCode(){
    $('.mo2-indLog-code').hide();
    $('.mo2-indRegbox').css('padding','')
    $('.mo2-indLogitem-use').css('margin-bottom',9);
    $('.mo2-indLogitem-psw').css('margin-bottom',22);
    $('.mo2-indRegbox').css('padding','30px 0 0px 0')
}

// 显示登录验证码
function showCode(){
    $('.mo2-indLog-code').show();
    $('.mo2-indRegbox').css('padding','14px 0 0px 0')
    $('.mo2-indLogitem-use').css('margin-bottom',6);
    $('.mo2-indLogitem-psw').css('margin-bottom',6);
}
//手机号判断
var _phone_post = 0;
$('#regTel').blur(function(){
    var reg=/^1\d{10}$/;
    if($(this).val().length > 0){
        if (!reg.test($(this).val())){
            $(this).next(".mo2-indLogwar").children("u").html('手机号格式错误');
            $(this).next(".mo2-indLogwar").show();
        }else {
            var p={"phone":$(this).val()};
            postData("/Finances/front/getregpdphishave",p,function(d){
                if(d.message!=' '){
                    $('#regTel').next(".mo2-indLogwar").children("u").html(d.message);
                    $('#regTel').next(".mo2-indLogwar").show();
                }
                if(typeof(d.message) == "undefined"){
                    $('#regTel').next(".mo2-indLogwar").children("u").html('');
                    $('#regTel').next(".mo2-indLogwar").hide();
                    _phone_post = 1;
                }
            });
        }
    }else{
        $(this).next(".mo2-indLogwar").children("u").html('');
        $(this).next(".mo2-indLogwar").hide();
    }
});

//密码判断
var _pass_keyup = 0;
$('#pass').blur(function(){
    var reg = /^[a-zA-Z0-9]*$/g;
    if ($(this).val().length>0){
        if ($(this).val().length < 6){
            $(this).next(".mo2-indLogwar").children("u").html('密码设置有误');
            $(this).next(".mo2-indLogwar").show();
        }else if ($(this).val().length > 20){
            $(this).next(".mo2-indLogwar").children("u").html('密码设置有误');
            $(this).next(".mo2-indLogwar").show();
        }else if (!reg.test($(this).val())){
            $(this).next(".mo2-indLogwar").children("u").html('密码设置有误');
            $(this).next(".mo2-indLogwar").show();
        }else {
            $(this).next(".mo2-indLogwar").children("u").html('');
            $(this).next(".mo2-indLogwar").hide();
            _pass_keyup = 1;
        }
    }else {
        $(this).next(".mo2-indLogwar").children("u").html('');
        $(this).next(".mo2-indLogwar").hide();
    }
});
//控制密码长度不能大于20
function isNumber(){
    var codeNumber=$("#pass").val();
    if((codeNumber.length>20)){
        $("#pass").val(codeNumber.substring(0,codeNumber.length-1))
    }
}
//轮播图发送验证码点击事件
$('.mo2-indRegtim').click(function(){

    if ($(this).hasClass('mo2-regTin-able')) {
        $('.mo2-indRegvoi-btn').addClass('mo2-indRegvoi-unable').removeClass('mo2-indRegvoi-able');
        $('.mo2-indRegtim').addClass('mo2-regTin-unable').removeClass('mo2-regTin-able');
        $('.mo2-indRegtim span').html('重新发送');
        sendmsg("zmlcs");
    }else {
        $('#r_code').html('请稍后点击');
        $('#w_code').show();
    }
});

//发送短信验证码
function sendmsg(zmlcs){
    if (_phone_post == 1 && _pass_keyup==1){
        $.ajax({
            type:"POST",
            data:{"phone":$('#regTel').val()},
            url:"/Finances/front/getregsendphone",
            success:function(msg){
                var obj = eval('('+msg+')');
                var obj = eval(obj);
                if (obj.status == 1){
                    mo2_regTim();
                    $("#code").siblings(".mo2-indLogwar").children("u").html("");
                    $("#code").siblings(".mo2-indLogwar").hide();
                   $("#myyzcode").val(obj.ranks);
                }else if(obj.status==2){
                    $("#code").siblings(".mo2-indLogwar").children("u").html(obj.msg);
                    $("#code").siblings(".mo2-indLogwar").show();
                }else {
                    $("#code").siblings(".mo2-indLogwar").children("u").html("发送失败");
                    $("#code").siblings(".mo2-indLogwar").show();
                }
            }
        });
    }
}
//轮播图发送语音验证码
$('.mo2-indRegvoi-btn').click(function(){
	if(1==1){
		//现在暂时关闭语音验证码功能
		return;
	}
    if ($(this).hasClass('mo2-indRegvoi-able')) {
        var reg_phone=/^1\d{10}$/;
        var _phone = 0;
        if ($("#regTel").val() == ''){
            $('#r_phone').html('请填写手机号');
            $('#w_phone').show();
        }else if ($('#regTel').val().length != 11 && !reg_phone.test($('#regTel').val())){
            $('#r_phone').html('手机号格式错误');
            $('#w_phone').show();
        }else {
            var p={"phone":$("#regTel").val(),"zml":"00008"};
            postData("/Home-Register-ckphone_new",p,function(d){
                if(d.status==0){
                    $('#r_phone').html(d.message);
                    $('#w_phone').show();
                }else if (d.status == 1){
                    $('#r_phone').html('');
                    $('#w_phone').hide();
                    var reg_pass = /^[a-zA-Z0-9]*$/g;
                    if ($('#pass').val() == ''){
                        $('#r_pass').html('请填写密码');
                        $('#w_pass').show();
                    }else if ($('#pass').val().length < 6 || $('#pass').val().length > 20 || !reg_pass.test($('#pass').val()) ){
                        $('#r_pass').html('密码设置有误');
                        $('#w_pass').show();
                    }else {
                        $('.m2-login-voice,.m2-commonBg').show();
                        $('#r_code').html('');
                        $('#w_code').hide();
                    }
                }
            });
        }
    }else {
        $('#r_code').html('请稍后点击');
        $('#w_code').show();
    }
});
//轮播图注册发送语音验证码
$('.m2-logVoi-sur').click(function(){
	if(1==1){
		//现在暂时关闭语音验证码功能
		return;
	}
    $.ajax({
        type:"POST",
        data:{"phone":$('#regTel').val(),"code":$('#vcode').val(),"type":1,"zml":"hhh"},
        url:"/home-register-sendphone",
        success:function(msg){
            var obj = eval('('+msg+')');
            var obj = eval(obj);
            if(obj.status == 1){
                $('.mo2-indRegvoi-btn').addClass('mo2-indRegvoi-unable').removeClass('mo2-indRegvoi-able');
                $('.mo2-indRegtim').addClass('mo2-regTin-unable').removeClass('mo2-regTin-able');
                $('.mo2-indRegtim span').html('重新发送');
                mo2_regTim();
            }else{
                $("#code").siblings(".mo2-indLogwar").children("u").html("发送失败!");
                $("#code").siblings(".mo2-indLogwar").show();
            }
        }
    });
});
//图形验证码刷新
$('.mo2-indReg-refresh').click(function(){
    $('#reverifyCode').click();
});
//轮播图判断验证码是否为空
var _code_blur = 0;
$("#code").blur(function(){
    if ($(this).val().length > 0){
        if ($(this).val().length != 6){
            $("#code").siblings(".mo2-indLogwar").children("u").html('验证码错误！');
            $("#code").siblings(".mo2-indLogwar").show();
        }else {
            _code_blur = 1;
        }
    }else{
        $("#code").siblings(".mo2-indLogwar").children("u").html('');
        $("#code").siblings(".mo2-indLogwar").hide();
    }
});

//轮播图的真正注册
function registeraaa(){
    if ($('.mo2-indReg-btn a').hasClass('mo2-indRegbtn-able')){
        var canSubmit=true;
        if($("#code").val().length==0){
            $("#code").siblings(".mo2-indLogwar").children("u").html("验证码不能为空");
            $("#code").siblings(".mo2-indLogwar").show();
            canSubmit = false;
        }
        
        var usercode = $("#code").val();
    	var mycode = $("#myyzcode").val();
    	//alert("正确验证码"+mycode);
    	if(usercode=='' ){
    		return;
    	}
    	if(usercode!=mycode){
    		alert("验证码输入不相同");
    		return;
    	}
        
        if (canSubmit !== true) return false;
        var p={"phone":$("#regTel").val(),"pass_word":$("#pass").val(),"yqcode":"nowrite"};
        postData("/Finances/user/userRegister",p,function(msg){
            if (msg.status == 1){
                $("#newregister").show();//显示注册成功领取奖励金页面
                //用户详情显示，注册登入关闭
                //$(".mo2-indLoged").show();
                //$(".mo2-indLogreg").hide();
                window.location.reload();
            }else if (msg.status == 0){
                $("#code").siblings(".mo2-indLogwar").children("u").html(msg.message);
                $("#code").siblings(".mo2-indLogwar").show();
            }else if (msg.status == 2){
                $("#code").siblings(".mo2-indLogwar").children("u").html(msg.message);
                $("#code").siblings(".mo2-indLogwar").show();
            }
        });
    }
}
//轮播图的注册
function verifycode(){
    if ($('.mo2-indReg-btn a').hasClass('mo2-indRegbtn-able')){
        var canSubmit=true;
        $("#reverifyCode").siblings(".mo2-indLogwar").children("u").html('');
        if($("#vcode").val().length==0){
            $("#reverifyCode").siblings(".mo2-indLogwar").children("u").html("验证码不能为空");
            $("#reverifyCode").siblings(".mo2-indLogwar").show();
            canSubmit = false;
        }
        if($("#regTel").val().length==0){
            $("#regTel").next(".mo2-indLogwar").children("u").html("手机号不能为空");
            $("#regTel").next(".mo2-indLogwar").show();
            canSubmit = false;
        }
        if($("#pass").val().length==0){
            $("#pass").next(".mo2-indLogwar").children("u").html("密码不能为空");
            $("#pass").next(".mo2-indLogwar").show();
            canSubmit = false;
        }
        var cc = $("#vcode").val();
        if(cc!=''){
        	var res = verifyCode.validate(cc);
            if(res){
            }else{
            	 $("#reverifyCode").siblings(".mo2-indLogwar").children("u").html("验证码未填写正确");
                 $("#reverifyCode").siblings(".mo2-indLogwar").show();
                 canSubmit = false;
            }
        }
        
        $(".mo2-indRegbox .mo2-indLogwar u").each(function(){
            if($(this).html().length>0){
                canSubmit = false;
            }
        });
        if (canSubmit !== true) {
        	return false;
        }
        //这里默认设置,这里只是可以ajax判断图形码是否正确,registeraaa才是真正注册方法
            if(1==1){
                $("#reverifyCode").siblings(".mo2-indLogwar").children("u").html('');
                $("#reverifyCode").siblings(".mo2-indLogwar").hide();
                $('.mo2-indRegbox').css('display','none');
                $('.mo2-indRegbox2').css('display','block');
            }else{
                $("#reverifyCode").siblings(".mo2-indLogwar").children("u").html(d.message);
                $("#reverifyCode").siblings(".mo2-indLogwar").show();
                return false;
            }
    }
}
//未找到
function oklinklogin(){
    window.open('thirdparty-oklink-oauth_getcode');
}
//轮播图登入
$('#user_name').blur(function(){
    if ($(this).val().length > 0){
        if ($(this).val().lenght < 6){
            $('#r_usernameMain').html('用户名长度错误');
            $('#w_usernameMain').show();
        }else{
            $('#r_usernameMain').html('');
            $('#w_usernameMain').hide();
        }
    }else {
        $('#r_usernameMain').html('');
        $('#w_usernameMain').hide();
    }
});
//轮播图密码判断
$('#pass_word').blur(function(){
    if ($(this).val().length > 0){
        if ($(this).val().length < 6 || $(this).val().length >20){
            $('#r_passwordMain').html('密码格式错误');
            $('#w_passwordMain').show();
        }
    }else {
        $('#r_passwordMain').html('');
        $('#w_passwordMain').hide();
    }
});
//轮播图登入
function login(){
    var p = makevar(['user_name','pass_word','issvae']);
    var canSubmit = true;
    p.issvae =2;
	if($('#issvae').is(':checked')) {
		//选择
		p.issvae = 1;
    }else{
    	//未选择
    	p.issvae = 2;
    }
    if($('#user_name').val()==""){
        $('#r_usernameMain').html('用户名不能为空');
        $('#w_usernameMain').show();
    }else if($('#user_name').val().lenght <6){
        $('#r_usernameMain').html('用户名长度错误');
        $('#w_usernameMain').show();
    }else {
        if ($('#pass_word').val() == ""){
            $('#r_passwordMain').html('密码不能为空');
            $('#w_passwordMain').show();
        }else if ($('#pass_word').val().length < 6 || $('#pass_word').val().length > 20){
            $('#r_passwordMain').html('密码长度错误');
            $('#w_passwordMain').show();
        }else {
            $('#r_usernameMain').html('');
            $('#w_usernameMain').hide();
            $('#r_passwordMain').html('');
            $('#w_passwordMain').hide();
            postData("/Finances/user/userLogin",p,function(d){
                if(d.status==0){
                    $('#r_usernameMain').html(d.message);
                    $('#w_usernameMain').show();
                }else if(d.status==6){
//					showLoginDialog(d.mycoin,11);
                    window.location.reload();
                }else if(d.status==1){
                	//登入成功返回的状态码
                    window.location.reload();
                }else if(d.status==2){
                    //window.location.href = "dashiji_show.html#15319.html";
                }
            });
        }
    }
}
