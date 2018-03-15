<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
	    <meta name="keywords" content="高收益理财产品,理财投资,网络投资理财平台,网贷理财,互联网金融,投资理财平台,投资理财,赚钱,小额投资理财,如何投资理财,投资理财知识,投资理财,北京p2p理财">
	    <meta name="description" content="爱钱帮可以为您赚钱的网络投资理财平台，为投资理财用户和贷款用户两端提供公平、透明、安全、高效的网贷理财服务，爱钱帮互联网金融中网贷投资理财平台的最好的选择。">
	    <title>找回密码 | 亿信金融 </title>
	    <!--[if lt IE 9]>
	    <script src="statics/newcommon/js/html5shiv.js"></script>
	    <![endif]-->
	    <link  rel="Shortcut  Icon"  href="/Finances/statics/other/lco/6.png">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-commonNew.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/m2-main.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-common.css">
	    <script type="text/javascript" src="/Finances/statics/front/statics/home/js/jquery.min.js"></script>
	    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/common.js"></script>
	    <link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/m2-login.css">
	    <script type="text/javascript" src="/Finances/statics/front/statics/common/js/common.js"></script>
	    <!-- 图形验证码 -->
		<script src="/Finances/statics/front/js/gVerify.js"></script>
	</head>
	<body>
	<!--公共提示框start-->
	    <div class="m2-pwdBg" style='display:none;z-index:9000'></div>
	    <div class="m2-pwdConfirm" style='display:none;z-index:9001'>
	        <i class="m2-pwdConfirm-close"></i>
	        <i class="m2-pwdConfirm-ture" id='dialog-status'></i>
	        <div class="m2-pwdConfirm-con"></div>
	    </div>
	    <style type="text/css">
	        .myloginmask {position:fixed;top: 0;left: 0;right: 0;bottom: 0;background-color: black;display: none;opacity: 0.7;z-index: 800;filter:alpha(opacity=70)}
	        .mylogin {position:   fixed;top: 50%;left: 50%;margin-top: -346px;margin-left: -260px;width: 520px;height: 496px;background-image: url("/Finances/statics/front/statics/home2/images/login/login_info.png");background-repeat: no-repeat;z-index: 1000;display: none;}
	        .mylogin .topcontent {font-weight:bold;text-align: center;color: #666666;font-size: 18px;padding-top: 284px;line-height: 36px;}
	        .mylogin .topcontent span {color: #883535;}
	        .mylogin .bottomcontent {font-weight:bold;font-size:20px;line-height: 30px;width:384px;margin: 50px auto;}
	        .mylogin .bottomcontent a{color: #333333;text-decoration: none;}
	        .mylogin .closeimg {position: absolute;top: 220px;right: 14px;width: 43px;height: 43px;background-image: url("/Finances/statics/front/statics/home2/images/login/cha.png");}
	    </style>
		<div class="myloginmask"></div>
	    
	    <script type="text/javascript">
	        $(function(){
	            $('.m2-pwdConfirm-auto b').click(function(){
	                $('.m2-pwdConfirm-auto,.m2-pwdBg').hide();
	            })
	        })
	    </script>
	    <!-- <script type="text/javascript">
	        $(function(){
	            $.post("mydatetime.html",{mytime:''},function(t){
	                $("#mytime").html(t);
	            });
	        })
	    </script> -->
	    <script type="text/javascript">
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
				//$(".mylogin").show();
	        }
	    </script>
	    	
	    <!--公共提示框end-->
	   	
	    
	    <div class="m2-mainbody">
	    <div class="m2-pwd-con">
            <a href="/Finances/toindex" class="m2-pwdLink-index">
            	<img src="/Finances/statics/front/statics/newcommon/images/logr.png">
            </a>
            <div class="m2-pwdBg1-con">
                <div class="m2-pwdBg1">
                    <h1>阳光P2P理财平台</h1>
                    <p class="m2-pwdBg1-list">安全&nbsp;|&nbsp;阳光&nbsp;|&nbsp;创新&nbsp;|&nbsp;共赢</p>
                    <p class="m2-pwdBg1-link">更多帮助内容请进<a href="/Finances/tohelp">服务中心&raquo;</a></p>
                    <div class="m2-pwdMan"></div>
                </div>
                <div class="m2-pwdBg1icon"></div>
            </div>
            <div class="m2-pwdBg2-con">
                <div class="m2-pwdBg-bottom"><p>为了您的数据安全，我们采用了SSL传输方式，256位SGC加密保护!</p></div>
            </div>
            <div class="m2-pwdBox">
                <div class="m2-pwdLogo"><a href="#"></a></div>
                <h2>找回密码</h2>
                <form class="m2-pwdForm" id="m2-pwdTelform" action="">
                	<input type="hidden" id="uphone" value="${sessionScope.uphone }"/>
                    <div class="mo2-indLogitem mo2-indLogitem-psw abc"  style="margin-bottom:9px;">
	                    <i class="mo2-indLogicon-psw"></i>
	                    <input class="mo2-indIpt-all m2-ind-banPsw" maxlength="20" id="pwd" type="password" placeholder="请设置新密码">
	                    <u style="text-decoration:none;"></u>
	                </div><br/>
	                <div class="mo2-indLogitem mo2-indLogitem-psw abc" style="margin-bottom:9px;">
	                    <i class="mo2-indLogicon-psw"></i>
	                    <input class="mo2-indIpt-all m2-ind-banPsw" maxlength="20" id="surepwd" type="password" placeholder="请输入确认密码">
	                    <u style="text-decoration:none;"></u>
	                </div>
                    <div class="m2-pwdSubmit abc">
                        <input id="m2-pwdTab2-submits" type="button" value="找回密码" onclick="updatePwd()">
                    </div>
               	</form>
            </div>
        </div>
        <script type="text/javascript">
            var flag1 = false;
            var flag2 = false;
            $(function(){
                $('#pwd').keyup(function(){
                    if($('#pwd').val().length > 5 && $('#pwd').val().length < 16){
                    	$('#pwd').next('u').text("");
                        flag1 = true;
                    }else{
                    	$('#pwd').next('u').css('color','red').text('* 密码需为6-15常用英文字母或数字。');
                        flag1 = false;
                    }
                });
                $('#surepwd').keyup(function(){
                    if($('#pwd').val() == $('#surepwd').val()){
                    	$('#surepwd').next('u').text("");
                        flag2 = true;
                    }else{
                    	$('#surepwd').next('u').css('color','red').text('* 两次输入的密码不一致');
                        flag2 = false;
                    }
                });
            })

            function updatePwd(){
            	var phone = $("#uphone").val();
            	var pwd = $("#pwd").val();
                var surepwd = $("#surepwd").val();
                if(pwd.length==0){
                	$('#pwd').next('u').css('color','red').text('* 新密码不能为空');
                	return false;
                }
                if(surepwd.length==0){
            		$('#pwd').next('u').text("");
                	$('#surepwd').next('u').css('color','red').text('* 确认密码不能为空');
                	return false;
                }
                if(pwd!=surepwd){
                	$('#surepwd').next('u').css('color','red').text('* 两次密码输入不一致');
                	return false;
                }
                if(flag1 && flag2){
                	var ps={};
            		ps.uphone = phone;
                    ps.surepwd = surepwd;
                    postData("/Finances/user/findPwd",ps,function(d){
                        if(d.status==1){
                            window.location="http://127.0.0.1:8080/Finances/tologin";
                        }else{
                            showInfoDialog(d.msg,0);
                        }
                    });
                }
            }
        </script>
	</body>
</html>