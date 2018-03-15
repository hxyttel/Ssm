//图形验证码
if ( $("#reverifyCodeRight").length > 0 ) { 
	var verifyCode = new GVerify("reverifyCodeRight");
}

$(function(){
    // 是否存在用户
    $('#regTelRight').blur(function(){
    	var reg=/^1\d{10}$/;
    	
    	var phone = $('#regTelRight').val();
    	
    	if(phone==""){
    		return
    	}
        
    	 if (!reg.test(phone)){
        	 $("#regTelRight").shake(2, 10, 400);
        	 $("#regTelRight").val("");
             $("#regTelRight").attr('placeholder',"未填写正确");
             return;
    	 }
    	
    	postData("/Finances/front/getregpdphishave",{"phone":phone},function(d){
        	if(d.message!=' '){
                if(d.message=="此用户已存在"){
                	 $("#regTelRight").shake(2, 10, 400);
                	  $("#regTelRight").val("");
                      $("#regTelRight").attr('placeholder',d.message);
                }
              
            } 
        });
    });
});



//注册方法
function verifycodeRight(){
	var canSubmit=true;
	$("#reverifyCodeRight").siblings(".mo2-indLogwarRight").children("u").html('');
	
	if($("#vcodeRight").val().length==0){
		 $("#vcodeRight").shake(2, 10, 400);
		 $("#vcodeRight").val("");
         $("#vcodeRight").attr('placeholder',"验证码未填写");
        canSubmit = false;
	}
	
	if($("#passRight").val().length==0){
		 $("#passRight").shake(2, 10, 400);
		 $("#passRight").val("");
		 $("#passRight").attr('placeholder',"密码不能为空");
        canSubmit = false;
	}
	
	
    if($("#regTelRight").val().length==0){
         $("#regTelRight").shake(2, 10, 400);
		 $("#regTelRight").val("");
		 $("#regTelRight").attr('placeholder',"手机号不能为空");
        canSubmit = false;
    }
    
    var cc = $("#vcodeRight").val();
    if(cc!=''){
    	var res = verifyCode.validate(cc);
        if(res){
        }else{
        	 $("#vcodeRight").shake(2, 10, 400);
    		 $("#vcodeRight").val("");
    		 $("#vcodeRight").attr('placeholder',"验证码输入错误");
             canSubmit = false;
        }
    }else{
    	 $("#vcodeRight").shake(2, 10, 400);
		 $("#vcodeRight").val("");
		 $("#vcodeRight").attr('placeholder',"验证码不能为空");
         canSubmit = false;
    }
    
    if (canSubmit !== true) {
    	return false;
    }else{
        $('.mo2-indRegboxRight').css('display','none');
        $('.mo2-indRegbox2Right').css('display','block');
    }
}


function registerRight(){
    var usercode = $("#codeRight").val();
	var mycode = $("#sidbarcode").val();
	
	if(usercode=='' ){
		$("#codeRight").shake(2, 10, 400);
   	  	$("#codeRight").val("");
        $("#codeRight").attr('placeholder',"验证码不能为空");
		return;
	}
	if(usercode!=mycode){
		$("#codeRight").shake(2, 10, 400);
   	  	$("#codeRight").val("");
        $("#codeRight").attr('placeholder',"验证码未输入正确");
		return;
	}
	
	var p={"phone":$("#regTelRight").val(),"pass_word":$("#passRight").val(),"yqcode":"nowrite"};
	postData("/Finances/user/userRegister",p,function(d){
		alert(d.status);
		if(d.status==5){
			alert("插入失败");
			return false;
		}else if(d.status==1){
			/**
			 * 弹出体验框
			 * 隐藏注册框
			 * */
			 $("#newregister").show();
            $('.mo2-indRegboxRight').css('display','none');
            $('.mo2-indRegbox2Right').css('display','block');
            window.location.reload();
        }

	});
}

//登录方法
function loginRight(){
    var p = makevar(['user_nameRight','pass_wordRight','issvae']);
    var canSubmit = true;
    var issvae =2;
	//alert($('#issvae').is(':checked'));
	if($('#issvae').is(':checked')) {
		//选择
		var issvae = 1;
    }else{
    	//未选择
    	var issvae = 2;
    }
	if($('#user_nameRight').val()==""){
        $("#user_nameRight").shake(2, 10, 400);
   	  	$("#user_nameRight").val("");
        $("#user_nameRight").attr('placeholder',"用户名不能为空！");
	}else {
    	if ($('#pass_wordRight').val() == ""){
    		$("#pass_wordRight").shake(2, 10, 400);
    	   	$("#pass_wordRight").val("");
    	    $("#pass_wordRight").attr('placeholder',"用户名不能为空！");
		}else {
            $('#r_usernameRight').html('');
            $('#w_usernameRight').hide();
            $('#r_passwordRight').html('');
            $('#w_passwordRight').hide();
            var user_name = $("#user_nameRight").val();
            var pass_word = $("#pass_wordRight").val();
			postData("/Finances/user/userLogin",{'user_name':user_name,'pass_word':pass_word,'issvae':issvae},function(d){
    			if(d.status==0){
    				$("#pass_wordRight").shake(2, 10, 400);
    	    	   	$("#pass_wordRight").val("");
    	    	    $("#pass_wordRight").attr('placeholder',"用户名或密码输入错误");
        		}else if(d.status==1){
            		window.location.reload();
        		}else if(d.status==2){
        		}
			});
		}
	}
}

//发送验证码点击事件
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
        $.ajax({
            type:"POST",
            data:{"phone":$('#regTelRight').val()},
            url:"/Finances/front/getregsendphone",
            success:function(msg){
                var obj = eval('('+msg+')');
                var obj = eval(obj);
                if (obj.status == 1){
                    //mo2_regTim();
                	alert(obj.ranks);
                	$("#sidbarcode").val(obj.ranks);
                }else if(obj.status==2){
                	 $("#codeRight").shake(2, 10, 400);
            		 $("#codeRight").val("");
            		 $("#codeRight").attr('placeholder',obj.msg);
                }else {
               	 $("#codeRight").shake(2, 10, 400);
        		 $("#codeRight").val("");
        		 $("#codeRight").attr('placeholder',"请刷新页面重试");
                }
            }
        });
}


//注册登录tab切换
$('.mo2-indLogtab ul li').click(function(){
 if ($(this).hasClass('mo2-logTab-unsel')) {
     $(this).addClass('mo2-logTab-sel').removeClass('mo2-logTab-unsel');
     $(this).siblings('.mo2-logTab-sel').addClass('mo2-logTab-unsel').removeClass('mo2-logTab-sel');
 }
});

//注册登录显示隐藏
$('.mo2-indTab-reg').click(function(){
 $('.mo2-indRegboxRight').show();
 $('.mo2-indRegbox2Right').hide();
 $('.mo2-indLogboxRight').hide();
});
$('.mo2-indTab-log').click(function(){
 $('.mo2-indRegboxRight').hide();
 $('.mo2-indRegbox2Right').hide();
 $('.mo2-indLogboxRight').show();
});

jQuery.fn.shake = function (intShakes /*Amount of shakes*/, intDistance /*Shake distance*/, intDuration /*Time duration*/) {
    this.each(function () {
        var jqNode = $(this);
        jqNode.css({ position: 'relative' });
        for (var x = 1; x <= intShakes; x++) {
            jqNode.animate({ left: (intDistance * -1) }, (((intDuration / intShakes) / 4)))
            .animate({ left: intDistance }, ((intDuration / intShakes) / 2))
            .animate({ left: 0 }, (((intDuration / intShakes) / 4)));
        }
    });
    return this;
}

