<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta charset="UTF-8">
	    <meta name="keywords" content="互联网金融平台,理财产品有哪些,如何投资理财才赚钱,爱钱帮">
	    <meta name="description" content="如果您想知道如何投资理财才赚钱，请您联系我们；爱钱帮将会告诉您，互联网上的理财产品有哪些，爱钱帮为您打造一个理财产品多样，安全、可靠、高收益的互联网金融平台。">
	    <title>联系我们丨关于我们丨亿信金融</title>
	    <!--[if lt IE 9]>
	    	<script src="<%=path%>/statics/front/statics/newcommon/js/html5shiv.js"></script>
	    <![endif]-->
	    <link  rel="Shortcut  Icon"  href="/Finances/statics/other/lco/6.png">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-commonNew.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/m2-main.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-common.css">
	    <script type="text/javascript" src="/Finances/statics/front/statics/home/js/jquery.min.js"></script>
	    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/common.js"></script>
	    <script type="text/javascript">
	        var _hmt = _hmt || [];
	        (function() {
	            var hm = document.createElement("script");
	            hm.src = "//hm.baidu.com/hm.js?af9f08105d675ef9febc0bc1ac781258";
	            var s = document.getElementsByTagName("script")[0];
	            s.parentNode.insertBefore(hm, s);
	        })();
	    </script>
	    <script type="text/javascript">
	        var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
	        document.write(unescape("%3Cspan style='display:none;' id='cnzz_stat_icon_1259164158'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1259164158%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));
	    </script>
	    <script>
	        (function(){
	            var bp = document.createElement('script');
	            bp.src = '//push.zhanzhang.baidu.com/push.js';
	            var s = document.getElementsByTagName("script")[0];
	            s.parentNode.insertBefore(bp, s);
	        })();
	    </script>
	</head>
	<body>
	 <!-- 右侧边栏start -->
	    <!-- 右侧登录窗口 -->
	    <!--右侧登录框-->
	    <div class="mo2-indexLoginbox" id="right-fix">
	        <!-- 登录注册start -->
	        <div class="mo2-indLogreg" >				<div class="mo2-indLogtab">
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
	                    <img class="mo2-indRegcode" src="/Finances/statics/front/statics/home2/images/Index-VerifyCode.png" onClick="document.getElementById('reverifyCodeRight').src='Index-VerifyCode.png?time='+Math.random();void(0);" id="reverifyCodeRight"  alt="点击刷新验证码">
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
	                    <div class="mo2-indLogcod-rig"><img src="/Finances/statics/front/statics/home2/images/Index-VerifyCode.png" onClick="document.getElementById('reverifyCode').src='Index-VerifyCode.png?time='+Math.random();void(0);" alt="点击刷新验证码"></div>
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
	                    <div></div>            	<div class="toAbs">
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
	                        <img src="statics/home2/images/user-head.png" alt="我的账户">
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
	                                <img id="ivrSecurityCodeImg" onclick="getCode()" src="/Finances/statics/front/statics/home2/images/Index-VerifyCode.png" alt="验证码" title="点击更新验证码">
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
	                window.location.href="usercenter.html";
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
	        $(".m2-comRigli").click(function(event){
	            $('#right-fix').animate({ right: '50px'}, "slow");
	            event.stopPropagation();
	        });
	        $("#right-fix").click(function(event){
	            event.stopPropagation();
	        });
	        $("body").click(function(){
	            $('#right-fix').animate({ right: '-290px'}, "slow");
	        });
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
	    	<jsp:include page="../include/head.jsp"></jsp:include>
	    <!-- 头部end-->
	    
		<link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/front.css">
    	<script type="text/javascript" src="/Finances/statics/front/statics/home2/js/m2-front.js"></script>	    
	    
	    <!-- 导航start -->
	    	<jsp:include page="../include/navigation.jsp"></jsp:include>
	    <!-- 导航end-->
	    
	    <div class="m2-contact-bannerCon">
    	</div>
    	<div class="m2-contactMain-con">
	        <div class="m2-contactMain-box">
	            <div class="m2-contactTel">
	                <div class="m2-contactTelrig">
	                    <div class="m2-contactTeltop-box">
	                        <b class="m2-contactTel-icon"></b>
	                        <div class="m2-contactTeltop-tit">
	                            <span class="m2-contactTel-big">综合客服</span>
	                        </div>
	                    </div>
	                    <div class="m2-contactOnlinebox">
	                        <div class="m2-conOnline-tel">
	                            <i></i>客服热线：<span>${contact.csphone}</span>
	                        </div>
	                        <div class="m2-conOnline-qq">
	                            <i></i>在线客服：<span style="vertical-align: -4px">${contact.cqqnum}</span>
	                        </div>
	                    </div>
	                    <img class="moveb" src="/Finances/statics/front/statics/home2/images/m2-contactRig.png">
	                </div>
	            </div>
	
	            <div class="m2-contactWel">
	                <h2>欢迎关注我们</h2>
	                <ul class="m2-contactList">
	                    <li class="m2-conList-com">
	                        <h3><i></i>媒体采访</h3>
	                        <p class="m2-conListcom-nor">如果您有媒体采访需求，请将您的媒体名称、采访提纲。</p>
	                        <p class="m2-conListcom-nor">联系方式发送至：<a href="mailto:media@iqianbang.com">media@iqianbang.com</a></p>
	                        <p class="m2-conListcom-nor">我们会尽快与您联系。</p>
	                    </li>
	                    <li class="m2-conList-com">
	                        <h3><i></i>商务合作</h3>
	                        <p class="m2-conListcom-nor">如果您希望与我们建立商务合作，请简要描述合作意向。</p>
	                        <p class="m2-conListcom-nor">联系方式发送至：<a href="mailto:marketing@iqianbang.com">marketing@iqianbang.com</a></p>
	                        <p class="m2-conListcom-nor">我们会尽快与您联系。</p>
	                    </li>
	                    <!--<li class="m2-conList-com">
	                        <h3><i></i>企业融资</h3>
	                        <p class="m2-conListcom-nor">如果您希望通过爱钱帮满足融资需求,请将您的企业和项目资料。</p>
	                        <p class="m2-conListcom-nor">联系方式发送至：<a href="mailto:xiangmu@iqianbang.com">xiangmu@iqianbang.com</a></p>
	                        <p class="m2-conListcom-nor">我们会尽快与您联系。</p>
	                    </li>
	                    <li class="m2-conList-com">
	                        <h3><i></i>联系我们</h3>
	                        <p class="m2-conListcom-sma">北京爱钱帮财富科技有限公司</p>
	                        <p class="m2-conListcom-sma">地址：北京市东城区东四十条甲22号</p>
	                        <p class="m2-conListcom-sma">南新仓国际大厦A座601（100007）</p>
	                        <p class="m2-conListcom-sma">交通：地铁二号线东四十条站（D口出）</p>
	                    </li>
	                --></ul>
	            </div>
	        </div>
	    </div>
	    
	    <div class="m2-contactEmp"></div>
	    <style>
	        .vIVR{display:none}
	    </style>
	    <script>
	        var queuename = '30017180006';
	        function callback() {
	            $('#tel').val($('#phonenumber').val());
	            call();
	        }
	        setCallResponse = function (json) {
	            var obj = eval('(' + json + ')');
	            if (obj['description']) {
	                $('#callBack-codeErr').text('验证码错误');
	                $('#ivrSecurityCode').val('');
	                getCode();
	            } else {
	                $('#callBack-codeErr').text('');
	            }
	        }
	        $("#phonenumber").blur(function () {
	            if (!$(this).val()) {
	                $('#phoneerror').text('请填写手机号');
	            } else if (!$(this).val().match(/^[1][3578][0-9]{9}$/)) {
	                $('#phoneerror').text('请正确填写手机号码');
	            } else {
	                $('#phoneerror').text('');
	            }
	        });
	    </script>
	    <script type="text/javascript">
	        $(function () {
	            $('.m2-contactTeltop-link a').click(function () {
	                $('.m2-conSerlist li').css('padding-top', 12);
	                $('.m2-contactTelipt-box').show();
	            });
	            $('.m2-contactList li:even').css('border-right', '1px solid #e6e6e6')
	        });
	    </script>
	    <link rel="stylesheet" href="/Finances/statics/front/statics/home/css/newPage.css" />
	    7
		<!-- 足部start -->
			<jsp:include page="../include/floot.jsp"></jsp:include>
		<!-- 足部end -->
		
	</body>
</html>