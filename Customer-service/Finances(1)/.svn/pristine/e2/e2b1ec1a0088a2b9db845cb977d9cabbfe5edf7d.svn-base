<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
	    <meta name="keywords" content="互联网金融,理财平台,投资理财,投资理财产品">
	    <meta name="description" content="爱钱帮理财平台的公告栏目，为您提供各种投资理财产品有关的公告，方便投资人进行投资理财；爱钱帮互联网金融平台将向您提供最放心，最优质的服务。">
	    <title>全部公告丨关于我们丨亿信金融</title>
	    <!--[if lt IE 9]>
	    	<script src="<%=path%>/statics/front/statics/newcommon/js/html5shiv.js"></script>
	    <![endif]-->
	    <link  rel="Shortcut  Icon"  href="/Finances/statics/other/lco/6.png">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-commonNew.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/m2-main.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-common.css">
	    <script type="text/javascript" src="/Finances/statics/front/statics/home/js/jquery.min.js"></script>
	    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/common.js"></script>
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
	   	<!-- 头部end -->
	   	
	   	<link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/front.css">
    	<script type="text/javascript" src="/Finances/statics/front/statics/home2/js/m2-front.js"></script>
		
		<!-- 导航start -->
			<jsp:include page="../include/navigation.jsp"></jsp:include>
		<!-- 导航end -->
		
		<!-- 内容start -->
		<div class="m2-notice-banner"></div>
			<div class="newListheader-con">
        	<div class="newsListheader">
		         <ul   id="ifremid">
		            <li class="newsListtab-sel">
		             	 <span>全部公告</span>
		            </li>
		            <li class="newsListtab-unsel">
						<span>网站公告</span>
					</li>
					<li class="newsListtab-unsel">
						<span>项目公告</span>
					</li>
					<li class="newsListtab-unsel">
						<span>还款公告</span>
					</li>
				</ul>
	        </div>
    	</div>
    	<div class="newListmain-con">
        <div class="newListmain">
            <h2 class="m2-noticeMain-tit"><i></i>
                	全部公告       
            </h2>
            <ul class="newList-ul" id="ul11">
               <c:forEach items="${listall}" var="noticeall">
                <li>
                    <a href="${pageContext.request.contextPath}/font/selectType?nid=${noticeall.nid}" target="_blank" title="${noticeall.ntitle}">
                        <h3>${noticeall.ntitle}</h3> </a>
                    <a href="${pageContext.request.contextPath}/font/selectType?nid=${noticeall.nid}" target="_blank" title="${noticeall.ntitle}">
                        <p class="newList-itemDet">${noticeall.ncontent}</p>
                    </a>
                    <span class="newList-bot"><i></i>${noticeall.ntime}</span>
                </li>
               </c:forEach>
             
                <!-- <li>
                <a href="/licai_gonggao-16025.html" target="_blank" title="【还款公告】2016年9月1日爱钱帮投资理财项目还本付息公告">
                    <h3>【还款公告】2016年9月1日爱钱帮投资理财项目还本付息公告</h3> </a>
                <a href="/licai_gonggao-16025.html" target="_blank" title="【还款公告】2016年9月1日爱钱帮投资理财项目还本付息公告">
                    <p class="newList-itemDet">​各位帮主们：2016年9月1日爱钱帮理财项目还款如下：​=​​迎您的支持与建议，如有问题，请联系我们：电话客服：4006777518QQ客服：4006777518微信客服：iqianbanglove微信订阅号：iqianbangcom祝您投资愉快~爱钱帮2016年9月1日</p>
                </a>
                <span class="newList-bot"><i></i>2016年09月01日</span>
            </li><li>
                <a href="/licai_gonggao-16024.html" target="_blank" title="【还款公告】2016年8月31日爱钱帮投资理财项目还本付息公告">
                    <h3>【还款公告】2016年8月31日爱钱帮投资理财项目还本付息公告</h3> </a>
                <a href="/licai_gonggao-16024.html" target="_blank" title="【还款公告】2016年8月31日爱钱帮投资理财项目还本付息公告">
                    <p class="newList-itemDet">​各位帮主们：2016年8月31日爱钱帮理财项目还款如下：​​迎您的支持与建议，如有问题，请联系我们：电话客服：4006777518QQ客服：4006777518微信客服：iqianbanglove微信订阅号：iqianbangcom祝您投资愉快~爱钱帮2016年8月31日</p>
                </a>
                <span class="newList-bot"><i></i>2016年08月31日</span>
            </li><li>
                <a href="/licai_gonggao-16022.html" target="_blank" title="【还款公告】2016年8月30日爱钱帮投资理财项目还本付息公告">
                    <h3>【还款公告】2016年8月30日爱钱帮投资理财项目还本付息公告</h3> </a>
                <a href="/licai_gonggao-16022.html" target="_blank" title="【还款公告】2016年8月30日爱钱帮投资理财项目还本付息公告">
                    <p class="newList-itemDet">​各位帮主们：2016年8月30日爱钱帮理财项目还款如下：​​​迎您的支持与建议，如有问题，请联系我们：电话客服：4006777518QQ客服：4006777518微信客服：iqianbanglove微信订阅号：iqianbangcom祝您投资愉快~爱钱帮2016年8月30日</p>
                </a>
                <span class="newList-bot"><i></i>2016年08月30日</span>
            </li><li>
                <a href="/licai_gonggao-16019.html" target="_blank" title="【还款公告】2016年8月29日爱钱帮投资理财项目还本付息公告">
                    <h3>【还款公告】2016年8月29日爱钱帮投资理财项目还本付息公告</h3> </a>
                <a href="/licai_gonggao-16019.html" target="_blank" title="【还款公告】2016年8月29日爱钱帮投资理财项目还本付息公告">
                    <p class="newList-itemDet">​各位帮主们：2016年8月29日爱钱帮理财项目还款如下：​​​迎您的支持与建议，如有问题，请联系我们：电话客服：4006777518QQ客服：4006777518微信客服：iqianbanglove微信订阅号：iqianbangcom祝您投资愉快~爱钱帮2016年8月29日</p>
                </a>
                <span class="newList-bot"><i></i>2016年08月29日</span>
            </li><li>
                <a href="/licai_gonggao-16018.html" target="_blank" title="【还款公告】2016年8月26日爱钱帮投资理财项目还本付息公告">
                    <h3>【还款公告】2016年8月26日爱钱帮投资理财项目还本付息公告</h3> </a>
                <a href="/licai_gonggao-16018.html" target="_blank" title="【还款公告】2016年8月26日爱钱帮投资理财项目还本付息公告">
                    <p class="newList-itemDet">​各位帮主们：2016年8月26日爱钱帮理财项目还款如下：​​​迎您的支持与建议，如有问题，请联系我们：电话客服：4006777518QQ客服：4006777518微信客服：iqianbanglove微信订阅号：iqianbangcom祝您投资愉快~爱钱帮2016年8月26日</p>
                </a>
                <span class="newList-bot"><i></i>2016年08月26日</span>
            </li><li>
                <a href="/licai_gonggao-16017.html" target="_blank" title="【还款公告】2016年8月25日爱钱帮投资理财项目还本付息公告">
                    <h3>【还款公告】2016年8月25日爱钱帮投资理财项目还本付息公告</h3> </a>
                <a href="/licai_gonggao-16017.html" target="_blank" title="【还款公告】2016年8月25日爱钱帮投资理财项目还本付息公告">
                    <p class="newList-itemDet">​各位帮主们：2016年8月25日爱钱帮理财项目还款如下：​​​迎您的支持与建议，如有问题，请联系我们：电话客服：4006777518QQ客服：4006777518微信客服：iqianbanglove微信订阅号：iqianbangcom祝您投资愉快~爱钱帮2016年8月25日</p>
                </a>
                <span class="newList-bot"><i></i>2016年08月25日</span>
            </li><li>
                <a href="/licai_gonggao-16014.html" target="_blank" title="【还款公告】2016年8月24日爱钱帮投资理财项目还本付息公告">
                    <h3>【还款公告】2016年8月24日爱钱帮投资理财项目还本付息公告</h3> </a>
                <a href="/licai_gonggao-16014.html" target="_blank" title="【还款公告】2016年8月24日爱钱帮投资理财项目还本付息公告">
                    <p class="newList-itemDet">各位帮主们：2016年8月24日爱钱帮理财项目还款如下：​​迎您的支持与建议，如有问题，请联系我们：电话客服：4006777518QQ客服：4006777518微信客服：iqianbanglove微信订阅号：iqianbangcom祝您投资愉快~​爱钱帮                 2016年8月24日</p>
                </a>
                <span class="newList-bot"><i></i>2016年08月24日</span>
            </li><li>
                <a href="/licai_gonggao-16013.html" target="_blank" title="【平台公告】关于部分银行升级“快捷充值”功能的公告">
                    <h3>【平台公告】关于部分银行升级“快捷充值”功能的公告</h3> </a>
                <a href="/licai_gonggao-16013.html" target="_blank" title="【平台公告】关于部分银行升级“快捷充值”功能的公告">
                    <p class="newList-itemDet">尊敬的各位帮主：工商银行、建设银行、农业银行将于2016年8月24日19:00左右进行系统升级维护。在升级期间，“快捷充值”功能暂时无法使用，帮主可使用“网银转账”或“支付宝转账”等方式完成充值投资。具体恢复时间请查看网站公告，升级完成后，“快捷充值”功能将恢复使用。使用“网银”或“支付宝”充值方式如下：↓PC版1、网银转账充值：（1）用户登录自己的网上银行（计算机登录或手机APP登录），使用转账功能向自己的徽商电子账户进行充值。转账到账时间和收费受发卡行对转账汇款相关规则约束。跨行转账（即非徽商银行银行卡向徽商银行电子账户转账），一般在工作时间内（工作日9:00-16:30）实时到账。（2）用户登录爱钱帮账户——我的账户——徽商充值——网银充值进行充值。2、支付宝线下转账操作步骤如下：下载支付宝APP，选择“转账”—“转到银行卡”，录入徽商银行账户信息—（个人徽商账户信息可在爱钱帮的“我的账户”—“徽商银行账户”—“充值”的“线下转账”处查询）下图为使用支付宝APP转账的三个步骤：APP版（手机客户端）​以上请各位帮主周知由此给您带来的不便敬请谅解，感谢您对爱钱帮的支持！如有问题，欢迎垂询：客服热线：4006777518（周一至周五9:00-18:00）微信客服：iqianbangloveQQ客服：4006777518祝您投资愉快，我们会做得更好，敬请期待。爱钱帮2016年08月24日</p>
                </a>
                <span class="newList-bot"><i></i>2016年08月24日</span>
            </li><li>
                <a href="/licai_gonggao-16012.html" target="_blank" title="【还款公告】2016年8月23日爱钱帮投资理财项目还本付息公告">
                    <h3>【还款公告】2016年8月23日爱钱帮投资理财项目还本付息公告</h3> </a>
                <a href="/licai_gonggao-16012.html" target="_blank" title="【还款公告】2016年8月23日爱钱帮投资理财项目还本付息公告">
                    <p class="newList-itemDet">各位帮主们：2016年8月23日爱钱帮理财项目还款如下：​迎您的支持与建议，如有问题，请联系我们：电话客服：4006777518QQ客服：4006777518微信客服：iqianbanglove微信订阅号：iqianbangcom祝您投资愉快~​爱钱帮                 2016年8月23日</p>
                </a>
                <span class="newList-bot"><i></i>2016年08月23日</span>
            </li><li>
                <a href="/licai_gonggao-16011.html" target="_blank" title="【还款公告】2016年8月22日爱钱帮投资理财项目还本付息公告">
                    <h3>【还款公告】2016年8月22日爱钱帮投资理财项目还本付息公告</h3> </a>
                <a href="/licai_gonggao-16011.html" target="_blank" title="【还款公告】2016年8月22日爱钱帮投资理财项目还本付息公告">
                    <p class="newList-itemDet">​各位帮主们：2016年8月22日爱钱帮理财项目还款如下：​​​迎您的支持与建议，如有问题，请联系我们：电话客服：4006777518QQ客服：4006777518微信客服：iqianbanglove微信订阅号：iqianbangcom祝您投资愉快~爱钱帮2016年8月22日</p>
                </a>
                <span class="newList-bot"><i></i>2016年08月22日</span>
            </li><li>
                <a href="/licai_gonggao-16010.html" target="_blank" title="【还款公告】2016年8月19日爱钱帮投资理财项目还本付息公告">
                    <h3>【还款公告】2016年8月19日爱钱帮投资理财项目还本付息公告</h3> </a>
                <a href="/licai_gonggao-16010.html" target="_blank" title="【还款公告】2016年8月19日爱钱帮投资理财项目还本付息公告">
                    <p class="newList-itemDet">​各位帮主们：2016年8月19日爱钱帮理财项目还款如下：​​迎您的支持与建议，如有问题，请联系我们：电话客服：4006777518QQ客服：4006777518微信客服：iqianbanglove微信订阅号：iqianbangcom祝您投资愉快~爱钱帮2016年8月19日</p>
                </a>
                <span class="newList-bot"><i></i>2016年08月19日</span>
            </li><li>
                <a href="/licai_gonggao-16009.html" target="_blank" title="爱钱帮CEO王吉涛出席全球互联网创新金融峰会">
                    <h3>爱钱帮CEO王吉涛出席全球互联网创新金融峰会</h3> </a>
                <a href="/licai_gonggao-16009.html" target="_blank" title="爱钱帮CEO王吉涛出席全球互联网创新金融峰会">
                    <p class="newList-itemDet">在传统金融和服务行业向互联网行业转型的大潮中，互联网金融技术，风险控制规范和征信的时代已悄然到来。普惠金融，大数据，小额借贷，移动支付不仅是国家和行业革命性的战略也已渗透到个人生活的方方面面。而消费金融和征信作为互联网行业的下一个风口，其价值不仅在于自身具备广阔的成长空间，更在于通过金融体系的完善，可以减少信息不对称、降低交易成本，促进投融资模式的创新，满足更多潜在的投融资需求，扩大金融总量。在这样的背景下，全球互联网金融峰会11日和12日在上海隆重举行，由150家互联网企业,和向互联网转型的金融零售和电信企业,征信企业30家媒体参加将探讨“互联网金融风险控制”，“新模式探索”和“消费金融征信”三大主题并进行正反两面的思想碰撞交流。在12日“大数据风控如何助力互联网金融”的讨论环节，爱钱帮CEO王吉涛，玖富首席运营官刘磊，融360风控副总裁李英浩等互联网金融从业者为焦点议题，共同探讨了大数据金融行业的发展面临的现状与挑战、未来发展方向，以及如何最大化利用大数据优势为金融行业做铺垫等。​对从业者来说“传统的银行信用评估模式难以全面刻画和评估小微企业的风险，使得小微企业的融资难题长期得不到解决。而大数据的金融风控，主要从多维度评估授信，打造核心优势，通过大数据征信，可以降低人工成本从而为小微企业降本增效，解决融资贵等难题。”王吉涛表示。爱钱帮成立三年以来，平台自主研发的大数据风控系统，该系统实现了线上审批，即刻放款，贷后监控，结合线下风控手段，形成了独特的O2O风险管理体系。这套系统还成功应用于医疗美容、汽车租赁和房租等消费场景中。在大数据风控方面，爱钱帮建立了用户准入机制，拥有庞大的反欺诈数据库，深度挖掘和分析大数据，通过六大角度交叉分析验证，对用户进行精准画像，评分授信，筛选优质借款人。此外，爱钱帮还采用强关联变量构建稳定性数据模型，对借款人进行动态跟踪和贷后监控。在降低风险的同时，不断创新技术手段，保障用户资金与信息安全，助力营造健康的金融科技生态环境。同时，大数据手段作为行业上各机构金融科技的着重点，它针对各阶段金融需求、消费特征及信用水平的差异化与潜在关联性，为个人提供全生命周期的金融产品及服务，解决了金融产品授信难题，满足了客户个性化、全方位、终身性的金融需求，这也进一步契合了供给侧改革对金融业改革的要求。</p>
                </a>
                <span class="newList-bot"><i></i>2016年08月19日</span>
            </li><li>
                <a href="/licai_gonggao-16007.html" target="_blank" title="【还款公告】2016年8月18日爱钱帮投资理财项目还本付息公告">
                    <h3>【还款公告】2016年8月18日爱钱帮投资理财项目还本付息公告</h3> </a>
                <a href="/licai_gonggao-16007.html" target="_blank" title="【还款公告】2016年8月18日爱钱帮投资理财项目还本付息公告">
                    <p class="newList-itemDet">​各位帮主们：2016年8月18日爱钱帮理财项目还款如下：​​​​迎您的支持与建议，如有问题，请联系我们：电话客服：4006777518QQ客服：4006777518微信客服：iqianbanglove微信订阅号：iqianbangcom祝您投资愉快~爱钱帮2016年8月18日</p>
                </a>
                <span class="newList-bot"><i></i>2016年08月18日</span>
            </li><li>
                <a href="/licai_gonggao-16005.html" target="_blank" title="【平台公告】关于网络优化的公告">
                    <h3>【平台公告】关于网络优化的公告</h3> </a>
                <a href="/licai_gonggao-16005.html" target="_blank" title="【平台公告】关于网络优化的公告">
                    <p class="newList-itemDet">尊敬的帮主们，因中国联通进行网络优化， 期间存管银行通过联通线路主动访问爱钱帮的业务时，可能会出现数据异常的现象，优化完毕后数据将恢复正常。影响时间：2016年8月19日 00:00-2016年8月19 日07:00以上请各位帮主周知由此给您带来的不便敬请谅解，感谢您对爱钱帮的支持！​如有问题，欢迎垂询：客服热线：4006777518（周一至周五9:00-18:00）微信客服：iqianbangloveQQ客服：4006777518祝您投资愉快，我们会做得更好，敬请期待。​爱钱帮2016年08月18日</p>
                </a>
                <span class="newList-bot"><i></i>2016年08月18日</span>
            </li><li>
                <a href="/licai_gonggao-16003.html" target="_blank" title="【还款公告】2016年8月17日爱钱帮投资理财项目还本付息公告">
                    <h3>【还款公告】2016年8月17日爱钱帮投资理财项目还本付息公告</h3> </a>
                <a href="/licai_gonggao-16003.html" target="_blank" title="【还款公告】2016年8月17日爱钱帮投资理财项目还本付息公告">
                    <p class="newList-itemDet">​各位帮主们：2016年8月17日爱钱帮理财项目还款如下：​​​迎您的支持与建议，如有问题，请联系我们：电话客服：4006777518QQ客服：4006777518微信客服：iqianbanglove微信订阅号：iqianbangcom祝您投资愉快~爱钱帮2016年8月17日</p>
                </a>
                <span class="newList-bot"><i></i>2016年08月17日</span>
            </li><li>
                <a href="/licai_gonggao-16000.html" target="_blank" title="【还款公告】2016年8月16日爱钱帮投资理财项目还本付息公告">
                    <h3>【还款公告】2016年8月16日爱钱帮投资理财项目还本付息公告</h3> </a>
                <a href="/licai_gonggao-16000.html" target="_blank" title="【还款公告】2016年8月16日爱钱帮投资理财项目还本付息公告">
                    <p class="newList-itemDet">​各位帮主们：2016年8月16日爱钱帮理财项目还款如下：​​​迎您的支持与建议，如有问题，请联系我们：电话客服：4006777518QQ客服：4006777518微信客服：iqianbanglove微信订阅号：iqianbangcom祝您投资愉快~爱钱帮2016年8月16日</p>
                </a>
                <span class="newList-bot"><i></i>2016年08月16日</span>
            </li><li>
                <a href="/licai_gonggao-15999.html" target="_blank" title="【还款公告】2016年8月15日爱钱帮投资理财项目还本付息公告">
                    <h3>【还款公告】2016年8月15日爱钱帮投资理财项目还本付息公告</h3> </a>
                <a href="/licai_gonggao-15999.html" target="_blank" title="【还款公告】2016年8月15日爱钱帮投资理财项目还本付息公告">
                    <p class="newList-itemDet">​各位帮主们：2016年8月15日爱钱帮理财项目还款如下：​​​​迎您的支持与建议，如有问题，请联系我们：电话客服：4006777518QQ客服：4006777518微信客服：iqianbanglove微信订阅号：iqianbangcom祝您投资愉快~爱钱帮2016年8月15日</p>
                </a>
                <span class="newList-bot"><i></i>2016年08月15日</span>
            </li><li>
                <a href="/licai_gonggao-15998.html" target="_blank" title="【还款公告】2016年8月12日爱钱帮投资理财项目还本付息公告">
                    <h3>【还款公告】2016年8月12日爱钱帮投资理财项目还本付息公告</h3> </a>
                <a href="/licai_gonggao-15998.html" target="_blank" title="【还款公告】2016年8月12日爱钱帮投资理财项目还本付息公告">
                    <p class="newList-itemDet">​各位帮主们：2016年8月12日爱钱帮理财项目还款如下：​​​迎您的支持与建议，如有问题，请联系我们：电话客服：4006777518QQ客服：4006777518微信客服：iqianbanglove微信订阅号：iqianbangcom祝您投资愉快~爱钱帮2016年8月12日</p>
                </a>
                <span class="newList-bot"><i></i>2016年08月12日</span>
            </li><li>
                <a href="/licai_gonggao-15997.html" target="_blank" title="【还款公告】2016年8月11日爱钱帮投资理财项目还本付息公告">
                    <h3>【还款公告】2016年8月11日爱钱帮投资理财项目还本付息公告</h3> </a>
                <a href="/licai_gonggao-15997.html" target="_blank" title="【还款公告】2016年8月11日爱钱帮投资理财项目还本付息公告">
                    <p class="newList-itemDet">​各位帮主们：2016年8月11日爱钱帮理财项目还款如下：​​​迎您的支持与建议，如有问题，请联系我们：电话客服：4006777518QQ客服：4006777518微信客服：iqianbanglove微信订阅号：iqianbangcom祝您投资愉快~爱钱帮2016年8月11日</p>
                </a>
                <span class="newList-bot"><i></i>2016年08月12日</span>
            </li>        
            </ul>
            
            <ul class="newList-ul" id="ul22">
                <li>
                    <a href="/licai_gonggao-16028.html" target="_blank" title="【还款公告】2016年9月2日爱钱帮投资理财项目还本付息公告">
                        <h3>【哈哈哈公告】2016年9月2日爱钱帮投资理财项目还本付息公告</h3> </a>
                    <a href="/licai_gonggao-16028.html" target="_blank" title="【还款公告】2016年9月2日爱钱帮投资理财项目还本付息公告">
                        <p class="newList-itemDet">​各位帮主们：2016年9月2日爱钱帮理财项目还款如下：=​​迎您的支持与建议，如有问题，请联系我们：电话客服：4006777518QQ客服：4006777518微信客服：iqianbanglove微信订阅号：iqianbangcom祝您投资愉快~爱钱帮2016年9月2日</p>
                    </a>
                    <span class="newList-bot"><i></i>2016年09月02日</span>
                </li>
                
            </ul>
            
                <ul class="newList-ul" id="ul22">
                <li>
                    <a href="/licai_gonggao-16028.html" target="_blank" title="【还款公告】2016年9月2日爱钱帮投资理财项目还本付息公告">
                        <h3>【哈哈哈公告】2016年9月2日爱钱帮投资理财项目还本付息公告</h3> </a>
                    <a href="/licai_gonggao-16028.html" target="_blank" title="【还款公告】2016年9月2日爱钱帮投资理财项目还本付息公告">
                        <p class="newList-itemDet">​各位帮主们：2016年9月2日爱钱帮理财项目还款如下：=​​迎您的支持与建议，如有问题，请联系我们：电话客服：4006777518QQ客服：4006777518微信客服：iqianbanglove微信订阅号：iqianbangcom祝您投资愉快~爱钱帮2016年9月2日</p>
                    </a>
                    <span class="newList-bot"><i></i>2016年09月02日</span>
                </li>
                
            </ul>
            
                <ul class="newList-ul" id="ul33">
                <li>
                    <a href="/licai_gonggao-16028.html" target="_blank" title="【还款公告】2016年9月2日爱钱帮投资理财项目还本付息公告">
                        <h3>【哈哈哈公告】2016年9月2日爱钱帮投资理财项目还本付息公告</h3> </a>
                    <a href="/licai_gonggao-16028.html" target="_blank" title="【还款公告】2016年9月2日爱钱帮投资理财项目还本付息公告">
                        <p class="newList-itemDet">​各位帮主们：2016年9月2日爱钱帮理财项目还款如下：=​​迎您的支持与建议，如有问题，请联系我们：电话客服：4006777518QQ客服：4006777518微信客服：iqianbanglove微信订阅号：iqianbangcom祝您投资愉快~爱钱帮2016年9月2日</p>
                    </a>
                    <span class="newList-bot"><i></i>2016年09月02日</span>
                </li>
                
            </ul>
            
                <ul class="newList-ul" id="ul44">
                <li>
                    <a href="/licai_gonggao-16028.html" target="_blank" title="【还款公告】2016年9月2日爱钱帮投资理财项目还本付息公告">
                        <h3>【哈哈哈公告】2016年9月2日爱钱帮投资理财项目还本付息公告</h3> </a>
                    <a href="/licai_gonggao-16028.html" target="_blank" title="【还款公告】2016年9月2日爱钱帮投资理财项目还本付息公告">
                        <p class="newList-itemDet">​各位帮主们：2016年9月2日爱钱帮理财项目还款如下：=​​迎您的支持与建议，如有问题，请联系我们：电话客服：4006777518QQ客服：4006777518微信客服：iqianbanglove微信订阅号：iqianbangcom祝您投资愉快~爱钱帮2016年9月2日</p>
                    </a>
                    <span class="newList-bot"><i></i>2016年09月02日</span>
                </li>
                 -->
            </ul>
            
            <ul class="newList-ul" id="ul33">
               <c:forEach items="${listxm}" var="noticexm">
                <li>
                    <a href="${pageContext.request.contextPath}/font/selectType?nid=${noticexm.nid}" target="_blank" title="${noticexm.ntitle}">
                        <h3>${noticexm.ntitle}</h3> </a>
                    <a href="${pageContext.request.contextPath}/font/selectType?nid=${noticexm.nid}" target="_blank" title="${noticexm.ntitle}">
                        <p class="newList-itemDet">${noticexm.ncontent}</p>
                    </a>
                    <span class="newList-bot"><i></i>${noticexm.ntime}</span>
                </li>
               </c:forEach>
             </ul>
            <ul class="newList-ul" id="ul22">
               <c:forEach items="${listwz}" var="noticewz">
                <li>
                    <a href="${pageContext.request.contextPath}/font/selectType?nid=${noticewz.nid}" target="_blank" title="${noticewz.ntitle}">
                        <h3>${noticewz.ntitle}</h3> </a>
                    <a href="${pageContext.request.contextPath}/font/selectType?nid=${noticewz.nid}" target="_blank" title="${noticewz.ntitle}">
                        <p class="newList-itemDet">${noticewz.ncontent}</p>
                    </a>
                    <span class="newList-bot"><i></i>${noticewz.ntime}</span>
                </li>
               </c:forEach>
             </ul>
            
            <ul class="newList-ul" id="ul44">
               <c:forEach items="${listhk}" var="noticehk">
                <li>
                    <a href="${pageContext.request.contextPath}/font/selectType?nid=${noticehk.nid}" target="_blank" title="${noticehk.ntitle}">
                        <h3>${noticehk.ntitle}</h3> </a>
                    <a href="${pageContext.request.contextPath}/font/selectType?nid=${noticehk.nid}" target="_blank" title="${noticehk.ntitle}">
                        <p class="newList-itemDet">${noticehk.ncontent}</p>
                    </a>
                    <span class="newList-bot"><i></i>${noticehk.ntime}</span>
                </li>
               </c:forEach>
             </ul>
        </div>
        
        
        
        
        <div class="m2-newListpage-con">
            <div class="m2-newListpage">
                <div class="m2-news-pages" style="padding-right:40px;margin:12px auto;"></div>
            </div>
        </div>
        <script>
        $(function () {
        	   $('#ifremid li').click(function () {
   	            if ($(this).hasClass('newsListtab-unsel')) {
   	                $(this).addClass('newsListtab-sel').removeClass('newsListtab-unsel');
   	                $(this).siblings('.newsListtab-sel').addClass('newsListtab-unsel').removeClass('newsListtab-sel');
   	            }
   	        });
        
   	        // 新闻列表tab切换下方展示
   	        $('#ifremid li').click(function () {
   	            if ($(this).index() == 0) {
   	                //全部公告
   	                $('.newList-ul').hide();
   	                $('#ul11').show();
   	            } else if ($(this).index() == 1) {
   	                //网站公告
   	                $('.newList-ul').hide();
   	                $('#ul22').show();
   	            } else if ($(this).index() == 2) {
   	                //项目公告
   	                $('.newList-ul').hide();
   	                $('#ul33').show();
   	            } else if ($(this).index() == 3) {
   	                //还款公告
   	                $('.newList-ul').hide();
   	                $('#ul44').show();
   	            } 
   	        });
        });
        
        
	        </script>
	    </div>
	    <script>
	        $('#announcementnav').css('color', '#09ABE9');
	        function pageclick(channel,index){
	            window.location.href = '/'+channel+'-list-'+index+'/';
	        }
	    </script>
	    <link rel="stylesheet" href=""/Finances/statics/front/statics/home/css/newPage.css" />
	
		<!-- 足部start -->
			<jsp:include page="../include/floot.jsp"></jsp:include>
		<!-- 足部end -->
		
	</body>
</html>