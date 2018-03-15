<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta name="keywords" content="高收益理财产品,理财投资,网络投资理财平台,网贷理财,互联网金融,投资理财平台,投资理财,赚钱,小额投资理财,如何投资理财,投资理财知识,投资理财,北京p2p理财">
	    <meta name="description" content="爱钱帮可以为您赚钱的网络投资理财平台，为投资理财用户和贷款用户两端提供公平、透明、安全、高效的网贷理财服务，爱钱帮互联网金融中网贷投资理财平台的最好的选择。">
	    <title>亿信金融</title>
	    <!--[if lt IE 9]>
	    <script src="statics/newcommon/js/html5shiv.js"></script>
	    <![endif]-->
	    <link  rel="Shortcut  Icon"  href="/Finances/statics/other/lco/6.png">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-commonNew.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/m2-main.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-common.css">
	    <script type="text/javascript" src="/Finances/statics/front/statics/home/js/jquery.min.js"></script>
	    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/common.js"></script>
	    <link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/m2-main.css">
		<link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/tiyanjin.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/m2-loginModify.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/actPrize.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/home/css/newPage.css" />
	    <link rel="stylesheet" href="/Finances/statics/front/statics/usercenter/css/userCenter.css">
	    <script type="text/javascript" src="/Finances/statics/front/statics/home2/js/m2-front.js"></script>
	    <script type="text/javascript" src="/Finances/statics/front/statics/home2/js/jquery.knob.js"></script>
	</head>
	<body style="background-color:#fff;">
		<!-- 复制链接弹框 -->
	    <div class="m2-tranBg"></div>
	    <div class="m2-detConfirm">
	        <b class="m2-detConfirm-close"></b>
	        <div class="m2-detConfirm-head" id="msgtitle">
	
	        </div>
	        <div class="m2-detConfirm-main" id="msgcontent">
	
	        </div>
	        <div class="m2-detConfirm-btn" id="msgbtn2" style="display:none">
	            <a href="javascript:void(0)" class="m2-detConfirmbtn-confirm" onclick="$('#invest_form').submit();" style="float:right;">确认投资</a>
	            <a href="javascript:void(0)" class="m2-detConfirmbtn-cancle" style="float:left;">取消</a>
	        </div>
	        <div class="m2-detConfirm-btn" id="msgbtn3" style="display:none">
	            <!--            <a href="#?chargereturnurl=" target="_blank" class="m2-detConfirmbtn-confirm" style="float:right;">立即支付</a>-->
	            <a href="javascript:void(0)" onclick="rechargeInvest();" class="m2-detConfirmbtn-confirm" style="float:right;">立即支付</a>
	            <a href="javascript:void(0)" class="m2-detConfirmbtn-cancle" style="float:left;">取消</a>
	        </div>
	        <div class="m2-detConfirm-btn" id="msgbtn1" style="display:none">
	            <a href="javascript:void(0)" class="m2-detConfirmbtn-center">确认</a>
	        </div>
	    </div>
	    <!-- 复制链接弹框 -->
	    <!-- 右侧边栏start -->
	    <!-- 右侧登录窗口 -->
	
	    <!--右侧登录框-->
	    <div class="mo2-indexLoginbox" id="right-fix">
	        <!-- 登录注册start -->
	        <div class="mo2-indLogreg" style="display: none">
	            <div class="mo2-indLogtab">
	                <ul>
	                    <li class="mo2-logTab-unsel mo2-indTab-reg">
	                        <span>注册</span><b></b>
	                    </li>
	                    <li class="mo2-logTab-sel mo2-indTab-log">
	                        <span>登录</span><b></b>
	                    </li>
	                </ul>
	            </div>
	            <!-- 注册start -->
	            <div class="mo2-indRegboxRight" style="display:none;">
	                <div class="mo2-indLogitem" style="margin-bottom:6px;">
	                    <i class="mo2-indLogicon-tel"></i><input class="mo2-indIpt-all" id="regTelRight" maxlength="11" type="text" placeholder="输入手机号码"><b class="mo2-indLogwarRight"><em class="mo2-indlogWar-arr"></em><u></u></b>
	                </div>
	                <div class="mo2-indLogitem" style="margin-bottom:6px;">
	                    <i class="mo2-indLogicon-psw"></i><input class="mo2-indIpt-all m2-ind-banPsw" id="passRight" type="password" placeholder="6-20位数字与字母组合的密码"><b class="mo2-indLogwarRight"><em class="mo2-indlogWar-arr"></em><u></u></b>
	                </div>
	                <div class="mo2-indLogitem-step1">
	                    <div class="mo2-indLogreg-step1">
	                        <i class="mo2-indLogicon-code"></i><input class="mo2-indIptcod-step1" id="vcodeRight" type="text" placeholder="验证码">
	                    </div>
	                    <img class="mo2-indRegcode" src="/Finances/statics/front/statics/home2/images/home-register-VerifyCode.png" onClick="document.getElementById('reverifyCodeRight').src='home-register-VerifyCode.png?time='+Math.random();void(0);" id="reverifyCodeRight"  alt="点击刷新验证码">
	                    <span class="mo2-indReg-refresh">看不清？换一张</span>
	                    <b class="mo2-indLogwarRight"><em class="mo2-indlogWar-arr"></em><u></u></b>
	                </div>
	                <div class="mo2-indReg-btn" id="verifyregcode" onclick="verifycodeRight();" style="margin-top:8px;">
	                    <a class="mo2-indRegbtn-able" href="#">立即注册</a>
	                </div>
	                <div class="mo2-indRegagree">
	                    <i class="mo2-indReg-sel"></i><span>我已阅读并同意</span><b>《爱钱帮注册服务协议》</b>
	                </div>
	            </div>
	            <!-- 注册end -->
	            <!-- 注册step2 start -->
	            <div class="mo2-indRegbox2Right"  style="display:none;" >
	                <div class="mo2-indReg2-con">
	                    <ul>
	                        <li><i class="mo2-indRegicon-step1"></i><span>为了确保您手机可用，请填写您收到的手机动态码。</span></li>
	                        <li><i class="mo2-indRegicon-step2"></i><span>如收不到短信验证码，可点击下面的获取语音验证码。</span></li>
	                    </ul>
	                </div>
	                <div class="mo2-indLogitem">
	                    <i class="mo2-indLogicon-code"></i><input class="mo2-indIpt-half" id="codeRight" type="text" placeholder="验证码">
	                    <span class="mo2-indRegtim mo2-regTin-able"><u>60秒后</u><span>获取手机验证码</span></span>
	                    <b class="mo2-indLogwarRight" style="width:200px;"><em class="mo2-indlogWar-arr"></em><u>错误提示信息</u></b>
	                </div>
	                <div class="mo2-indRegvoice">
	                    <span class="mo2-indRegvoi-btn mo2-indRegvoi-able"><i></i>获取语音验证码</span>
	                </div>
	                <div class="mo2-indReg-btn" onclick="registerRight();" id="verifyregphone"  style="margin-top:8px;">
	                    <a class="mo2-indRegbtn-able"  href="#">立即注册</a>
	                </div>
	            </div>
	            <!-- 注册step2 end -->
	
	            <!-- 登录start -->
	            <div class="mo2-indLogboxRight">
	                <div class="mo2-indLogitem mo2-indLogitem-use" style="margin-bottom:9px;">
	                    <i class="mo2-indLogicon-use"></i><input class="mo2-indIpt-all" type="text" id="user_nameRight" placeholder="用户名/手机号">
	                    <b class="mo2-indLogwar" id="w_username"><em class="mo2-indlogWar-arr"></em><u id="r_usernameRight"></u></b>
	                </div>
	                <div class="mo2-indLogitem mo2-indLogitem-psw" style="margin-bottom:9px;">
	                    <i class="mo2-indLogicon-psw"></i><input class="mo2-indIpt-all m2-ind-banPsw" maxlength="20" id="pass_wordRight" type="password" id="pass_wordRight" placeholder="输入登录密码">
	                    <b class="mo2-indLogwar" id="w_password"><em class="mo2-indlogWar-arr"></em><u id="r_passwordRight"></u></b>
	                </div>
	                <div class="mo2-indLog-code" style="display:none;margin-bottom:8px;">
	                    <div class="mo2-indLogcod-lef">
	                        <i class="mo2-indLogicon-psw"></i>
	                        <input type="text" id="vcodeRight" placeholder="验证码"></div>
	                    <div class="mo2-indLogcod-rig"><img src="/Finances/statics/front/statics/home2/images/home-register-VerifyCode.png" onClick="document.getElementById('reverifyCode').src='home-register-VerifyCode.png?time='+Math.random();void(0);" alt="点击刷新验证码"></div>
	                </div>
	                <div class="mo2-indLog-forget"><a href="forget.html">忘记密码?</a></div>
	                <div style="padding-left: 24px;line-height: 30px;color:red;" id="error-hint"></div>
	                <div class="mo2-indReg-btn">
	                    <a class="mo2-indRegbtn-able" onclick="loginRight();">登录</a>
	                </div>
	            </div>
	            <!-- 登录end -->
	        </div>
	        <!-- 登录注册end -->
	    </div>
	    <!-- 右侧登录窗口 -->
	    <!--add by zml start-->
	    <!--<div id="fixbar" style="width:50px;position:fixed;top:0;right:0px;background:#ff6666;z-index:5;"></div>-->
	
	    <!--右侧悬浮条-->
	    <div id="fixbar">
	        <!-- 右侧边栏顶部 -->
	        <!--右侧上边栏start -->
	        <div class="m2-commonRight2"  id="m2-commonRight">
	            <ul class="m2-comRiglist myclick">
	                <li class="m2-comRigli m2-comRigli-ewm m2-comRigli_new" style="border-top:1px solid #fff;" data="#fixnavbar_one">
	                    <div></div>
	                    <img src="/Finances/statics/front/statics/home2/images/fixed-r1.png" alt="我的账户">
	                    <div class="toAbs">
	                        <div><img src="/Finances/statics/front/statics/home2/images/fixedl-1_v2.png" alt="我的账户"></div>
	                        <div></div>
	                    </div>
	                </li>
	                <li class="m2-comRigli m2-comRigli-tel m2-comRigli_new" data="#fixnavbar_two">
	                    <img src="/Finances/statics/front/statics/home2/images/fixed-r2.png" alt="我的红包">
	                    <div class="num num1">
	                        3                </div>
	                    <div class="toAbs">
	                        <div><img src="/Finances/statics/front/statics/home2/images/fixedl-2_v2.png" alt="我的红包"></div>
	                        <div></div>
	                    </div>
	                </li>
	                <li class="m2-comRigli m2-comRigli-qq m2-comRigli_new" data="#fixnavbar_three">
	                    <img src="/Finances/statics/front/statics/home2/images/fixed-r3.png" alt="我的加息券">
	                    <div></div>            	<div class="toAbs">
	                    <div><img src="/Finances/statics/front/statics/home2/images/fixedl-3_v2.png" alt="我的加息券"></div>
	                    <div></div>
	                </div>
	                </li>
	                <li class="m2-comRigli m2-comRigli-sug m2-comRigli_new" data="#fixnavbar_four">
	                    <img src="/Finances/statics/front/statics/home2/images/fixed-r4.png" alt="站内信息">
	                    <div></div>            	<div class="toAbs">
	                    <div><img src="/Finances/statics/front/statics/home2/images/fixedl-4_v2.png" alt="站内信息"></div>
	                    <div></div>
	                </div>
	                </li>
	            </ul>
	        </div>
	        <!-- 右边侧栏顶部右边弹出 -->
	        <div class="fixbox_bar">
	            <div class="fixnavbar" id="fixnavbar_one">
	                <div class="sumtop">
	                    <div class="top" style="margin: 18px;text-align: center;font-size: 20px;position: relative;"><span style="position: absolute;top: 0;left:-18px">>></span>我的账户</div>
	                    <div class="bottom">
	                        <img src="/Finances/statics/front/statics/home2/images/user-head.png" alt="我的账户">
	                        <div>
	                            <p id ="right_name_info"></p>
	                            <button id="right_recharge">充值</button>
	                        </div>
	                    </div>
	                </div>
	                <hr style="margin:0 10px;"/>
	                <div class="summiddle">
	                    <ul>
	                        <li style="border-top-left-radius:10px;">
	                            <p><span id="right_account_money"></span>元</p>
	                            <span>可用资金</span>
	                        </li>
	                        <li style="border-top-right-radius:10px;">
	                            <p><span id="right_reward_money"></span>元</p>
	                            <span>可用奖励金</span>
	                        </li>
	                    </ul>
	                    <div class="content">
	                        <p>待收本金：<span id="right_total_capital"></span>元</p>
	                        <p>待收收益：<span id="right_total_wait_interest"></span>元</p>
	                    </div>
	                    <p class="lastcontent">资产总计：<span id="right_total_asset"></span>元</p>
	                    <ul style="margin-top:30px;">
	                        <li style="border-top-left-radius:10px;border-bottom-left-radius:10px;">
	                            <p><span id="right_today_earn"></span>元</p>
	                            <span>今日赚取</span>
	                        </li>
	                        <li style="border-top-right-radius:10px;border-bottom-right-radius:10px;">
	                            <p><span id="right_total_reward_normal_interest"></span>元</p>
	                            <span>累计收益</span>
	                        </li>
	                    </ul>
	                </div>
	                <div class="sumbottom" id ="accountCommon_right">查看更多>></div>
	            </div>
	
	            <div class="fixnavbar common" id="fixnavbar_two">
	
	            </div>
	
	            <div class="fixnavbar common" id="fixnavbar_three">
	
	            </div>
	
	            <div class="fixnavbar" id="fixnavbar_four">
	
	            </div>
	        </div>
	
	        <!-- 右侧边栏底部 -->
	        <div class="m2-commonRight">
	            <ul class="m2-comRiglist">
	                <li class="m2-comRigli m2-comRigli-ewm"  style="border-top:1px solid #fff;">
	                    <i class="m2-comRigli-icon"></i>
	                    <span class="m2-comRigli-hov">关注<br>微信</span>
	                    <div class="m2-comRighide m2-comRighide-ewm"><i></i></div>
	                </li>
	                <li class="m2-comRigli m2-comRigli-tel">
	                    <i class="m2-comRigli-icon"></i>
	                    <span class="m2-comRigli-hov">联系<br>我们</span>
	                    <div class="m2-comRighide m2-comRighide-tel">
	                        <div class="m2-comRighide-telSpace"></div>
	                        <b class="m2-comRighide-telBorder"></b>
	                        <div class="m2-comRigtel-lef">
	                            <div class="m2-comRigtel-lefTop">
	                                <input type="text" placeholder="请输入您的手机号"  id='phonenumber'>
	                            </div>
	                            <div class="m2-comRigtel-lefBot">
	                                <input type="text" placeholder="验证码" id="ivrSecurityCode">
	                                <img id="ivrSecurityCodeImg" onclick="getCode()" src="https://bj-out-2.ccic2.com/system!getLoginCodeForWebCall.action" alt="验证码" title="点击更新验证码">
	                            </div>
	                        </div>
	                        <div class="m2-comRigtel-rig">
	                            <span  onclick='callback()'>免费<br>拨打</span>
	                        </div>
	                    </div>
	                </li>
	                <li class="m2-comRigli m2-comRigli-qq" style="position:relative;">
	
	                    <div id="BizQQWPA" style="width:50px;height:50px;position:absolute;top:0;left:0;z-index:150;">
	
	                    </div>	                <i class="m2-comRigli-icon" style="z-index:100;"></i>
	                    <span class="m2-comRigli-hov" style="z-index:100;">在线<br>客服</span>
	                </li>
	                <li class="m2-comRigli m2-comRigli-sug" style="border-bottom: 1px solid #fff;">
	                    <i class="m2-comRigli-icon"></i>
	                    <span class="m2-comRigli-hov"><a href="guide.html" style="color:#fff;">帮助<br>中心</a></span>
	                </li>
	
	                <li class="m2-comRigli m2-comRigli-top">
	                    <i class="m2-comRigli-icon"></i>
	                    <span class="m2-comRigli-hov">返回<br>顶部</span>
	                </li>
	            </ul>
	        </div>
	    </div>
	    <script type="text/javascript">
	        $(function(){
	            $('#right_recharge').click(function(){
	                window.location.href="#";
	            });
	
	            $(".fixbox_bar").click(function(event){
	                event.stopPropagation();
	            });
	            $('#accountCommon_right').click(function(){
	                window.location.href="/Finances/tousercenter";
	            });
	//			$('#redbagCommon_right').click(function(){
	//				window.location.href="usercenter-rewardcontrol-redpacket.html";
	//			});
	//			$('#percentageCommon_right').click(function(){
	//				window.location.href="usercenter-rewardcontrol-interestcoupon.html";
	//			});
	//			$('#messageCommon_right').click(function(){
	//				window.location.href="usercenter-messagecontrol-sitemsg.html";
	//			});
	        })
	
	
	    </script>
	    <!--首页右侧提示悬浮窗、账户、红包、加息券 user_m_type -->
	    <script type="text/javascript">
	        $(function(){
	            $(".fixbox_bar").click(function(event){
	                event.stopPropagation();
	            });
	
	            $("#fixbar .myclick li").click(function(event){
	                var select=$(this).attr("data");
	                $(".fixnavbar").css("display","none");
	                $(select).css("display","block");
	                $('#fixbar').animate({ right: '300'}, "slow");
	                $("#fixbar .fixbox_bar").animate({ right: '-18'}, "slow");
	
	                // 阻止事件冒泡
	                event.stopPropagation();
	                if(select=="#fixnavbar_one"){
	                    $.ajax({
	                        type:'POST',
	
	                        url:"/Home-RightHomePage-account_right_new",
	                        success:function(msg){
	                            var obj = eval('('+msg+')');
	                            $("#right_today_earn").text(obj.today_earn);
	                            $("#right_total_capital").text(obj.total_capital);
	                            $("#right_account_money").text(obj.account_money);
	                            $("#right_reward_money").text(obj.reward_money);
	                            $("#right_total_asset").text(obj.total_asset);
	                            $("#right_total_wait_interest").text(obj.total_wait_interest);
	                            $("#right_name_info").text(obj.real_name);
	                            $("#right_total_reward_normal_interest").text(obj.total_reward_normal_interest);
	                        }
	
	                    });
	                }else if(select=="#fixnavbar_two"){
	                    $.ajax({
	                        type: "POST",
	                        url: '/Home-RightHomePage-hb_right_new',
	                        success: function(data) {
	                            $('#fixnavbar_two').empty();
	                            $('#fixnavbar_two').append(data);
	                        }
	                    });
	                }else if(select=="#fixnavbar_three"){
	                    $.ajax({
	                        type: "POST",
	                        url: '/Home-RightHomePage-jxq_right_new',
	                        success: function(data) {
	                            $('#fixnavbar_three').empty();
	                            $('#fixnavbar_three').append(data);
	                        }
	                    });
	                }else if(select=="#fixnavbar_four"){
	                    $.ajax({
	                        type: "POST",
	                        url: '/Home-RightHomePage-sitemsg_right_new',
	                        success: function(data) {
	                            $('#fixnavbar_four').empty();
	                            $('#fixnavbar_four').append(data);
	                        }
	                    });
	                }
	
	
	
	            });
	            // 点击页面其他地方框消失
	            $("body").click(function(){
	                $('#fixbar').animate({ right: '0'}, "slow");
	                $("#fixbar .fixbox_bar").animate({ right: '-318'}, "slow");
	            });
	
	        })
	    </script>
	    <script>
	        //注册方法
	        function verifycodeRight(){
	            var canSubmit=true;
	            $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").children("u").html('');
	            if($("#vcodeRight").val().length==0){
	                $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").children("u").html("验证码不能为空");
	                $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").show();
	                canSubmit = false;
	            }
	            if($("#passRight").val().length==0){
	                $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").children("u").html("密码不能为空");
	                $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").show();
	                canSubmit = false;
	            }
	            if($("#regTelRight").val().length==0){
	                $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").children("u").html("手机号不能为空");
	                $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").show();
	                canSubmit = false;
	            }
	
	            $(".mo2-indRegbox .mo2-indLogwarRight u").each(function(){
	                if($(this).html().length>0){
	                    canSubmit = false;
	                }
	            });
	            if (canSubmit !== true) return false;
	            var p={"vcode":$("#vcodeRight").val()};
	            postData("/Home-Register-ckcode",p,function(d){
	                if(d.message!=" "){
	                    $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").children("u").html(d.message);
	                    $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").show();
	                    return false;
	                }else{
	                    $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").children("u").html('');
	                    $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").hide();
	                    $('.mo2-indRegboxRight').css('display','none');
	                    $('.mo2-indRegbox2Right').css('display','block');
	                }
	
	            });
	        }
	        //登录方法
	        function loginRight(){
	            var p = makevar(['user_nameRight','pass_wordRight','vcodeRight']);
	            var canSubmit = true;
	            if($('#user_nameRight').val()==""){
	                $('#error-hint').html('用户名不能为空！');
	            }else if($('#user_nameRight').val().lenght <6){
	                $('#error-hint').html('用户名长度错误！');
	            }else {
	                if ($('#pass_wordRight').val() == ""){
	                    $('#error-hint').html('密码不能为空！');
	                }else if ($('#pass_wordRight').val().length < 6 || $('#pass_wordRight').val().length > 20){
	                    $('#error-hint').html('密码长度错误！');
	                }else {
	                    $('#error-hint').html('');
	                    postData("/Home-Login-index_loginRight",p,function(d){
	                        if(d.status==0){
	                            $('#error-hint').html(d.message);
	                        }else if(d.status==1){
	                            window.location.reload();
	                        }else if(d.status==2){
	                            window.location.href = "dashiji_show.html#15319.html";
	                        }
	                    });
	                }
	            }
	        }
	        $(document).keydown(function(event){
	            var e = event || window.event || arguments.callee.caller.arguments[0];
	            if(e && e.keyCode==13){
	                loginRight();
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
	            $('.mo2-indRegboxRight').show();
	            $('.mo2-indRegbox2Right').hide();
	            $('.mo2-indLogboxRight').hide();
	        });
	        $('.mo2-indTab-log').click(function(){
	            $('.mo2-indRegboxRight').hide();
	            $('.mo2-indRegbox2Right').hide();
	            $('.mo2-indLogboxRight').show();
	        });
	
	        //右侧悬浮框
	        var aLi=$('.m2-comRigli_new');
	        for(var i=0;i<aLi.length;i++){
	            (function(index){
	                aLi[index].onmouseover=function(){
	                    var oDiv=aLi[index].children[2];
	                    var aDiv=oDiv.children;
	                    oDiv.style.display='block';
	                    //if(flag==1){
	                    var iNum=parseInt(aDiv[1].innerHTML);
	                    if(iNum>=100){
	                        aDiv[1].innerHTML='···';
	                    }
	                    //}
	                };
	            })(i)
	        }
	        for(var i=0;i<aLi.length;i++){
	            (function(index){
	                aLi[index].onmouseout=function(){
	                    var oDiv=aLi[index].children[2];
	                    var aDiv=oDiv.children;
	                    oDiv.style.display='none';
	                    //if(flag==1){
	                    var iNum=parseInt(aDiv[1].innerHTML);
	                    if(iNum>=100){
	                        aDiv[1].innerHTML='···';
	                    }
	                    //}
	                };
	            })(i)
	        }
	
	    </script>
	    <script type="text/javascript">
	        $(function () {
	            var wHei = $(window).height();
	
	            $(document).scroll(function () {
	                // 判断返回顶部是否显示
	                visTop(wHei);
	            });
	
	            $('.m2-comRigli-top').click(function () {
	                $('body,html').animate({scrollTop: 0}, 600);
	                return false;
	            });
	        });
	
	        function visTop(high) {
	
	            if ($(document).scrollTop() > high + 100) {
	                $('.m2-comRigli-top').css('visibility', 'visible');
	            } else {
	                $('.m2-comRigli-top').css('visibility', 'hidden');
	            }
	        }
	    </script>
	    <!-- 右侧边栏end -->
	    
	    <!-- 头部start -->
	    	<jsp:include page="include/head.jsp"></jsp:include>
	    <!-- 头部end -->
	    
	    <div class="banner"></div><!-- banner图 -->
	    <!-- 右侧悬浮窗 start-->
	    <div class="rightFix" style="position:fixed;width:127px;height:165px;top:240px;left:50%;margin-left:510px;z-index:50;">
	        <a href="/Activity-getnewers" style="display:block;width:100%;height:100%;">
	            <img style="display:block;width:100%;height:100%;" src="/Finances/statics/front/statics/home2/images/december-expermoney/right_fix1.png" alt="">
	        </a>
	    </div>
	    <!-- 右侧悬浮窗end -->
	    
	    <div id="allpop">
		    <!--未登录-->
		    <div class="nolog" style="display:none;">
		        <div class="nologmask z100"></div>
		        <div class="nologbox z101">
		            <div class="nologbox_b">
		                <p></p>
		                <div>
		                    <img src="/Finances/statics/front/statics/home2/images/december-expermoney/yellow_q.png">
		                    您还没有登录，请立即去登录。
		                </div>
		                <a href="/login">去登录</a>
		                <div class="close"><img src="/Finances/statics/front/statics/home2/images/december-expermoney/close.png"></div>
		            </div>
		        </div>
		    </div>
		    <!--未登录-->
		    <!--新用户注册后-->
		    <div class="regist" style="display:none;">
		        <div class="registmask z100"></div>
		        <div class="registbox z101">
		            <div class="registbox_b">
		                <p></p>
		                <div>
		                    <img src="/Finances/statics/front/statics/home2/images/december-expermoney/regist.png">
		                    恭喜您，体验金项目投资成功！
		                </div>
		                <a href="javascript:;" class="confirm-invest">确定</a>
		                <div class="close"><img src="/Finances/statics/front/statics/home2/images/december-expermoney/close.png"></div>
		            </div>
		        </div>
		    </div>
		    <!--新用户注册后-->
		    <!--老用户登录后-->
		    <div class="oldregist" style="display:none;">
		        <div class="oldregistmask z100"></div>
		        <div class="oldregistbox z101">
		            <div class="oldregistbox_b">
		                <p></p>
		                <div>
		                    <img src="/Finances/statics/front/statics/home2/images/december-expermoney/yellow_q.png">
		                    您是本次活动前注册的用户，无法参加活动。
		                    <p class="oldregistbox_bp1">该项目仅供新注册用户参与。</p>
		                    <p class="oldregistbox_bp2">您可以参加5月份的活动哦。</p>
		                </div>
		                <a href="zhuanti_show.html#/market-MayActive">去看看</a>
		                <div class="close"><img src="/Finances/statics/front/statics/home2/images/december-expermoney/close.png"></div>
		            </div>
		        </div>
		    </div>
		    <!--老用户登录后-->
		    <!--奖励金到账时-->
		    <!--奖励金到账时-->
		</div>
		<!--弹窗全部隐藏,显示-->
		<script type="text/javascript">
		
		    $(function(){
		        $(".close").click(function(){
		            $(".nolog").hide();
		            $(".regist").hide();
		            $(".oldregist").hide();
		            $(".incentive").hide();
		        });
		        $(".confirm-invest").click(function(){
		            $(".regist").hide();
		        });
		        $("#invest").click(function(){
		            postData("/Home-tiyanjin-invest_experiencemoney",'',function(msg){
		                if (msg['status'] == 1){
		                    $(".regist").show();
		                    setTimeout("window.location.reload();",3000)
		                }else if(msg.status == 2){
		                    $(".incentive").show();
		                }else if(msg.status == 3){
		                    $(".invested").show();
		                }else if(msg.status == 4){
		                    $(".oldregist").show();
		                }else if(msg.status == 5){
		                    $(".nolog").show();
		                }
		            });
		        });
		    })
		</script>
		<div class="m2-investBread">
		    <div class="m2-investBreadbox">
		        <i class="m2-investBreadicon"></i>
		        <span class="m2-invBre-fat"><a href="/Finances/toindex">首页&nbsp;&gt;</a></span>
		        <span class="m2-invBre-fat"><a href="/Finances/toinvest">我要投资&nbsp;&gt;</a></span>
		        <a class="m2-invBre-cur" >项目详情</a>
		    </div>
		</div>
		<div class="m2-detialsCon">
		    <div class="m2-detialsItembox">
		        <h2>
		            <span class="m2-detialsItembox-lef">【活动标】爱钱帮体验金投资项目</span>
		        </h2>
		    </div>
		    <div class="m2-detialsItem">
		        <div class="m2-detItemlef">
		            <div class="m2-detItemlef-img">
		                <img src="/Finances/statics/front/statics/home2/images/december-expermoney/exclusive.png" alt="">
		                <div style="padding-top: 35px;margin-left: 20px;">
		                    <span id="d_clip_container" style="position:relative;background:#fff000;height:20px;font-size:12px;right:0px"></span>
		                    <p><span style='color:#898989;font-size: 13px;line-height:36px;'>此项目为爱钱帮体验标</span></p>
		                    <p><span style='color:#898989;font-size: 13px;'>仅提供爱钱帮用户体验金投资的虚拟项目!</span></p>
		                </div>
		                <script type="text/javascript">
		                    //消息弹窗
		                    function msgDialog(msg) {
		                        $('#msgtitle').text('消息确认');
		                        var content = '<p class="m2-detConfirm-nor">' + msg + '</p>';
		                        $('#msgcontent').html(content);
		                        $('#msgbtn1').show();
		                        $('#msgbtn2').hide();
		                        $('#msgbtn3').hide();
		                        $('.m2-detConfirm,.m2-tranBg').show();
		                    }
		                    //关闭弹窗
		                    $('.m2-detConfirm-close,.m2-detConfirm-btn a').click(function () {
		                        $('.m2-detConfirm,.m2-tranBg').hide();
		                    });
		                </script>
		            </div>
		            <div class="m2-detItemlef-con">
		                <ul>
		                    <li>
		                        <span class="m2-detItempsg-big" style="display:inline-block;">10%</span><p style="font-size:20px;display:inline-block;" class="m2-detItempsg-big huodongjiaxi">+10%</p>
		                        <span style="margin-top:-14px;margin-left:12px;" class="jiaxishow">活动加息10%</span>
		                        <span class="m2-detItempsg-nor">预期年化收益率</span>
		                        <i class="m2-detItemlef-line"></i>
		                    </li>
		                    <li style="width:205px;">
		                        <span class="m2-detItempsg-big">2天</span>
		                        <span class="m2-detItempsg-nor">期限</span>
		                    </li>
		                    <li>
		                        <span class="m2-detItempsg-big">5000万</span>
		                        <span class="m2-detItempsg-nor">融资金额</span>
		                        <i class="m2-detItemlef-line"></i>
		                    </li>
		                    <li style="width:205px;">
		                        <span class="m2-detItempsg-big">0元</span>
		                        <span class="m2-detItempsg-nor">手续费</span>
		                    </li>
		                </ul>
		                <div class="m2-detPro">
		                    <div class="m2-derProgress">
		                        <span class="mo2-wbqProcess-tit">正在募集：</span>
		                        <b><i style="width: 4.44%;"></i></b>
		                        <span>4.44%</span>
		                    </div>
		                    <div class="m2-detProdet">
		                        <span class="m2-detProdet-lef">投资20000元收益：<span style="color:#FB9B00">21.91</span>元</span>
		
		                    </div>
		                </div>
		                <div class="m2-detItemlef-bot">
		                    <a href="javascript:void(0)" class="m2-detIetmbot1" style='margin-right: 24px;' title='由爱钱帮理财平台送您20000元投资本金，项目到期爱钱帮收回本金，产生的收益将会存入您的奖励金账户'>
		                        <i></i>赠送本金（体验金）</a>
		                    <a href="javascript:void(0)" class="m2-detIetmbot2" title='由爱钱帮理财平台送您20000元投资本金' style='margin-right: 16px;'>
		                        <i></i>担保措施</a>
		                    <a href="javascript:void(0)" class="m2-detIetmbot3" style='margin-right: 0px;' title='按日计息，到期还本息'>
		                        <i></i>还款方式</a>
		                </div>
		            </div>
		        </div>
		        <!-- 已登录 ,未投资-->
		        <div class="m2-detItemrig">
		            <!--立即全额投资-->
		            <div class="full">
		                <p style="margin-top:34px; margin-bottom:44px;">体验金项目余额： 4778万 元</p>
		                <div class="full-bac">
		                    <p class="full-p1">体验金余额：</p>
		                    <p class="full-p2">20000.00 元</p>
		                </div>
		                <a href="javascript:;" class="full-btn" id="invest">立即投资</a>
		            </div>
		        </div>
		    </div>
		    <div class="m2-detSit m2-detSection" style="margin-bottom:30px;">
		        <h3>活动说明<i></i></h3>
		        <div class="m2-detSitbox m2-det-togBox">
		            <p class="m2-detSit-nor">体验标说明</p>
		            <p class="m2-detSit-nor">1、体验标是由爱钱帮设立的一个专门提供给平台客户使用体验金进行投资体验的虚拟项目。</p>
		            <p class="m2-detSit-nor">2、投资体验标无需实名认证。</p>
		            <p class="m2-detSit-nor">3、体验金是由爱钱帮用平台自有资金设立的一个专门用于提供给平台客户进行平台项目投资体验的资金，只能投资体验项目，使用后可产生利息收益。</p>
		            <p class="m2-detSit-nor">4、获得体验金后，在体验标项目专区点击使用。</p>
		            <p class="m2-detSit-nor">5、体验金是一种投资体验项目的虚拟资金，不能提现，但是投资后产生的收益（奖励金）归用户所有，用户投资满10000元人民币后奖励金可以作为本金投资使用。</p>
		            <p class="m2-detSit-nor"></p>
		            <p class="m2-detSit-nor">6、客户使用体验金投资项目到期后，本金部分由平台收回。</p>
		            <p class="m2-detSit-nor">本活动规则解释权归爱钱帮所有，如有疑问请联系 在线客服 或 拨打4006-777-518</p>
		        </div>
		    </div>
		</div>
		<script type="text/javascript">
		    $('.m2-detItemrig').show();
		    //活动加息
		    $(".huodongjiaxi").mouseover(function(){
		        $(this).parent().find(".jiaxishow").css("display","block");
		    })
		    $(".huodongjiaxi").mouseout(function(){
		        $(this).parent().find(".jiaxishow").hide();
		    })
		</script>
		<link rel="stylesheet" href="/Finances/statics/front/statics/home/css/newPage.css" />
		
		<!-- 足部start -->
			<jsp:include page="include/floot.jsp"></jsp:include>
		<!-- 足部end -->
	</body>
</html>